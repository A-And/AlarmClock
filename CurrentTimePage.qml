import QtQuick 2.0

Rectangle{
    id: root
    x: 0
    y: 0
    color:"#FFF"

    RadialClock {
        anchors.centerIn: parent
        id: radialClock
        x: 0
        y: 0
        shift:0
    }

}

