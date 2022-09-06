QT += quick
QT += qml
QT += core
QT += gui
QT += widgets
QT += concurrent

#output dir
#CONFIG(debug, debug|release) { }
DESTDIR = $$PWD/../bin
LIBS += $$PWD/../bin/LibEasyQml.lib
PRE_TARGETDEPS += $$PWD/../bin/LibEasyQml.lib

INCLUDEPATH += $$PWD/../src
DEPENDPATH += $$PWD/../src

SOURCES += \
    main.cpp

RESOURCES += \
    qml.qrc

