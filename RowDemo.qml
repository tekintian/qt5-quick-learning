import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 800;height: width/2

    //Row用于水平排列其中的项目
    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        spacing: 10

        Rectangle { color: "lightblue"; radius: 10.0; width: 200; height: 50}
        Rectangle { color: "gold"; radius: 10.0; width: 200; height: 50}
        Rectangle { color: "lightgreen"; radius: 10.0; width: 200; height: 50}
    }

}
