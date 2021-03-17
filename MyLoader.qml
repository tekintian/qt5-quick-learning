import QtQuick 2.0

Rectangle {
    width: 200; height: 200


    Text {
        id: showPressedText
        x: 300; y:10;
        font.pointSize: 288
        color: "red"
    }

    Loader {
        id: loader
        focus: true
    }

    MouseArea {
        anchors.fill: parent
        onClicked: loader.source = "KeyReader.qml"
    }

    Keys.onPressed: {
        console.log("Captured:", event.text);
        showPressedText.text = event.text
    }

}
