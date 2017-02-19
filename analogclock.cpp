#include "analogclock.h"

AnalogClock::AnalogClock(QWidget* p) : QWidget(p)
{
    timer = new QTimer(this);
    connect(timer,SIGNAL(timeout()), this, SLOT(update()));
    timer->start(1000);

    setWindowTitle(tr("Honey Otter Clock"));
    resize(640,380);
}

void AnalogClock::paintEvent(QPaintEvent* event) {
    static const QPoint hourHand[3] = {
        QPoint(7,8),
        QPoint(-7,8),
        QPoint(0, -40)
    };
    static const QPoint minuteHand[3] = {
        QPoint(7,8),
        QPoint(-7,8),
        QPoint(0, -70)
    };
    QColor hourColor(127, 0, 127);
    QColor minuteColor(0,127,127,191);

    int side = qMin(width(), height());
    QTime time = QTime::currentTime();

    QPainter painter(this);
    painter.setRenderHint(QPainter::Antialiasing);
    painter.translate(width()/2, height()/2);
    painter.scale(side / 200.0, side/200.0);

    // Draw hour hand
    painter.setPen(Qt::NoPen);
    painter.setBrush(hourColor);
    painter.save();
    painter.rotate(30.0*(time.hour() + time.minute()/60.0));
    painter.drawConvexPolygon(hourHand, 3);
    painter.restore();

    painter.setPen(hourColor);
    // Draw hour tabs
    for (int i = 0; i < 12; ++i) {
        painter.drawLine(88, 0, 96, 0);
        painter.rotate(30.0);
    }


    // Draw minute hand
    painter.setPen(Qt::NoPen);
    painter.setBrush(minuteColor);
    painter.save();
    painter.rotate(6.0*(time.minute() + time.second()/60.0));
    painter.drawConvexPolygon(minuteHand, 3);
    painter.restore();

    painter.setPen(hourColor);
    // Draw hour tabs
    for (int i = 0; i < 60; ++i) {
        if((i % 5) != 5)
            painter.drawLine(92, 0, 96, 0);
        painter.rotate(6.0);
    }

}
void AnalogClock::showTime(){

}

