import QtQuick 2.0
/*
Rectangle {
    width: 300; height: 400; color: "white"

    ListModel{
        id: appModel
        ListElement { name: "Music"; icon: "images/AudioPlayer_48.png" }
        ListElement { name: "Movies"; icon: "images/VideoPlayer_48.png" }
        ListElement { name: "Camera"; icon: "images/Camera_48.png" }
        ListElement { name: "Calendar"; icon: "images/DateBook_48.png" }
        ListElement { name: "Messaging"; icon: "images/EMail_48.png" }
        ListElement { name: "Todo List"; icon: "images/TodoList_48.png" }
        ListElement { name: "Contacts"; icon: "images/AddressBook_48.png" }
   }

    Component{
        id: appDelegate

        Item {
            width: 100; height: 100;

            Image {
                id: myIcon
                source: icon
                y:20;
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: name
                anchors {top: myIcon.bottom; horizontalCenter: parent.horizontalCenter}
            }
        }
    }

    Component{
        id:appHighlight
        Rectangle{ width: 80; height: 80; color: "lightsteelblue"}
    }

    GridView{
        anchors.fill: parent
        cellHeight: 100; cellWidth: 100;
        highlight: appHighlight
        focus: true
        model: appModel
        delegate: appDelegate
    }

}
*/


//使用外部模型数据
Rectangle {
    width: 300; height: 400; color: "white"

    Component{
        id: appDelegate

        Item {
            width: 100; height: 100;

            Image {
                id: myIcon
                source: icon
                y:20;
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: name
                anchors {top: myIcon.bottom; horizontalCenter: parent.horizontalCenter}
            }
        }
    }

    Component{
        id:appHighlight
        Rectangle{ width: 80; height: 80; color: "lightsteelblue"}
    }

    GridView{
        anchors.fill: parent
        cellHeight: 100; cellWidth: 100;
        highlight: appHighlight
        focus: true
        model: MyListModelData{} //使用外部模型 MyListModelData.qml 的数据
        delegate: appDelegate
    }

}



