#include "gallerywindow.h"
#include <QMessageBox>
#include <QDir>
#include <QFileInfoList>
#include <QPixmap>
#include <QLabel>
#include <QPushButton>
#include <QVBoxLayout>
#include <QScrollArea>
#include <QImage>
#include <QTimer>
#include "camerawindow.h"

GalleryWindow::GalleryWindow(QWidget *parent) : QWidget(parent) {
    setWindowTitle("Image Gallery");

    // Resimleri gösterecek olan QLabel ve layout
    imageLayout = new QVBoxLayout(this);
    scrollArea = new QScrollArea(this);
    scrollArea->setWidgetResizable(true);
    scrollArea->setWidget(new QWidget(this));
    scrollArea->widget()->setLayout(imageLayout);

    // Ana layout
    QVBoxLayout *mainLayout = new QVBoxLayout(this);
    mainLayout->addWidget(scrollArea);

    // Resimleri yükle butonu
    loadButton = new QPushButton("Load Images", this);
    connect(loadButton, &QPushButton::clicked, this, &GalleryWindow::loadImages);
    mainLayout->addWidget(loadButton);

    // Kamera aç butonu
    openCameraButton = new QPushButton("Open Camera", this);
    connect(openCameraButton, &QPushButton::clicked, this, &GalleryWindow::openCamera);
    mainLayout->addWidget(openCameraButton);

    loadImages();  // Başlangıçta resimleri yükle
}

GalleryWindow::~GalleryWindow() {
    // Temizleme işlemleri (varsa)
}

void GalleryWindow::loadImages() {
    // Eski resimleri temizle
    QLayoutItem *child;
    while ((child = imageLayout->takeAt(0)) != nullptr) {
        delete child->widget();
        delete child;
    }

    // Resimlerin bulunduğu dizini tanımla
    QString dirPath = "/home/serif/ImageGalleryProject/src/resources/example_images";
    QDir dir(dirPath);

    // Klasördeki tüm .jpg dosyalarını al
    QFileInfoList files = dir.entryInfoList(QStringList() << "*.jpg", QDir::Files);

    if (files.isEmpty()) {
        QMessageBox::information(this, "No Images", "No images found in the directory.");
    } else {
        // Resimleri yükle ve göster
        for (const QFileInfo &file : files) {
            QImage image(file.absoluteFilePath());
            if (!image.isNull()) {
                QLabel *imageLabel = new QLabel(this);
                imageLabel->setPixmap(QPixmap::fromImage(image).scaled(640, 480, Qt::KeepAspectRatio));
                imageLayout->addWidget(imageLabel);
            }
        }
    }
}

void GalleryWindow::openCamera() {
    // Kamera penceresini aç
    CameraWindow *cameraWindow = new CameraWindow();
    cameraWindow->show();
}
