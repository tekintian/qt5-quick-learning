import QtQuick 2.0

Rectangle {
//    width: 100; height: 100
    anchors.fill: parent
    focus: true

    Keys.onPressed: {
        if(event.key === Qt.Key_A) {

            event.accepted = true;
        }

        console.log(event.key);

        mytext.text = event.key;
    }

    Text {
        id: mytext
        anchors.fill: parent
        text: qsTr("text")
        font.pointSize: 30;
        color: "red"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

}
