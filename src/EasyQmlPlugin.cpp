#include "EasyQmlPlugin.h"
#include <qqml.h>

void EasyQmlPlugin::registerTypes(const char */*uri*/)
{
    Q_INIT_RESOURCE(qmlitem);
    // @uri
    //QML_IMPORT_NAME+QML_ELEMENT代替了qmlRegisterType
    //qmlRegisterType<>(uri, 1, 0, "");
}
