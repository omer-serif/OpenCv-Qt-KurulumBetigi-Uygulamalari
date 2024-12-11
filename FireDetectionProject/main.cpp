#include <QApplication>
#include <QLabel>
#include <QTimer>
#include <QImage>
#include <QPixmap>
#include <QMessageBox>
#include <opencv2/opencv.hpp>
#include <QObject>

class FireDetectionWindow : public QLabel {
    Q_OBJECT

public:
    FireDetectionWindow(QWidget *parent = 0) : QLabel(parent) {
        capture.open(0);
        if (!capture.isOpened()) {
            qDebug("Kamera açılamadı");
            return;
        }

        timer = new QTimer(this);
        connect(timer, &QTimer::timeout, this, &FireDetectionWindow::updateFrame);
        timer->start(30); // 30ms'de bir frame güncelle
    }

private slots:
    void updateFrame() {
        cv::Mat frame, grayFrame, blurFrame, edges;
        capture >> frame;
        if (frame.empty()) return;

        // BGR'den HSV'ye dönüştür
        cv::Mat hsvFrame;
        cv::cvtColor(frame, hsvFrame, cv::COLOR_BGR2HSV);

        // Ateşin renk aralıklarını tanımla
        cv::Scalar lower1(0, 150, 150); // Alt sınır (H, S, V)
        cv::Scalar upper1(10, 255, 255); // Üst sınır (H, S, V)
        cv::Scalar lower2(170, 150, 150); // Alt sınır (H, S, V)
        cv::Scalar upper2(180, 255, 255); // Üst sınır (H, S, V)

        cv::Mat mask1, mask2, mask;
        cv::inRange(hsvFrame, lower1, upper1, mask1);
        cv::inRange(hsvFrame, lower2, upper2, mask2);
        cv::bitwise_or(mask1, mask2, mask);

        // Hareket tespiti için frame'leri griye dönüştür
        cv::cvtColor(frame, grayFrame, cv::COLOR_BGR2GRAY);
        cv::GaussianBlur(grayFrame, blurFrame, cv::Size(21, 21), 0);
        if (previousFrame.empty()) {
            previousFrame = blurFrame.clone();
            return;
        }
        cv::absdiff(previousFrame, blurFrame, edges);
        cv::threshold(edges, edges, 25, 255, cv::THRESH_BINARY);
        previousFrame = blurFrame.clone();

        // Hareket maskesini ateş maskesi ile birleştir
        cv::bitwise_and(mask, edges, mask);

        // Maske üzerindeki nesneleri bul
        std::vector<std::vector<cv::Point>> contours;
        cv::findContours(mask, contours, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE);

        bool fireDetected = false;
        for (const auto& contour : contours) {
            // Kontur alanını kontrol et (çok küçük konturları filtrele)
            if (cv::contourArea(contour) > 500) {
                fireDetected = true;
                cv::rectangle(frame, cv::boundingRect(contour), cv::Scalar(0, 0, 255), 2);
            }
        }

        // Ateş tespit edilirse uyarı göster
        if (fireDetected) {
            QMessageBox::warning(this, "Ateş Tespiti", "Ateş tespit edildi!");
        }

        // Orijinal görüntüyü QImage'e dönüştür
        cv::cvtColor(frame, frame, cv::COLOR_BGR2RGB);
        QImage qImage((uchar*) frame.data, frame.cols, frame.rows, frame.step, QImage::Format_RGB888);
        setPixmap(QPixmap::fromImage(qImage));
    }

private:
    cv::VideoCapture capture;
    QTimer *timer;
    cv::Mat previousFrame;
};

#include "main.moc"

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    FireDetectionWindow window;
    window.show();
    return app.exec();
}
