import QtQuick 2.12
import QtQuick.Window 2.12
//Window对象用于创建一个顶层窗口
Window {
    visible: true
    width: 400;height: 300;

    Grid {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        columns: 2
        spacing: 6

        Rectangle {color: "lightblue"; radius: 10.0; height: 50; width: 50;}
        Rectangle {color: "lightgreen"; radius: 10.0; height: 50; width: 50;}
        Rectangle {color: "lightgray"; radius: 10.0; height: 50; width: 50;}
    }
}
