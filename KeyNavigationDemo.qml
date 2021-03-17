import QtQuick 2.0

//Key-based user interfaces commonly allow the use of arrow keys to
//navigate between focusable items.
//The KeyNavigation attached property enables this behavior
//by providing a convenient way to specify the item that should
// gain focus when an arrow or tab key is pressed.
// key navigation for a 2x2 grid of items:
Grid {
    width: 100; height: 100
    columns: 2

    Rectangle {
        id: topLeft
        width: 50; height: 50
        color: focus ? "red" : "lightgray"
        focus: true

        KeyNavigation.right: topRight
        KeyNavigation.down: bottomLeft
    }

    Rectangle {
        id: topRight
        width: 50; height: 50
        color: focus ? "red" : "lightgray"

        KeyNavigation.left: topLeft
        KeyNavigation.down: bottomRight
    }

    Rectangle {
        id: bottomLeft
        width: 50; height: 50
        color: focus ? "red" : "lightgray"

        KeyNavigation.right: bottomRight
        KeyNavigation.up: topLeft
    }

    Rectangle {
        id: bottomRight
        width: 50; height: 50
        color: focus ? "red" : "lightgray"

        KeyNavigation.left: bottomLeft
        KeyNavigation.up: topRight
    }
}
