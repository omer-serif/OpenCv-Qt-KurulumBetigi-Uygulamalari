#include <QApplication>
#include "gallerywindow.h"

int main(int argc, char *argv[]) {
    QApplication a(argc, argv);

    GalleryWindow galleryWindow;
    galleryWindow.show();

    return a.exec();
}
