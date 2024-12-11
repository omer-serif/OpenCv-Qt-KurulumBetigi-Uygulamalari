#ifndef CAMERAWINDOW_H
#define CAMERAWINDOW_H

#include <QWidget>
#include <QPushButton>
#include <QVBoxLayout>
#include <QLabel>  // QLabel ekleyin
#include <opencv2/opencv.hpp>

class CameraWindow : public QWidget {
    Q_OBJECT

public:
    explicit CameraWindow(QWidget *parent = nullptr);
    ~CameraWindow();

private slots:
    void captureImage();

private:
    QPushButton *captureButton;
    QLabel *imageLabel;  // QLabel burada
    cv::VideoCapture camera;
    cv::Mat frame;
};

#endif // CAMERAWINDOW_H
