import QtQuick 2.0
//在Qt Quick中所有可视化类型都基于 Item，它们都被称为 可视化条目（visual items）。
Item {

    Image {
        id:img1
        source: "images/123.jpeg"
        x:0; y:x;
        width: 100; height: width;
    }
    Image {
        id:img2
        x: img1.width; y:x;
        width: 150;height: width;
        source: "images/123.jpeg"
    }
    Image {
        id:img3
        x: img1.width+img2.width; y :x;
        width: 200; height: width;
        fillMode: Image.Tile
        source: "images/123.jpeg"

    }

    Text {
        id: label1
        anchors.horizontalCenter: img1.horizontalCenter
        anchors.top: img1.bottom
        anchors.topMargin: 2
        text: qtTr("Hello Items Text!")
        font.pointSize: 30
    }

}
