import QtQuick 2.15
import QtQuick.Controls 2.15

Label {
    id: gForce
    color: "#ffff00"
    text: qsTr("0.4")
    font.pixelSize: 15

    property real gForceValue: 0.4  // Store the numeric value

    // Update text whenever gForceValue changes
    onGForceValueChanged: text = qsTr(gForceValue.toFixed(1))

    Keys.onPressed: (event) => {
        if (event.key === Qt.Key_PageUp) {
            gForceValue = Math.min(8.0, gForceValue + 0.1);  // Increase up to 8.0
        } else if (event.key === Qt.Key_PageDown) {
            gForceValue = Math.max(0.0, gForceValue - 0.1);  // Decrease down to 0.0
        }
    }

    MouseArea {
        anchors.fill: parent
        focus: true  // Enable focus to capture key events
        onClicked: parent.forceActiveFocus()
    }
}

