import QtQuick 2.0

Item {
    width: 200; height: 200

    MouseArea {
        anchors.fill: parent
        onClicked: label.moveTo(mouseX, mouseY)
    }

    Text {
        id: label

        function moveTo(newX, newY) {
            label.x = newX;
            label.y = newY
        }

        text: qsTr("Move me!")
    }

    ListView {
        width: 240; height: 320
        model: ListModel {
            id: listModel
            Component.onCompleted: {
                for (var i = 0; i < 10; i++)
                    listModel.append({"Name": "Item " + i})
            }
        }

        delegate: Text { text: index }
    }



}
