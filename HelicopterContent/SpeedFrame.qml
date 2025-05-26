import QtQuick
import QtQuick.Controls

Flickable {
    id: speedFrame
    width: 150
    height: 165

    function formatNumber(num) {
        num = num >= 0 ? num : 0
        num = num <= 220 ? num : 220
        var rounded = Number(num).toFixed(1);
        var parts = rounded.split('.');
        var integerPart = parts[0];
        var decimalPart = parts[1];

        while (integerPart.length < 3) {
            integerPart = "0" + integerPart;
        }

        return integerPart + "." + decimalPart;
    }

    ScrollView {
        id: speedDegrees
        anchors.fill: parent
        anchors.rightMargin: -16
        contentHeight: 2265
        focusPolicy: Qt.NoFocus
        hoverEnabled: true
        wheelEnabled: true

        Component.onCompleted: {
            speedDegrees.contentItem.contentY = speedIndicator.y + 1875;
        }

        ScrollBar.vertical: ScrollBar {
            opacity: 0
        }

        Image {
            id: speed
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: -87
            source: "images/speed.png"
            scale: 0.5
            fillMode: Image.PreserveAspectFit
        }
    }

    Image {
        id: speedIndicator
        opacity: 1
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 5
        source: "images/speedIndicator.png"
        scale: 0.5
        fillMode: Image.PreserveAspectFit

        TextInput {
            id: textInput
            width: 80
            height: 42
            color: "#ffff00"
            text: formatNumber(22 *(10 - speedDegrees.contentItem.contentY / 210))
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 15
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
