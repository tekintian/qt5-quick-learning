import QtQuick 2.0
import QtQuick.Window 2.0

Window {
    visible: true
    width: 600;height: 320;

   /*
    Row {
        spacing: 10
        anchors.centerIn: parent

        Text { text: qsTr("请输入密码:"); font.pointSize: 16;
            verticalAlignment: Text.AlignVCenter}

        Rectangle {
//            width: 100;height: 24; //固定宽高,文字输入多了以后会超出界面区域

            //自适应输入框尺寸
            width: input.contentWidth<100 ? 100 : input.contentWidth + 10
            height: input.contentHeight + 5

            color: "lightgrey"
            border.color: "grey"

            TextInput {
                id: input
                anchors.fill: parent
                anchors.margins: 2
                font.pointSize: 16
                focus: true
                inputMask: N //输入掩码 限制输入的内容，输入掩码就是使用一些特殊的字符来限制输入的格式和内容，比如掩码A 指定必须输入一个字母 A-Z或a-z，而掩码 a 与其类似，只是不强制输入，可以用留空。
            }
        }
    }
    */

    // 带 滚动条的 TextEdit
    Flickable {
        id: flick

        anchors.fill: parent
        contentWidth: edit.paintedWidth
        contentHeight: edit.paintedHeight
        clip: true

        function ensureVisible(r)
        {
            if (contentX >= r.x)
                contentX = r.x;
            else if (contentX+width <= r.x+r.width)
                contentX = r.x+r.width-width;
            if (contentY >= r.y)
                contentY = r.y;
            else if (contentY+height <= r.y+r.height)
                contentY = r.y+r.height-height;
        }

        TextEdit {
            id: edit
            width: flick.width
            height: flick.height
            font.pointSize: 15
            wrapMode: TextEdit.Wrap
            focus: true
            onCursorRectangleChanged:
                flick.ensureVisible(cursorRectangle)
        }
    }

    Rectangle {
        id: scrollbar
        anchors.right: flick.right
        y: flick.visibleArea.yPosition * flick.height
        width: 10
        height: flick.visibleArea.heightRatio * flick.height
        color: "lightgrey"
    }
}
