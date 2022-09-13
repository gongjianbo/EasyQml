TEMPLATE = lib
QT += quick
QT += qml
QT += core
QT += gui
QT += widgets
QT += concurrent

CONFIG += c++17
CONFIG += utf8_source
CONFIG += plugin
CONFIG += qmltypes

#DEFINES += EASYQML_LIBRARY
#CONFIG += staticlib
#debug dll name ends with -d
TARGET = $$qtLibraryTarget(EasyQml)
#output dir
DESTDIR = $$PWD/../bin/EasyQml

#module
#import EasyQml 5.15, uri = EasyQml, version = 5.15
QML_IMPORT_NAME = EasyQml
#QML_IMPORT_MAJOR_VERSION = 5
#QML_IMPORT_MINOR_VERSION = 15
QML_IMPORT_VERSION = 5.15

HEADERS += \
    EasyQmlPlugin.h

SOURCES += \
    EasyQmlPlugin.cpp

OTHER_FILES = qmldir

INCLUDEPATH += $$PWD/EasyControl
include($$PWD/EasyControl/EasyControl.pri)

INCLUDEPATH += $$PWD/QuickControl
include($$PWD/QuickControl/QuickControl.pri)

copy_qmltypes.files = $$OUT_PWD/plugins.qmltypes
copy_qmltypes.path = $$DESTDIR
COPIES += copy_qmltypes

#using make arguments "install".
DESTPATH = $$[QT_INSTALL_QML]/EasyQml
target.path = $$DESTPATH
qmldir.files = $$PWD/qmldir
qmldir.path = $$DESTPATH
INSTALLS += target qmldir

cpqmldir.files = qmldir
cpqmldir.path = $$DESTDIR
COPIES += cpqmldir
