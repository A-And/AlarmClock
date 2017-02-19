#ifndef ANALOGCLOCK_H
#define ANALOGCLOCK_H

#include <QtWidgets>
#include <QTimer>

class AnalogClock : public QWidget

{
    Q_OBJECT
public:
    AnalogClock(QWidget* p = 0);
    void showTime();
protected:
    void paintEvent(QPaintEvent* event) override;

private:
    QTimer* timer;
    int m_timerId;
};

#endif // ANALOGCLOCK_H
