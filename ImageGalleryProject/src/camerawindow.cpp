#include "camerawindow.h"
#include <QMessageBox>
#include <QTimer>
#include <QImage>
#include <QPixmap>
#include <QLabel>
#include <QDir>
#include <QDateTime>  // Bu satırı ekleyin!

CameraWindow::CameraWindow(QWidget *parent) : QWidget(parent), camera(0) {
    setWindowTitle("Camera");

    captureButton = new QPushButton("Capture Image", this);
    connect(captureButton, &QPushButton::clicked, this, &CameraWindow::captureImage);

    QVBoxLayout *layout = new QVBoxLayout(this);
    layout->addWidget(captureButton);

    if (!camera.isOpened()) {
        QMessageBox::critical(this, "Error", "Unable to access the camera.");
        return;
    }

    // QLabel ekleyerek görüntü göstermek için
    imageLabel = new QLabel(this);
    layout->addWidget(imageLabel);

    // QLabel boyutunu açıkça ayarlayın
    imageLabel->resize(640, 480);  // Örnek bir boyut

    // Kamera görüntüsünü sürekli alıp QLabel'de gösterme
    QTimer *timer = new QTimer(this);
    connect(timer, &QTimer::timeout, [=]() {
        camera.read(frame);
        if (!frame.empty()) {
            // OpenCV mat formatından Qt uyumlu QImage'e dönüştürme
            QImage img(frame.data, frame.cols, frame.rows, frame.step, QImage::Format_BGR888);
            QPixmap pixmap = QPixmap::fromImage(img);
            imageLabel->setPixmap(pixmap.scaled(imageLabel->size(), Qt::KeepAspectRatio));
        }
    });
    timer->start(30); // 30ms aralıklarla kamera görüntüsü al
}

CameraWindow::~CameraWindow() {
    camera.release();
}

void CameraWindow::captureImage() {
    if (!frame.empty()) {
        // Hedef dizin yolunu belirleme
        QString dirPath = "/home/serif/ImageGalleryProject/src/resources/example_images";
        QDir dir;

        // Eğer dizin mevcut değilse, dizini oluşturma
        if (!dir.exists(dirPath)) {
            dir.mkpath(dirPath);
        }

        // Dosya adını zaman damgası ile oluşturma
        QString filePath = dirPath + "/captured_image_" +
                           QString::number(QDateTime::currentSecsSinceEpoch()) + ".jpg";

        // Fotoğrafı belirtilen yolda kaydetme
        cv::imwrite(filePath.toStdString(), frame);
        QMessageBox::information(this, "Success", "Image captured successfully:\n" + filePath);
    } else {
        QMessageBox::critical(this, "Error", "Failed to capture image.");
    }
}
