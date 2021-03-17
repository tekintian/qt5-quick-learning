import QtQuick 2.0

Rectangle {
    width: 400; height: 240
    color: "white"
    // 显示模板 组件
    Component{
        id: appDelegate
        Item {
            width: 100; height: 100;
            scale: PathView.iconScale

            Image{
                id:myIcon
                y:20; anchors.horizontalCenter: parent.horizontalCenter
                source: icon
                smooth: true
            }
            Text {
                text: name
                smooth: true
                anchors {top: myIcon.bottom; horizontalCenter: parent.horizontalCenter}
            }
        }
    }
    //高亮模板组件
    Component{
        id:appHighlight
        Rectangle{ width: 80; height: 80; color:"lightsteelblue"}
    }

    PathView{
        id:view
        anchors.fill: parent
        highlight: appHighlight
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        focus: true

        //加入按键导航
        Keys.onLeftPressed: decrementCurrentIndex()
        Keys.onRightPressed: incrementCurrentIndex()

        model: MyListModelData{}
        delegate: appDelegate
        path: Path{
            startX: 10
            startY: 50
            PathAttribute{ name: "iconScale"; value: 0.5 }
            PathQuad{ x:200; y:150; controlX: 50; controlY: 200 }
            PathAttribute{ name:"iconScale"; value: 1.0 }
            PathQuad{x:390; y:50; controlX: 350; controlY: 200 }
            PathAttribute{name:"iconScale"; value: 0.5 }
        }
    }
}
