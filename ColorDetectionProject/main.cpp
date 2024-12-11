#include <QApplication>
#include <QPushButton>
#include <QLabel>
#include <QVBoxLayout>
#include <QMouseEvent>
#include <QImage>
#include <QPixmap>
#include <QTimer>
#include <opencv2/opencv.hpp>
#include <QObject>

class ColorDetectionWindow : public QWidget {
    Q_OBJECT

public:
    ColorDetectionWindow(QWidget *parent = nullptr) : QWidget(parent) {
        QVBoxLayout *layout = new QVBoxLayout(this);

        // Renk Bul Butonu
        QPushButton *detectColorButton = new QPushButton("Renk Bul", this);
        layout->addWidget(detectColorButton);
        connect(detectColorButton, &QPushButton::clicked, this, &ColorDetectionWindow::enableColorDetection);

        // Görüntüyü Göster
        imageLabel = new QLabel(this);
        layout->addWidget(imageLabel);

        // Renk Sonucu ve Renk Kutucuğu
        QHBoxLayout *colorLayout = new QHBoxLayout();
        colorLabel = new QLabel("Seçilen Renk: ", this);
        colorBox = new QLabel(this);
        colorBox->setFixedSize(50, 50);
        colorBox->setStyleSheet("background-color: white; border: 1px solid black;");
        colorLayout->addWidget(colorLabel);
        colorLayout->addWidget(colorBox);
        layout->addLayout(colorLayout);

        setLayout(layout);

        capture.open(0);
        if (!capture.isOpened()) {
            qDebug("Kamera açılamadı");
            return;
        }

        timer = new QTimer(this);
        connect(timer, &QTimer::timeout, this, &ColorDetectionWindow::updateFrame);
        timer->start(30); // 30ms'de bir frame güncelle
    }

protected:
    void mousePressEvent(QMouseEvent *event) override {
        if (detectingColor) {
            QPoint pos = event->pos();
            if (pos.x() >= imageLabel->x() && pos.x() <= imageLabel->x() + imageLabel->width() &&
                pos.y() >= imageLabel->y() && pos.y() <= imageLabel->y() + imageLabel->height()) {

                int x = pos.x() - imageLabel->x();
                int y = pos.y() - imageLabel->y();

                cv::Vec3b pixel = currentFrame.at<cv::Vec3b>(y, x);
                QColor color(pixel[2], pixel[1], pixel[0]); // BGR to RGB

                colorLabel->setText("Seçilen Renk: " + color.name());
                colorBox->setStyleSheet("background-color: " + color.name() + "; border: 1px solid black;");
                detectingColor = false;
            }
        }
    }

private slots:
    void updateFrame() {
        capture >> currentFrame;
        if (currentFrame.empty()) return;

        cv::cvtColor(currentFrame, currentFrame, cv::COLOR_BGR2RGB);
        QImage qImage((uchar*) currentFrame.data, currentFrame.cols, currentFrame.rows, currentFrame.step, QImage::Format_RGB888);
        imageLabel->setPixmap(QPixmap::fromImage(qImage));
    }

    void enableColorDetection() {
        detectingColor = true;
    }

private:
    QLabel *imageLabel;
    QLabel *colorLabel;
    QLabel *colorBox; // Yeni QLabel
    cv::VideoCapture capture;
    QTimer *timer;
    cv::Mat currentFrame;
    bool detectingColor = false;
};

#include "main.moc"

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    ColorDetectionWindow window;
    window.show();
    return app.exec();
}
