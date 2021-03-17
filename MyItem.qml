import QtQuick 2.0
// Receiving Signals from Loaded Objects
Rectangle {
   id: myItem
   //定义信号
   signal message(string msg)

   width: 100; height: 100; color: "green"

   MouseArea{
    anchors.fill: parent
    onClicked: {
        //触发信号
        myItem.message("Clicked on x="+ mouseX+" y="+mouseY);
    }
   }
}
