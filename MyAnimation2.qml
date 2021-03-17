import QtQuick 2.0

//自己移动的动画
//Rectangle {
//    width: 100; height: 100
//    color: "red"

//    PropertyAnimation on x { to: 50; duration: 1000; loops: Animation.Infinite }
//    PropertyAnimation on y { to: 50; duration: 1000; loops: Animation.Infinite }
//}

//跟随鼠标点击移动的动画
//Item {
//    width: 500; height: 500

//    Rectangle{
//        id: rect
//        width: 100; height: 100;
//        color: "red"

//        Behavior on x { PropertyAnimation {duration: 500}}
//        Behavior on y { PropertyAnimation {duration: 500}}
//    }

//    MouseArea{
//        anchors.fill: parent
//        onClicked: { rect.x =mouseX; rect.y = mouseY}
//    }
//}


//Rectangle {
//    id: rect
//    width: 100; height: 100
//    color: "red"

//    MouseArea {
//        anchors.fill: parent
//        onClicked: PropertyAnimation { target: rect; properties: "x,y"; to: 50; duration: 1000 }
//    }
//}


//Rectangle {
//    id: rect
//    width: 100; height: 100
//    color: "red"

//    PropertyAnimation {
//        id: animation
//        target: rect
//        properties: "x,y"
//        duration: 1000
//    }

//    MouseArea {
//        anchors.fill: parent
//        onClicked: {
//            animation.to = 50;
//            animation.running = true;
//        }
//    }
//}


//Rectangle {
//    id: rect
//    width: 100; height: 100
//    color: "red"

//    MouseArea {
//        anchors.fill: parent
//        onClicked: rect.state = "moved"
//    }

//    states: State {
//        name: "moved"
//        PropertyChanges { target: rect; x: 50; y: 50 }
//    }

//    transitions: Transition {
//        PropertyAnimation { properties: "x,y"; duration: 1000 }
//    }
//}

// 颜色变化动画
//Rectangle{
//    width: 100; height: 100;

//    ColorAnimation on color {from:"red"; to: "yellow"; duration: 2000}
//}

//顺时针旋转90度
//Item {
//    width: 300; height: 300;

//    Rectangle{
//        width: 100; height: 100; color:"red"
//        anchors.centerIn: parent;

//       RotationAnimation on rotation{to:90; direction: RotationAnimation.Clockwise}
//    }
//}


//Rectangle {
//    width: 100; height: 100
//    color: "red"

//    PropertyAnimation on x { to: 50; duration: 1000;
//        easing.type: Easing.OutBounce }
//    PropertyAnimation on y { to: 50; duration: 1000;
//        easing.type: Easing.OutBounce }
//}


//上下跳动动画
//Rectangle {
//    id: rect
//    width: 120; height: 200

//    Image {
//        id: img
//        source: "images/ip.png"
//        anchors.horizontalCenter: parent.horizontalCenter
//        y: 0

//        SequentialAnimation on y {
//            loops: Animation.Infinite
//            NumberAnimation { to: rect.height - img.height;
//                easing.type: Easing.OutBounce; duration: 2000 }
//            PauseAnimation { duration: 1000 }
//            NumberAnimation { to: 0; easing.type: Easing.OutQuad;
//                duration: 1000 }
//        }
//    }
//}



Rectangle {
    id: redRect
    width: 100; height: 100
    color: "red"

    MouseArea { id: mouseArea; anchors.fill: parent }

    states: State {
        name: "pressed"; when: mouseArea.pressed
        PropertyChanges { target: redRect; color: "blue";
            y: mouseArea.mouseY; width: mouseArea.mouseX }
    }

    transitions: Transition {

        SequentialAnimation {
            ColorAnimation { duration: 200 }
            PauseAnimation { duration: 100 }

            ParallelAnimation {
                NumberAnimation {
                    duration: 500
                    easing.type: Easing.OutBounce
                    targets: redRect
                    properties: "y"
                }

                NumberAnimation {
                    duration: 800
                    easing.type: Easing.InOutQuad
                    targets: redRect
                    properties: "width"
                }
            }
        }
    }
}








