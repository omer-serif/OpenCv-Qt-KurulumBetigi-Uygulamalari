cmake_minimum_required(VERSION 3.5)

project(ImageGalleryProject)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS Core Widgets Gui REQUIRED)  # Qt5::Gui ekleyin
find_package(OpenCV REQUIRED)

set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

include_directories(src)

add_executable(ImageGalleryProject
    main.cpp
    src/gallerywindow.cpp
    src/gallerywindow.h
    src/camerawindow.cpp
    src/camerawindow.h
)

target_link_libraries(ImageGalleryProject Qt5::Core Qt5::Widgets Qt5::Gui ${OpenCV_LIBS})
