import QtQuick 2.0
import QtQuick.XmlListModel 2.12

/*
Item {
    width:200;height: 250;

    // 模型数据
    ListModel {
        id:myModel
        ListElement{type:"dog"; age:9; address:"云南"}
        ListElement{type:"cat"; age:6; address:"北京"}
    }
    // 显示模板
    Component {
        id: myDelegate
        Text{ text: type + ", "+ age +" "+ address; font.pointSize: 16; }
    }
    //显示视图
    ListView {
        anchors.fill: parent
        model: myModel
        delegate: myDelegate
    }
}
*/
/*
Rectangle{
    width: 560; height: 360;

    XmlListModel {
        id: feedModel
        source: "http://rss.news.yahoo.com/rss/oceania"
        query: "/rss/channel/item"

        XmlRole {name: "title"; query: "title/string()" }
        XmlRole {name: "link"; query: "link/string()" }
        XmlRole {name: "pubDate"; query: "pubDate/string()" }
        XmlRole {name: "source"; query: "source/string()"}
    }

    ListView{
        anchors.fill: parent
        model:feedModel
        delegate: Column{
            Text {text: "title:"+ title }
            Text {text: "link: "+ link }
            Text {text: "pubDate: "+ pubDate }
            Text {text: "source: "+ source }
        }
    }
}
*/
/*
Rectangle {
    width: 200; height: 200;
    //模型
    ListModel{
        id: fruitModel
        property string lng:"en"

        ListElement{ name:"Apple"; cost: 2.99 }
        ListElement{ name:"Orange"; cost: 3.8 }
        ListElement{ name:"Banana"; cost: 1.89 }
    }

    // 视图
    ListView{
        id: list
        property color fruit_color: "green";
        model: fruitModel;
        delegate: fruitDelegate
        anchors.fill: parent
    }

    // 显示模板(代理)
    Component{
        id: fruitDelegate
        Row{
            spacing: 10;

            Text{ text: "Fruit:"+ name; color:list.fruit_color}
            Text{ text: "  Cost: $"+ cost; }
            Text{ text: "  Language:" + fruitModel.lng}
        }
    }
}
*/

// 当前行加颜色 模型外部加载
ListView {
    width: 180; height: 200

    Component {
        id: contactsDelegate
        Rectangle {
            id: wrapper
            width: 180
            height: contactInfo.height
            color: ListView.isCurrentItem ? "black" : "red"
            Text {
                id: contactInfo
                text: name + ": " + number
                color: wrapper.ListView.isCurrentItem ? "red" : "black"
            }
        }
    }

    model: ContactModel {}// 加载外部的模型 ContactModel.qml中的模型
    delegate: contactsDelegate
    focus: true
}



