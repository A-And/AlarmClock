#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "appmodel.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    qmlRegisterType<WeatherData>("WeatherInfo", 1, 0, "WeatherData");
    qmlRegisterType<AppModel>("WeatherInfo", 1, 0, "AppModel");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    return app.exec();
}
