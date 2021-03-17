import QtQuick 2.0
import QtQuick.Window 2.0

Window {
    visible: true
    width: 300;height: width/2

//    Text {
//        id: text1
//        anchors.centerIn: parent
//        text: qsTr("Hello qt quick!")
//    }

//    Text {
//        id: text2
//        anchors.top: text1.bottom
//        anchors.topMargin: 10
//        anchors.horizontalCenter: text1.horizontalCenter
//        text: qsTr("text")

//        font {
//            weight: Font.ExtraBold; pointSize:20; letterSpacing:3 ; wordSpacing:6;
//            capitalization: Font.AllLowercase;
//            italic: true;
//            underline: true;
//            family: webFont.name
//        }

//        FontLoader {
//            id:webfont
//            source: "http://qter-images.qter.org/other/myfont.ttf"
//            onStatusChanged: {
//                if(webfont.status == FontLoader.Ready)
//                    console.log("webfont loaded!")
//            }

//        }
//    }


//    Column{
//        anchors.centerIn: parent
//        spacing: 5
//        Rectangle {
//            width: 186; height: 30
//            color: "lightblue"
//            Text {
//                text: "hello qt! Hello World!"
//                font.pointSize: 15
//            }
//        }
//        Rectangle {
//            width: 186; height: 30
//            color: "lightblue"
//            Text {
//                text: "hello qt! Hello World!"
//                font.pointSize: 15
//                width: 186
//                clip: true
//            }
//        }
//        Rectangle {
//            width: 186; height: 30
//            color: "lightgreen"
//            Text {
//                anchors.centerIn: parent
//                text: "hello qt! Hello World!"
//                font.pointSize: 15
//            }
//        }
//        Rectangle {
//            width: 186; height: 30
//            color: "lightgreen"
//            Text {
//                anchors.centerIn: parent
//                text: "hello qt! Hello World!"
//                font.pointSize: 15
//                width: 186
//                clip: true
//            }
//        }
//    }

    /*
    //文本省略演示
    Column{
        anchors.centerIn: parent
        spacing: 5
        Rectangle {
            width: 186; height: 30
            color: "lightblue"
            Text {
                width: 186
                text: qsTr("hello qt! Hello World!文本省略")
                font.pointSize: 15
                elide: Text.ElideLeft
            }
        }
        Rectangle {
            width: 186; height: 30
            color: "lightblue"
            Text {
                text: qsTr("text Hello QT Quick programming!")
                width: 100
                font.pointSize: 16
                elide: Text.ElideLeft
            }

        }
        Rectangle {
            width: 186; height: 30
            color: "lightblue"
            Text {
                width: 186
                text: qsTr("hello qt! Hello World!文本省略")
                font.pointSize: 15
                elide: Text.ElideRight
            }
        }
    }
*/
    Column{
        anchors.centerIn: parent
        spacing: 5

        Rectangle {
            width: 186; height: 30
            color: "lightblue"

            Text {
                text: "hello qt! Hello World!"
                font.pointSize: 15
            }
        }
        Rectangle {
            width: 186; height: 30
            color: "lightblue"

            Text {
                text: "hello qt! Hello World!"
                font.pointSize: 15
                width: 186
                clip: true
            }
        }

        Rectangle {
            width: 186; height: 30
            color: "lightgreen"

            Text {
                anchors.centerIn: parent
                text: "hello qt! Hello World!"
                font.pointSize: 15
            }
        }

        Rectangle {
            width: 186; height: 30
            color: "lightgreen"

            Text {
                anchors.centerIn: parent
                text: "hello qt! Hello World!"
                font.pointSize: 15
                width: 186
                clip: true
            }
        }
    }

}
