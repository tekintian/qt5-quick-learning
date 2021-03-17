import QtQuick 2.0
import QtQuick.Window 2.2

Window {
    visible: true
    width: 400; height: 300;
    // Column用于垂直排列项目，spacing 用于设置各项目之间的间距。
    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        spacing: 5

        Rectangle { color: "lightblue"; radius: 10.0; width: 300; height: 50}
        Rectangle { color: "gold"; radius: 10.0; width: 300; height: 50}
        Rectangle { color: "lightgreen"; radius: 10.0; width: 300; height: 50}

    }
}

