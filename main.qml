/*导入语句,这里我们导入了 QtQuick 2.9，其实在Qt 5.12中最新的QtQuick模块版本是2.12，使用2.9只是为了向下兼容，如果这里直接使用 QtQuick 2.12，那么使用低于 Qt 5.12 的 Qt 版本编译该源码会报错*/
import QtQuick 2.9
import QtQuick.Window 2.2

/* QML文档可以看做是一个QML对象树,这里创建了Window根对象
和它的子对象Text */
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id: myDemo
        text: qsTr("<h1>Hello World! QT5 Quick!</h1>")
        anchors.centerIn: parent // 将Text对象锚定到父对象的中间
    }

    Rectangle {
        id: colorRect
        width: 100
        height: width //属性绑定，当 width 的值改变时，height 属性的值会跟随变化
        radius: 10
        color: "green"

        anchors.left: myDemo.right

        anchors.leftMargin: 10
        anchors.verticalCenter: myDemo.verticalCenter

        //在QML中一个很常见的设置交互的方式是使用MouseArea，
        //MouseArea本身是不可见的，但是它可以为一些可见内容提供鼠标交互
        MouseArea {
            anchors.fill: parent //表明让MouseArea填充整个父对象
            onClicked: {
                //在QML中一般使用console将需要的信息输出到控制台，
                //可用的有console.log, console.debug, console.info, console.warn 和 console.error，
                //比如这里使用了console.debug("colorRect: ", parent.color) ，可以顺序输出参数中的内容，可以是字符串，也可以是对象属性引用。
             console.debug("colorRect:", parent.color)
            }
        }
    }


}
