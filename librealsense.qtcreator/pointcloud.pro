include(LRS.pri)

TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
QMAKE_CXXFLAGS += -std=c++11 -fpermissive
PKGCONFIG += glfw3 gl glu libusb-1.0
CONFIG += link_pkgconfig
INCLUDEPATH += ../include
LIBS += -pthread -ljpeg

SOURCES += ../examples/pointcloud/*.cpp
HEADERS += ../examples/*.h

LIBS += -L$$DESTDIR/ -lrealsense -luvc

PRE_TARGETDEPS += $$DESTDIR/librealsense.a
PRE_TARGETDEPS += $$DESTDIR/libuvc.a

