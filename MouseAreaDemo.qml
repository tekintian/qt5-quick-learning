import QtQuick 2.0
/**
  鼠标左右中间键点击后改变背景颜色
*/
Rectangle {
    width: 500;height: 300;

    color: "green"

    MouseArea{
        anchors.fill: parent
        //指定可接收的按键
        acceptedButtons: Qt.LeftButton|Qt.RightButton|Qt.MiddleButton

        onClicked: {
            //鼠标左键 右键  中间键
            if(mouse.button == Qt.LeftButton){
                parent.color = "red"
            }else if(mouse.button == Qt.RightButton){
                parent.color = "orange"
            }else {
                parent.color = "green"
             }
        }

    }
}
