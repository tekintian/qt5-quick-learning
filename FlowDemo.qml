import QtQuick 2.0
import QtQuick.Window 2.0

Window {
    visible: true
    width: 400;height: 300;

    Rectangle {
        anchors.centerIn: parent
        color: "lightblue"
        width: 300; height: 200
        //Flow排列项目的规则与Grid相似，不同的是，Flow的子项目会在超出边界后自动换行，每行的子项目数不一定相同。
        Flow {
            anchors.fill: parent
            anchors.margins: 4
            spacing: 10

            Text { text: qsTr("Text"); font.pixelSize: 40 }
            Text { text: qsTr("items"); font.pixelSize: 40 }
            Text { text: qsTr("flowing"); font.pixelSize: 40 }
            Text { text: qsTr("inside"); font.pixelSize: 40 }
            Text { text: qsTr("a"); font.pixelSize: 40 }
            Text { text: qsTr("Flow"); font.pixelSize: 40 }
            Text { text: qsTr("item"); font.pixelSize: 40 }
        }

    }
}
