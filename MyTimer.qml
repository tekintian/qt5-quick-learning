import QtQuick 2.0

Item {
    width: 600; height: 300

    Timer{
        interval: 1000; running: true; repeat: true;
        onTriggered: time.text = Date().toString()
    }

    Text {
        id: time
        text: "Time"
        anchors.centerIn: parent
        color: "green"
        font.pointSize: 30
    }

}
