TEMPLATE = subdirs
CONFIG += ordered

SUBDIRS += easyqmlplugin easyexample
easyqmlplugin.file = src/EasyQmlPlugin.pro
easyexample.file = example/Example.pro
easyexample.depends = easyqmlplugin

#>=Qt5.15
if(versionAtLeast(QT_VERSION, 5.15.0)){
    message("greater or equal Qt5.15")
}else{
    error("minimum support Qt5.15")
}
