import QtQuick 2.0

//Image {
//    id: myImg
//    width: 1024; height: 768;
//    fillMode: Image.PreserveAspectCrop
//    source: "https://cn.bing.com/th?id=OHR.WWDLions_ZH-CN3506997987_UHD.jpg&rf=LaDigue_UHD.jpg&pid=hp&w=3840&h=2160&rs=1&c=4"

//    onStateChanged: {
//        if(myImg.status == Image.Ready){
//            console.log("Img load ok!");
//        }else if(myImg.status == Image.Loading){
//           console.log("image loading...")
//        }
//    }
//}


//原图
//Image {
//   source: "images/colors.png"
//}
// 平铺
//BorderImage {
//    id: img1
//    source: "images/colors.png"
//    width: 300; height: 300
//    border.left: 5; border.top: 5
//    border.right: 5; border.bottom: 5
//    horizontalTileMode: BorderImage.Repeat
//    verticalTileMode: BorderImage.Repeat
//}


// 拉伸
BorderImage {
    width: 180; height: 180
    border { left: 30; top: 30; right: 30; bottom: 30 }
    horizontalTileMode: BorderImage.Stretch
    verticalTileMode: BorderImage.Stretch
    source: "images/colors.png"
}


