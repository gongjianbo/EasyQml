#include <QApplication>
#include <QQmlContext>
#include <QQmlComponent>
#include <QQmlApplicationEngine>
#include <QDebug>

void updateToolTip(QQmlApplicationEngine *engine);

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_ShareOpenGLContexts);
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url, &engine](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
        //替换默认的ToolTip附加属性样式
        updateToolTip(&engine);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}

//替换默认的ToolTip附加属性样式
void updateToolTip(QQmlApplicationEngine *engine)
{
    static const char *name = "_q_QQuickToolTip";
    QQmlComponent *component = new QQmlComponent(engine, QUrl("qrc:/QuickToolTip.qml"), qApp);
    auto create_func = [component, engine]{
        if(component->isError()){
            qWarning() << "create QuickToolTip failed." << component->errors();
        }else if(component->isReady()){
            QObject *object = component->create();
            if (object){
                object->setParent(engine);
                engine->setProperty(name, QVariant::fromValue(object));
            }
        }
    };
    if(component->isLoading()){
        QObject::connect(component, &QQmlComponent::statusChanged, create_func);
    }else{
        create_func();
    }
}
