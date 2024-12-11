cmake_minimum_required(VERSION 3.5)

project(FireDetectionProject)

set(CMAKE_CXX_STANDARD 11)

find_package(Qt5 COMPONENTS Widgets REQUIRED)
find_package(OpenCV REQUIRED)

set(CMAKE_AUTOMOC ON)

add_executable(FireDetectionProject main.cpp)
target_link_libraries(FireDetectionProject Qt5::Widgets ${OpenCV_LIBS})
