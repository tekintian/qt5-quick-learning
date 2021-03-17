import QtQuick 2.0

Rectangle {
    width: 400; height: width; color: "black";

    //网格布局Grid
    Grid {
       x:5; y:5; //坐标
       //设置网格的行列和间距
       rows:5 ; columns: 5; spacing: 10;

       //Repeater对象
       //The Repeater type is used to create a large number of similar items. Like other view types,
       //a Repeater has a model and a delegate: for each entry in the model,
       //the delegate is instantiated in a context seeded with data from the model.
       //A Repeater item is usually enclosed in a positioner type such as Row or Column to visually position the multiple delegate items created by the Repeater.
       Repeater {
          model:24; //模型 we use an integer as the model
          Rectangle{
            width: 70; height: 70; color: "lightgreen";
            Text {
                text: "<b>"+index+"</b>";
                font.pointSize: 30;
                color: "red"
                anchors.centerIn: parent
            }
            opacity: 0.8; //设置透明度
          }
       }
    }



    Grid{
        x:600; y:5; //坐标
        spacing: 10

        Repeater {
             model:["one","two","three"]; //模型数据
             //代理 The delegate provides a template defining each item instantiated by the repeater.
             Text {
                 text: modelData
                 font.pixelSize: 22; font.bold: true; color: "red"
             }
        }
    }

    // Column repeater
    Column{
        x:410; y:5; //坐标

        Repeater{
           model:["Apples","oranges","pears"]; //定义一个数组
           Text { text:" Data: "+ modelData } // 使用model中的data属性输出模型数据
        }
    }


}
