/*导入语句,这里我们导入了 QtQuick 2.9，其实在Qt 5.12中最新的QtQuick模块版本是2.12，使用2.9只是为了向下兼容，如果这里直接使用 QtQuick 2.12，那么使用低于 Qt 5.12 的 Qt 版本编译该源码会报错*/
import QtQuick 2.9
import QtQuick.Window 2.2

/* QML文档可以看做是一个QML对象树,这里创建了Window根对象
和它的子对象Text */
Window {
    width: 1024
    height: 768
    visible: true
    title: qsTr("Hello World, QT Quick Demo Project")
/*
    //背景图片设置
    Image {
        id: bgImg
//        source: "/images/01.jpeg"
        width: parent.width
        anchors.bottom: parent.bottom
        fillMode: Image.PreserveAspectFit
        // fillMode: Image.PreserveAspectCrop
    }

    ColorText {
        colorText: qsTr("Hello World! QT Quick!") //给自定义属性赋值
        textFont.underline: true //为属性别名赋值

        anchors.centerIn:  parent

        onClicked: {
            console.log("colorButton:", buttonColor)
            var val = buttonColor
            switch(val) {
                case "#ff0000":
                    bgImg.source = "images/bg2.png";
                    changeDuration(500)
                    break;
                case "#0000ff":
                    bgImg.source = "images/bg3.png";
                    changeDuration(1000)
                    break;
                default:
                    bgImg.source = "images/01.jpeg";
                    changeDuration(2000)
            }
            //调用自定义方法更改动画持续时间


        }

        //ColorText启动完成时执行代码
        // 每一个QML对象类型都包含一个附加的 Component 属性，在对象被实例化完成后该属性会发射completed信号，
        //其对应的onCompleted 处理器会在QML环境完全建立以后执行。
        // 所以，我们想要在程序启动后执行一些操作，可以放到 Component.onCompleted 中执行。
        Component.onCompleted: {
            changeDuration(2000);
        }

    }
*/

//    ItemsDemo { }

//    ColumnDemo{}
//    RowDemo{}
//    GirdDemo{}
//    FlowDemo{}
//    PositionerDemo{}
//    ColumnLayoutDemo{}
//    StackLayoutDemo{}
//    FontDemo{}
//    TextInputDemo{}

//    SquareButton {
//        // 信号处理
//        onActivated: console.log("Activated at " + xPosition + "," + yPosition)
//        onDeactivated: console.log("Deactivated!")
//    }

//    LabelMoveDemo{}
//    RepeaterDemo{}
//    TextDemo{}
//    MouseAreaDemo{}
//    DragDemo{}
//    KeysDemo{}
//    KeyNavigationDemo{}

//     Column{
//         anchors.centerIn: parent; spacing: 10

//        MyWidget { focus: true; color: "lightblue"}
//        MyWidget {color: "palegreen"}
//     }
//    MyTimer{}

/*
    //Receiving Signals from Loaded Objects
    Loader{
        id: myLoader
        source: "MyItem.qml"
    }
    Connections {
        target: myLoader.item
        // 处理自定义信号  signal message(string msg)
        onMessage:{
            console.log(msg);
            showMsg.text = msg;
        }
    }

    Text {
        id: showMsg
        anchors.centerIn: parent
        text: qsTr("message")
        font.pointSize: 18
        color: "red"
    }
 */

//    MyLoader{}
//    MyGradient{}
//    MyImage{}
//    MyAnimation{}
//    MyScale{}
//    MyAnimation2{}
//    MyDataModel{}
//    MyGridView{}
//    MyPathView{}
//    MyWebView{}
    MyTransitions{}
}

