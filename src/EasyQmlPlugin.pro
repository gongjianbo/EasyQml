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
#uri = EasyQml
QML_IMPORT_NAME = EasyQml
#import EasyQml 5.15
#QML_IMPORT_MAJOR_VERSION = 5
#QML_IMPORT_MINOR_VERSION = 15
IMPORT_VERSION = $$QT_MAJOR_VERSION.$$QT_MINOR_VERSION

HEADERS += \
    EasyQmlPlugin.h

SOURCES += \
    EasyQmlPlugin.cpp

OTHER_FILES = qmldir

INCLUDEPATH += $$PWD/QmlItem
include($$PWD/QmlItem/QmlItem.pri)

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
