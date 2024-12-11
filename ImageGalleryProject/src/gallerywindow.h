#ifndef GALLERYWINDOW_H
#define GALLERYWINDOW_H

#include <QWidget>
#include <QPushButton>
#include <QVBoxLayout>
#include <QScrollArea>
#include <QLabel>

class GalleryWindow : public QWidget {
    Q_OBJECT

public:
    explicit GalleryWindow(QWidget *parent = nullptr);
    ~GalleryWindow();

private slots:
    void loadImages();  // Resimleri yükleme fonksiyonu
    void openCamera();  // Kamera açma fonksiyonu

private:
    QPushButton *loadButton;  // Buton
    QPushButton *openCameraButton;  // Kamera aç butonu
    QVBoxLayout *imageLayout;  // Resimlerin yerleşimi için layout
    QScrollArea *scrollArea;  // Kaydırılabilir alan
};

#endif // GALLERYWINDOW_H
