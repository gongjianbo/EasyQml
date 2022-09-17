TEMPLATE = app
QT += quick
QT += qml
QT += core
QT += gui
QT += widgets
QT += concurrent

CONFIG += c++17
CONFIG += utf8_source

#output dir
#CONFIG(debug, debug|release) { }
DESTDIR = $$PWD/../../bin

SOURCES += \
    main.cpp

RESOURCES += \
    $$PWD/qml/qml.qrc \
    img/img.qrc

DEFINES += QT_DEPRECATED_WARNINGS
win32{
RC_ICONS = $$PWD/img/icon.ico
}
