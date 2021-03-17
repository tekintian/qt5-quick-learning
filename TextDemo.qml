import QtQuick 2.0

Rectangle {
    width: 500; height: 300;
    visible: true;

    Text {
        width: parent.width;height: parent.height; //设置文本的宽高与父组件的一直
        textFormat: Text.RichText; //指定文本格式为富文本
        text: qsTr("<h1>text for center</h1>")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }


    Row{
        spacing: 10;
        Text{ font.pointSize: 22; text: "Normal" }
        Text{ font.pointSize: 22; text: "Raised"; style: Text.Raised; styleColor: "green" }
        Text{ font.pointSize: 22; text: "Outline"; style: Text.Outline; styleColor: "blue" }
        Text{ font.pointSize: 22; text: "Sunken"; style: Text.Sunken; styleColor: "orange" }
    }


    Text {
        id: mytext3
        x:320;y:5;

        textFormat: Text.RichText
        text: "Welcome to access my site <a href=\"http://tekin.cn\">tekin.cn</a> "
        onLinkActivated: {
            Qt.openUrlExternally(link);// 打开超链接
            console.log("my link:"+link)
        }
    }


    // Flickable示例  让TextEdit的输入框的内容不超越输入框规定的大小范围
    Flickable{
       id:flick
       x:5;y:200;

       width: 300; height: 200;
       contentWidth: myTextEdit.paintedWidth
       contentHeight: myTextEdit.paintedHeight
       clip: true; //Flickable does not automatically clip its contents. If it is not used as a full-screen item, you should consider setting the clip property to true.

       function ensureVisible(r){
            if(contentX >= r.x) {
                contentX = r.x;
             }else if(contentX + width <=r.x+r.width ) {
                contentX = r.x + r.width - width;
            }

            if(contentY >= r.y){
                contentY = r.y;
            }else if(contentY + height <= r.y + r.height) {
                contentY = r.y + r.height - height;
            }
       }

       TextEdit {
           id: myTextEdit
           width: 220
           text: "<b>Hello</b> <i>World!</i>"
           font.family: "Helvetica"
           font.pointSize: 20
           color: "blue"
           focus: true
           wrapMode: TextEdit.Wrap
           onCursorRectangleChanged: flick.ensureVisible(cursorRectangle)

       }

    }

    // 验证器示例
    TextInput{
        validator: IntValidator{bottom: 11; top: 31;}
        focus: true
    }




}
