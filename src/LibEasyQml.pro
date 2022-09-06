QT += quick
QT += qml
QT += core
QT += gui
QT += widgets
QT += concurrent

TEMPLATE = lib
DEFINES += EASYQML_LIBRARY
#CONFIG += staticlib
#output dir
#CONFIG(debug, debug|release) { }
DESTDIR = $$PWD/../bin

HEADERS += \
    EasyQmlCommon.h 

SOURCES += \
    EasyQmlCommon.cpp 
