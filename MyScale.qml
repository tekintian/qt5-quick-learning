import QtQuick 2.0

Item {


    // scale 拉伸item
    Rectangle {
        color: "blue"
        width: 100; height: 100
        Rectangle {
            color: "green"
            width: 25; height: 25
        }
        Rectangle {
            color: "red"
            x: 25; y: 25; width: 25; height: 25
            scale: 1.6
            transformOrigin: "TopLeft"
        }
    }

    //rotation 旋转
    Rectangle {
        x:150; y:5;

        color: "blue"
        width: 100; height: 100
        Rectangle {
            color: "red"
            x: 25; y: 25; width: 50; height: 50
            rotation: 30
        }
    }

    //transform: Rotation
    Rectangle {
        x:300; y:5;

        width: 100; height: 100
        color: "blue"
        transform: Rotation { origin.x: 30; origin.y: 30; axis { x: 0; y: 1; z: 0 } angle: 72 }
    }

    //transform: Scale
    Rectangle {
         x:400; y:5;

        width: 100; height: 100
        color: "blue"
        Rectangle {
            width: 50; height: 50; x: 20; y: 20
            color: "red"
            transform: Scale { origin.x: 25; origin.y: 25; xScale: 3}
        }
    }



    Row {
        x:0; y:200;

        Rectangle {
            width: 100; height: 100
            color: "blue"
            transform: Translate { y: 20 }
        }
        Rectangle {
            width: 100; height: 100
            color: "red"
            transform: Translate { y: -20 }
        }
    }


}
