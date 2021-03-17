import QtQuick 2.0


Rectangle {
    id: root

    //信号定义
    signal activated(real xPosition, real yPosition)
    signal deactivated

    color: "green"

    property int side: 100
    width: side; height: side

    MouseArea {
        anchors.fill: parent
        //信号发射
        onPressed: root.activated(mouse.x, mouse.y)
        onReleased: root.deactivated()
    }
}
