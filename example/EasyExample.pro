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
DESTDIR = $$PWD/../bin

SOURCES += \
    main.cpp

RESOURCES += \
    qml.qrc
