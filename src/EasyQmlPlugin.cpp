#include "EasyQmlPlugin.h"
#include <qqml.h>

void EasyQmlPlugin::registerTypes(const char */*uri*/)
{
    Q_INIT_RESOURCE(easycontrol);
    Q_INIT_RESOURCE(quickcontrol);
    // @uri
    //QML_IMPORT_NAME+QML_ELEMENT代替了qmlRegisterType
    //qmlRegisterType<>(uri, 1, 0, "");
}
