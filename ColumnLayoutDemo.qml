import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Layouts 1.12
/**
ColumnLayout 会在垂直方向上布局项目，而对于其中项目的具体布局设置，
需要通过Layout 附加属性来进行，比如这里的Layout.alignment 用于设置对齐方式，
Layout.preferredWidth 用来设置建议的宽度，Layout.fillHeight 指明该项目会填充高度，
也就是说当界面被拉伸，出现更多空间的时候，该项目的高度会自动增加来填充这些空间。
*/

Window {
    visible: true
    width: 100;height: 300;

    ColumnLayout{
        anchors.fill: parent
        spacing: 2

        Rectangle {
            Layout.alignment: Qt.AlignCenter
            color: "gold"
            Layout.preferredWidth: 40
            Layout.preferredHeight: 40
        }

        Rectangle {
            Layout.alignment: Qt.AlignRight
            color: "lightgreen"
            Layout.preferredHeight: 70
            Layout.preferredWidth: 40
        }

        Rectangle {
            Layout.alignment: Qt.AlignBottom
            Layout.fillHeight: true //自动填充高度
            color: "lightblue"
            Layout.preferredHeight: 40
            Layout.preferredWidth: 70
        }
    }
}
