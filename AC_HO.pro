QT += qml quick
QT += widgets

CONFIG += c++11

SOURCES += main.cpp \
    analogclock.cpp \
    appmodel.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    analogclock.h \
    appmodel.h \
    QtPositioning/5.8.0/QtPositioning/private/qdeclarativegeoaddress_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qdeclarativegeolocation_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qdoublevector2d_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qdoublevector3d_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qgeoaddress_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qgeocircle_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qgeocoordinate_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qgeolocation_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qgeopositioninfosource_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qgeoprojection_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qgeorectangle_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qgeoshape_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qlocationdata_simulator_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qlocationutils_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qnmeapositioninfosource_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qpositioningglobal_p.h \
    QtPositioning/5.8.0/QtPositioning/private/qtpositioning-config_p.h \
    QtPositioning/QGeoAddress \
    QtPositioning/qgeoaddress.h \
    QtPositioning/QGeoAreaMonitorInfo \
    QtPositioning/qgeoareamonitorinfo.h \
    QtPositioning/QGeoAreaMonitorSource \
    QtPositioning/qgeoareamonitorsource.h \
    QtPositioning/QGeoCircle \
    QtPositioning/qgeocircle.h \
    QtPositioning/QGeoCoordinate \
    QtPositioning/qgeocoordinate.h \
    QtPositioning/QGeoLocation \
    QtPositioning/qgeolocation.h \
    QtPositioning/QGeoPositionInfo \
    QtPositioning/qgeopositioninfo.h \
    QtPositioning/QGeoPositionInfoSource \
    QtPositioning/qgeopositioninfosource.h \
    QtPositioning/QGeoPositionInfoSourceFactory \
    QtPositioning/qgeopositioninfosourcefactory.h \
    QtPositioning/QGeoRectangle \
    QtPositioning/qgeorectangle.h \
    QtPositioning/QGeoSatelliteInfo \
    QtPositioning/qgeosatelliteinfo.h \
    QtPositioning/QGeoSatelliteInfoSource \
    QtPositioning/qgeosatelliteinfosource.h \
    QtPositioning/QGeoShape \
    QtPositioning/qgeoshape.h \
    QtPositioning/QNmeaPositionInfoSource \
    QtPositioning/qnmeapositioninfosource.h \
    QtPositioning/qpositioningglobal.h \
    QtPositioning/QtPositioning \
    QtPositioning/qtpositioning-config.h \
    QtPositioning/QtPositioningDepends \
    QtPositioning/QtPositioningVersion \
    QtPositioning/qtpositioningversion.h

DISTFILES += \
    hourHand.png \
    minuteHand.png \
    icons/weather-few-clouds.png \
    icons/weather-fog.png \
    icons/weather-haze.png \
    icons/weather-icy.png \
    icons/weather-overcast.png \
    icons/weather-showers.png \
    icons/weather-sleet.png \
    icons/weather-snow.png \
    icons/weather-storm.png \
    icons/weather-sunny-very-few-clouds.png \
    icons/weather-sunny.png \
    icons/weather-thundershower.png \
    icons/README.txt \
    components/BigForecastIcon.qml \
    components/ForecastIcon.qml \
    components/WeatherIcon.qml
