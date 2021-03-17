import QtQuick 2.0
// 渐变
Rectangle {
    width: parent.width; height: parent.height;

    gradient: Gradient{
        GradientStop{ position: 0.0; color:"red" }
        GradientStop { position: 0.33; color:"yellow" }
        GradientStop { position: 1; color: "green" }
    }
}
