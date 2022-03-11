#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQuick/QQuickWindow>


int main(int argc, char *argv[]) {

    QGuiApplication app(argc, argv);

    QQuickWindow::setSceneGraphBackend("software");

    QQmlApplicationEngine engine;

    const QUrl url(u"qrc:/src/core/res/ui/root.qml"_qs);

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
                if (!obj && url == objUrl)
                    QCoreApplication::exit(-1);
            }, Qt::QueuedConnection);

    engine.load(url);

    return app.exec();
}
