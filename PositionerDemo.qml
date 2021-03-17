import QtQuick 2.0
import QtQuick.Window 2.0

Window {
    visible: true
    width: 400;height: 300;

    Grid {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        columns: 2
        spacing: 6

        Rectangle {
            color: "lightblue"; radius: 10.0; height: 50; width: 50;
            Text{ anchors.centerIn: parent; text: parent.Positioner.index}
        }
        Rectangle {
            color: "lightgreen"; radius: 10.0; height: 50; width: 50;
            Text{ anchors.centerIn: parent; text: parent.Positioner.index}
        }
        Rectangle {
            color: "lightgray"; radius: 10.0; height: 50; width: 50;
            Text{ anchors.centerIn: parent; text: parent.Positioner.index}
        }


    }
}
