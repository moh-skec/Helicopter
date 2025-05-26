import QtQuick
import QtQuick.Controls

Flickable {
    id: altitudeFrame
    width: 150
    height: 150

    function formatNumber(num) {
        num = num >= 0 ? num : 0
        num = num <= 100 ? num : 100
        return ("0000" + num).slice(-4);
    }

    ScrollView {
        id: altitudeDegrees
        anchors.fill: parent
        contentHeight: 650
        focusPolicy: Qt.NoFocus
        hoverEnabled: true
        wheelEnabled: true

        Component.onCompleted: {
            altitudeDegrees.contentItem.contentY = altitudeIndicator.y + 161;
        }

        ScrollBar.vertical: ScrollBar {
            opacity: 0
        }

        Image {
            id: altitude
            x: -24
            anchors.verticalCenter: parent.verticalCenter
            source: "images/altitude.png"
            anchors.verticalCenterOffset: 0
            scale: 0.5
            fillMode: Image.PreserveAspectFit
        }
    }

    Image {
        id: altitudeIndicator
        opacity: 1
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
        source: "images/altitudeIndicator.png"
        scale: 0.5
        fillMode: Image.PreserveAspectFit

        TextInput {
            id: textInput
            x: 69
            width: 80
            height: 42
            color: "#ffff00"
            text: formatNumber(-Math.floor(altitudeDegrees.contentItem.contentY / 5) + 100)
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 15
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
