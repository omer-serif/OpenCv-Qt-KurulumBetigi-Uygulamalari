#include <QApplication>
#include <QPushButton>
#include <QLabel>
#include <QVBoxLayout>
#include <QHBoxLayout>
#include <QImage>
#include <QPixmap>
#include <QTimer>
#include <QMessageBox>
#include <QDateTime>
#include <QDir>
#include <opencv2/opencv.hpp>
#include <QObject>
#include <QDebug>

class GalleryWindow : public QWidget {
    Q_OBJECT

public:
    GalleryWindow(QWidget *parent = nullptr) : QWidget(parent) {
        QVBoxLayout *layout = new QVBoxLayout(this);

        imageLabel = new QLabel(this);
        layout->addWidget(imageLabel);

        QHBoxLayout *buttonsLayout = new QHBoxLayout();
        QPushButton *prevButton = new QPushButton("Önceki", this);
        QPushButton *nextButton = new QPushButton("Sonraki", this);
        connect(prevButton, &QPushButton::clicked, this, &GalleryWindow::showPreviousImage);
        connect(nextButton, &QPushButton::clicked, this, &GalleryWindow::showNextImage);
        buttonsLayout->addWidget(prevButton);
        buttonsLayout->addWidget(nextButton);

        layout->addLayout(buttonsLayout);
        setLayout(layout);

        loadImages();
        if (!imagePaths.empty()) {
            currentIndex = 0;
            showImage();
        } else {
            QMessageBox::information(this, "Bilgi", "Çekilmiş fotoğraf bulunamadı.");
        }
    }

private slots:
    void showPreviousImage() {
        if (currentIndex > 0) {
            currentIndex--;
            showImage();
        }
    }

    void showNextImage() {
        if (currentIndex < imagePaths.size() - 1) {
            currentIndex++;
            showImage();
        }
    }

private:
    void loadImages() {
        QString directory = QDir::homePath() + "/FaceRecognitionPhotos"; // Dinamik dizin
        QDir dir(directory);
        if (!dir.exists()) {
            qDebug() << "Dizin mevcut değil: " << directory;
            return; // Dizin mevcut değilse çık
        }

        QStringList filters;
        filters << ".jpg" << ".png"; // Filtreleri düzelt
        imagePaths = dir.entryList(filters, QDir::Files);
        qDebug() << "Yüklenen fotoğraflar:" << imagePaths;

        // Dizin içeriğini kontrol et
        for (int i = 0; i < imagePaths.size(); ++i) {
            imagePaths[i] = dir.absoluteFilePath(imagePaths[i]);
            qDebug() << "Fotoğraf yolu: " << imagePaths[i];
        }
    }

    void showImage() {
        if (imagePaths.isEmpty()) return;

        QImage image(imagePaths[currentIndex]);
        if (image.isNull()) {
            QMessageBox::warning(this, "Hata", "Görsel yüklenemedi.");
            return;
        }
        imageLabel->setPixmap(QPixmap::fromImage(image).scaled(imageLabel->size(), Qt::KeepAspectRatio, Qt::SmoothTransformation));
    }

    QLabel *imageLabel;
    QStringList imagePaths;
    int currentIndex = 0;
};

class FaceRecognitionWindow : public QWidget {
    Q_OBJECT

public:
    FaceRecognitionWindow(QWidget *parent = nullptr) : QWidget(parent) {
        QVBoxLayout *mainLayout = new QVBoxLayout(this);

        QHBoxLayout *controlLayout = new QHBoxLayout();

        // Görüntüyü Göster
        imageLabel = new QLabel(this);
        mainLayout->addWidget(imageLabel);

        // Yüz Sayısı Etiketi
        faceCountLabel = new QLabel("Algılanan Yüz Sayısı: 0", this);
        controlLayout->addWidget(faceCountLabel);

        // Fotoğraf Çekme Butonu
        QPushButton *captureButton = new QPushButton("Fotoğraf Çek", this);
        controlLayout->addWidget(captureButton);
        connect(captureButton, &QPushButton::clicked, this, &FaceRecognitionWindow::capturePhoto);

        // Fotoğrafları Göster Butonu
        QPushButton *showGalleryButton = new QPushButton("Çekilen Fotoğrafları Göster", this);
        controlLayout->addWidget(showGalleryButton);
        connect(showGalleryButton, &QPushButton::clicked, this, &FaceRecognitionWindow::showGallery);

        mainLayout->addLayout(controlLayout);
        setLayout(mainLayout);

        capture.open(0);
        if (!capture.isOpened()) {
            qDebug() << "Kamera açılamadı";
            return;
        }

        if (!faceCascade.load("/home/serif/FaceRecognitionProject/data/haarcascade_frontalface_default.xml")) {
            qDebug() << "Cascade dosyası yüklenemedi";
            return;
        }

        timer = new QTimer(this);
        connect(timer, &QTimer::timeout, this, &FaceRecognitionWindow::updateFrame);
        timer->start(30); // 30ms'de bir frame güncelle
    }

private slots:
    void updateFrame() {
        cv::Mat frame, grayFrame;
        capture >> frame;
        if (frame.empty()) return;

        // Görüntüyü griye dönüştür
        cv::cvtColor(frame, grayFrame, cv::COLOR_BGR2GRAY);

        // Yüzleri algıla
        std::vector<cv::Rect> faces;
        faceCascade.detectMultiScale(grayFrame, faces);

        // Yüzleri çerçevele
        for (const auto &face : faces) {
            cv::rectangle(frame, face, cv::Scalar(85, 255, 0), 3);
        }

        // Yüz sayısını güncelle
        faceCountLabel->setText("Algılanan Yüz Sayısı: " + QString::number(faces.size()));

        // Orijinal görüntüyü QImage'e dönüştür
        cv::cvtColor(frame, frame, cv::COLOR_BGR2RGB);
        QImage qImage((uchar*) frame.data, frame.cols, frame.rows, frame.step, QImage::Format_RGB888);
        imageLabel->setPixmap(QPixmap::fromImage(qImage));

        currentFrame = frame.clone(); // Fotoğraf çekmek için frame'i sakla
    }

    void capturePhoto() {
        if (currentFrame.empty()) return;

        QString directory = QDir::homePath() + "/FaceRecognitionPhotos"; // Dinamik dizin
        QDir dir;
        if (!dir.exists(directory)) {
            dir.mkpath(directory);
        }

        QString fileName = directory + "/captured_photo_" + QString::number(QDateTime::currentDateTime().toSecsSinceEpoch()) + ".jpg";
        if (cv::imwrite(fileName.toStdString(), currentFrame)) {
            QMessageBox::information(this, "Fotoğraf Çekildi", "Fotoğraf başarıyla kaydedildi: " + fileName);
            qDebug() << "Fotoğraf başarıyla kaydedildi: " << fileName;
        } else {
            QMessageBox::critical(this, "Hata", "Fotoğraf kaydedilemedi.");
            qDebug() << "Fotoğraf kaydedilemedi: " << fileName;
        }
    }

    void showGallery() {
        GalleryWindow *gallery = new GalleryWindow(this);
        gallery->show();
    }

private:
    QLabel *imageLabel;
    QLabel *faceCountLabel;
    cv::VideoCapture capture;
    QTimer *timer;
    cv::Mat currentFrame;
    cv::CascadeClassifier faceCascade;
};

#include "main.moc"

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);
    FaceRecognitionWindow window;
    window.show();
    return app.exec();
}
