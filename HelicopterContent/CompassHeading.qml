import QtQuick
import QtQuick.Controls

ScrollView {
    id: compassHeading
    y: 51
    width: 390
    height: 64
    focusPolicy: Qt.NoFocus
    hoverEnabled: true
    wheelEnabled: true
    anchors.horizontalCenter: parent.horizontalCenter

    Component.onCompleted: {
        compassHeading.contentItem.contentX = compassIndicator.x - 300;
    }

    ScrollBar.horizontal: ScrollBar {
        opacity: 0
    }

    Image {
        id: degrees
        opacity: 0.5
        anchors.verticalCenter: parent.verticalCenter
        source: "images/degrees.png"
        fillMode: Image.PreserveAspectFit

        Image {
            id: compassIndicator
            x: 25990
            y: 15
            opacity: 1
            source: "images/compassIndicator.png"
            scale: 0.3
            fillMode: Image.PreserveAspectFit
        }
    }
}
