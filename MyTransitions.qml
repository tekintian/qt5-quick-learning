import QtQuick 2.0
// 过度效果演示
Rectangle {
    id: page
    width: 360; height: 360; color: "#343434"; radius: 0
    //设置背景渐变
    gradient: Gradient {
        GradientStop { position: 0.00; color: "white"; }
        GradientStop { position: 1.00; color: "green"; }
    }

    // 图标设置
    Image {
        id: icon
        x: 10; y: 20
        source: "images/ip.png"
    }

    // 分别设置4个Rectangle矩形边框和其坐标
    Rectangle {
        id: topLeftRect
        width: 64; height: 64; radius: 6

        anchors{ left: parent.left; leftMargin: 10; top: parent.top; topMargin: 10}

        color: "#00000000"; // 这里的颜色 #8个0 代表的为透明颜色
        border.color: "#000000" //边框颜色

        MouseArea {
            anchors.fill: parent
            onClicked: page.state = ''
        }
    }

    Rectangle {
        id: middleRightRect
        width: 65; height: 64; radius: 6
        x: -6 ; y: -6;
        anchors{right: parent.right;rightMargin: 10;verticalCenter: parent.verticalCenter}
        color: "#00000000"; border.color: "#000000"
        MouseArea {
            anchors.fill: parent
            onClicked: page.state = 'State1'
        }
    }

    Rectangle {
        id: bottomLeftRect
        width: 64; height: 65;  radius: 6
        y: -3
        anchors{left: parent.left;leftMargin: 10;bottom: parent.bottom;bottomMargin: 20}
        color: "#00000000"; border.color: "#000000"
        MouseArea {
            anchors.fill: parent
            onClicked: page.state = 'State2'
        }
    }

    Rectangle{
        id: topRightRect
        height: 65; width: 65; radius: 6;
        y:10; x: parent.width -100;
        anchors {right: parent.right; top: parent.top; topMargin: 10; rightMargin: 10}

        color: "#00000000"; // 这里的颜色 #8个0 代表的为透明颜色
        border.color: "#000000"

        MouseArea{
            anchors.fill: parent
            onClicked: page.state = "State3"
        }
    }

    //设置状态和其坐标位置
    states: [
        State {
            name: "State1"
            PropertyChanges {
                target: icon
                x: middleRightRect.x
                y: middleRightRect.y
            }
        },
        State {
            name: "State2"
            PropertyChanges {
                target: icon
                x: bottomLeftRect.x
                y: bottomLeftRect.y
            }
        },
        State {
            name: "State3"
            PropertyChanges {
                target: icon
               x: topRightRect.x
               y: topRightRect.y
            }
        }
    ]
    // 过度效果
    transitions: [
        Transition {
            from: "*"; to: "State1"
            NumberAnimation {
                easing.type: Easing.OutBounce; // 擦除效果类型  QEasingCurve::Type
                properties: "x,y";
                duration: 1000
            }
        },

        Transition {
            from: "*"; to: "State2"
            NumberAnimation { properties: "x,y"; easing.type: Easing.InOutQuad; duration: 2000 }
        },

        Transition {
            from: "*"; to: "State3"
            NumberAnimation { properties: "x,y"; easing.type: Easing.InElastic; duration: 500 }
        },

        Transition {
            NumberAnimation { properties: "x,y"; duration: 200 }
        }
    ]
}
