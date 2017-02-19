import QtQuick 2.0

Item {
    id : clock

    property int hours
    property int minutes
    property int seconds
    property real shift
    property bool night: false
    property bool internationalTime: true //Unset for local time


    function timeChanged() {
        var date = new Date;
        hours = internationalTime ? date.getUTCHours() + Math.floor(clock.shift) : date.getHours()
        night = ( hours < 7 || hours > 19 )
        minutes = internationalTime ? date.getUTCMinutes() + ((clock.shift % 1) * 60) : date.getMinutes()
        seconds = date.getUTCSeconds();
        minutes = date.getUTCSeconds();
        hours = date.getUTCSeconds();

    }

    Timer {
        interval: 100; running: true; repeat: true;
        onTriggered: clock.timeChanged()
    }
    Image{
        anchors.centerIn: parent
        id:background;
        height:310
        width:310
        source:"clockFace.png"; }

    Image{
        anchors.horizontalCenter: background.horizontalCenter
        anchors.verticalCenter: background.top;
        id:hourHand
        height: 115
        z: 5
        anchors.verticalCenterOffset: 115
        source:"hourHand.png"
        transform: Rotation {
            id: hourRotation
            origin.x: 25; origin.y: 100;
            angle: (clock.hours * 30) + (clock.minutes * 0.5)
            Behavior on angle {
                SpringAnimation { spring: 2; damping: 0.2; modulus: 360 }
            }
        }
    }
    Image{
        anchors.horizontalCenter: background.horizontalCenter
        anchors.verticalCenter: background.top;
        id:minuteHand
        anchors.verticalCenterOffset: 95
        source:"minuteHand.png"
        transform: Rotation {
            id: minuteRotation
            origin.x: 12; origin.y: 140;
            angle: clock.minutes * 6
            Behavior on angle {
                SpringAnimation { spring: 2; damping: 0.2; modulus: 360 }
            }
        }

    }
    Image {
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.verticalCenter: parent.verticalCenter;
        height: 155;
        anchors.verticalCenterOffset: secondHand.height/2;
                anchors.horizontalCenterOffset: 3

        id:secondHand
        source: "secondHand.png"
        transform: Rotation {
            id: secondRotation
            origin.x: secondHand.top; origin.y: background.verticalCenter;
            angle: clock.seconds * 6
            Behavior on angle {
                SpringAnimation { spring: 2; damping: 0.2; modulus: 360 }
            }
        }
    }


}

