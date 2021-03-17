import QtQuick 2.0

Item {
    id: root
    property string colorText //定义一个string类型的colorText属性
    property alias textFont: text1.font //定义一个属性别名textFont

    signal clicked(string buttonColor) //定义信号

    Text {
        id: text1
        text: colorText
        anchors.centerIn: parent // 将Text对象锚定到父对象的中间

        font.bold: true
        font { pointSize: 16; capitalization: Font.AllUppercase }

        Behavior on rotation {
            NumberAnimation { id:animation; duration: 500 }
        }

    }


    Rectangle {
        id: colorRect
        width: 100
        height: width //属性绑定，当 width 的值改变时，height 属性的值会跟随变化
        radius: 10
        color: "green"

        anchors.left: text1.right

        anchors.leftMargin: 10
        anchors.verticalCenter: text1.verticalCenter

        //在QML中一个很常见的设置交互的方式是使用MouseArea，
        //MouseArea本身是不可见的，但是它可以为一些可见内容提供鼠标交互
        MouseArea {
            anchors.fill: parent //表明让MouseArea填充整个父对象
            hoverEnabled: true
            onEntered: {
                parent.width = 32
               parent.color = "red"
            }
            onExited: {
                parent.width = 40
                parent.color = "white"
            }

            onClicked: {
                //在QML中一般使用console将需要的信息输出到控制台，
                //可用的有console.log, console.debug, console.info, console.warn 和 console.error，
                //比如这里使用了console.debug("colorRect: ", parent.color) ，可以顺序输出参数中的内容，可以是字符串，也可以是对象属性引用。
               console.debug("colorRect:", parent.color)

                text1.rotation += 360
                text1.color = parent.border.color

                //调用信号
                root.clicked(parent.border.color)
            }



        }

        Rectangle {
            width: 12*2
            height: width
            radius: 12
            color: parent.border.color
            anchors.centerIn: parent

        }
    }
    //自定义方法changeDuration
    function changeDuration(duration) {
        animation.duration = duration
    }

}
