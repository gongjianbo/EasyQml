greaterThan(QT_MAJOR_VERSION, 5){
    #>=Qt6.0
}else:isEqual(QT_MAJOR_VERSION, 5){
    #==Qt5.15
    isEqual(QT_MINOR_VERSION, 15){
    }else{
        error("minimum support Qt5.15")
    }
}else{
    error("minimum support Qt5.15")
}

TEMPLATE = subdirs
CONFIG += ordered

SUBDIRS = easyqmlplugin easyexample
easyqmlplugin.file = src/EasyQmlPlugin.pro
easyexample.file = example/EasyExample.pro
easyexample.depends = easyqmlplugin
