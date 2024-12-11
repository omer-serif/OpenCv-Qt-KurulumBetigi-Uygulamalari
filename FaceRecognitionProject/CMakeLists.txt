cmake_minimum_required(VERSION 3.5)

project(FaceRecognitionProject)

set(CMAKE_CXX_STANDARD 11)

find_package(Qt5 COMPONENTS Widgets REQUIRED)
find_package(OpenCV REQUIRED)

set(CMAKE_AUTOMOC ON)

add_executable(FaceRecognitionProject main.cpp)
target_link_libraries(FaceRecognitionProject Qt5::Widgets ${OpenCV_LIBS})
