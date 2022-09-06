TEMPLATE = subdirs

SUBDIRS = libeasyqml easyexample
libeasyqml.file = src/LibEasyQml.pro
easyexample.file = example/EasyExample.pro
easyexample.depends = libeasyqml
