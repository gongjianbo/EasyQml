#pragma once
#include <QQmlExtensionPlugin>

//https://www.qt.io/blog/qml-type-registration-in-qt-5.15
class EasyQmlPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID QQmlExtensionInterface_iid)
public:
    void registerTypes(const char *uri) override;
};
