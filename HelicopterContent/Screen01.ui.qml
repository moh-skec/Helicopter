

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick3D
import QtQuick3D.Effects
import Helicopter
import Generated.QtQuick3D.Attack_helicopter_concept
import Generated.QtQuick3D.Road
import Generated.QtQuick3D.Tron_chopper_sketchfab
import QtQuick.Timeline 1.0
import QtQuick3D.Particles3D 6.7

Rectangle {
    id: rectangle
    width: mainWindow.width
    height: mainWindow.height
    opacity: 1
    color: "#000000"
    property alias hudOpeningProperty: hudOpening.property
    clip: false
    enabled: true

    // Loader for the new window
    View3D {
        id: view3D
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: -8
        anchors.bottomMargin: 8
        enabled: true

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            aoEnabled: true
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                visible: true
                castsShadow: true
                id: directionalLight
                x: 30
                y: 512
                brightness: 1
                eulerRotation.z: -120
                eulerRotation.y: 90
                eulerRotation.x: -30
                z: 0
            }

            DirectionalLight {
                visible: true
                color: "#ffffff"
                castsShadow: true
                scope: scene
                ambientColor: "#ffffff"
                id: directionalLight1
                x: 458.913
                y: 480.622
                eulerRotation.z: 0
                eulerRotation.y: 127
                eulerRotation.x: -22
                z: -565.91235
            }

            PerspectiveCamera {
                id: sceneCamera
                x: 512
                y: 512
                eulerRotation.z: 0
                eulerRotation.y: 127
                eulerRotation.x: -22.5
                z: -600
            }

            Attack_helicopter_concept {
                id: attack_helicopter_concept
                y: 0
                visible: true
                // eulerRotation.y: eulerRotation.y + (timeline.currentFrame + 1)
                //                  / (timeline.currentFrame + 1) / 8
            }

            Fog {
                id: fog
                transmitEnabled: true
                heightEnabled: true
                enabled: true
                depthEnabled: true
            }
        }

        RoundButton {
            id: hudBtn
            x: 1636
            y: 121
            width: 115
            height: 40
            text: qsTr("HUD")
            checkable: true
        }

        RoundButton {
            id: settings
            x: hudBtn.x
            y: hudBtn.y + 60
            width: hudBtn.width
            height: hudBtn.height
            text: qsTr("SETTINGS")
            checkable: true
            checked: checked & !settingsWindow.Windowed
        }

        Item {
            id: _hud_item
            clip: true
            width: (parent.width / 1.62)
                   * (1 - nxtPgBtn.checked * ((timeline.currentFrame - 1) / timeline.endFrame)
                      - (prvPgBtn.focus & prvPgBtn.checked)
                      * (1 - (timeline.currentFrame + 1) / timeline.endFrame))
            height: parent.height / 1.62
            visible: !nxtPgBtn.checked || hudBtn.checked
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: (parent.width - hudFlick.width) / 2

            Flickable {
                id: hudFlick
                x: (view3D.width - width) / 2 - parent.anchors.leftMargin
                width: view3D.width / 1.62
                height: view3D.height / 1.62
                anchors.verticalCenter: parent.verticalCenter

                scale: (hudBtn.checked & hudBtn.focus) * (timeline.currentFrame / timeline.endFrame)
                       + (hudBtn.checked & !hudBtn.focus) + (!hudBtn.checked & hudBtn.focus)
                       * (1 - timeline.currentFrame / timeline.endFrame)

                Rectangle {
                    anchors.fill: parent
                    id: hudRect
                    x: 367
                    y: 207
                    opacity: 0.62
                    visible: true
                    enabled: hudBtn.checked
                    color: "#626262"
                    radius: 15
                }

                Image {
                    id: helicopter
                    x: 893
                    y: 45
                    width: 67
                    height: 57
                    source: "images/helicopter.png"
                    scale: 0.8
                    fillMode: Image.PreserveAspectFit
                }

                Label {
                    id: helicopterNum
                    x: 959
                    y: 61
                    width: 29
                    height: 28
                    color: "#ffff00"
                    text: qsTr("x 5")
                    font.pixelSize: 15
                    font.styleName: "Regular"
                }

                Label {
                    id: ecm
                    x: 900
                    y: 95
                    width: 110
                    height: 20
                    color: "#ffff00"
                    text: qsTr("ECM - OFF")
                    font.pixelSize: 15
                }

                Image {
                    id: midst
                    x: 469
                    y: 100
                    source: "images/midst.png"
                    anchors.horizontalCenterOffset: 0
                    scale: 0.5
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                }

                CompassHeading {}

                AltitudeFrame {
                    id: altitudeFrame
                    x: passChksum.x + passChksum.width / 2
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: 0
                }
                SpeedFrame {
                    id: speedFrame
                    x: ecm.x + ecm.width / 2 - width - 10
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.verticalCenterOffset: 0
                }

                Label {
                    id: passChksum
                    x: parent.width - (ecm.x + ecm.width)
                    y: ecm.y
                    visible: _chksum_set_switch.checked
                    color: "#ffff00"
                    text: qsTr("CHKSUM - PASS")
                    font.pixelSize: 15
                }

                Label {
                    id: failChksum
                    x: passChksum.x + passChksum.width - width
                    y: ecm.y
                    visible: !passChksum.visible
                    color: "#ff0000"
                    text: qsTr("CHKSUM - FAIL")
                    font.pixelSize: 15
                }

                Label {
                    id: plus
                    color: "#ffff00"
                    text: qsTr("+")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.top: parent.verticalCenter
                    anchors.topMargin: -333
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 15
                }

                Label {
                    id: io
                    x: passChksum.x
                    y: passChksum.y + 20
                    width: 110
                    height: 25
                    color: "#ffff00"
                    text: qsTr("IO - NORMAL")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignRight
                }

                GForce {
                    x: altitudeFrame.x + 25
                    y: altitudeFrame.y - 60
                    text: qsTr(gForceValue.toFixed(1))
                }

                Label {
                    x: altitudeFrame.x + 45
                    y: altitudeFrame.y - 60
                    width: 110
                    color: "#ffff00"
                    text: qsTr("g")
                    font.pixelSize: 15
                }

                Label {
                    id: enginePower
                    font.pixelSize: 15
                    text: qsTr(enginePowerSetSpinBox.value + "%")
                    color: "#ffff00"
                    x: altitudeFrame.x + 25
                    y: altitudeFrame.y - 40
                }

                Label {
                    id: gun
                    x: io.x
                    y: altitudeFrame.y + altitudeFrame.height + 40
                    width: 110
                    height: 20
                    color: "#ffff00"
                    text: qsTr("GUN - 00")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignRight
                }

                Label {
                    id: msl
                    x: gun.x
                    y: gun.y + 20
                    width: 110
                    height: 20
                    color: "#ffff00"
                    text: qsTr("MSL - 10")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignRight
                }

                Label {
                    id: flare
                    x: msl.x
                    y: msl.y + 40
                    width: 110
                    height: 20
                    color: "#ffff00"
                    text: qsTr("FLARE - 05")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignRight
                }

                Label {
                    id: chaff
                    x: flare.x
                    y: flare.y + 20
                    width: 110
                    height: 20
                    color: "#ffff00"
                    text: qsTr("CHAFF - 05")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignRight
                }

                Label {
                    id: cpu
                    x: ecm.x
                    y: msl.y
                    width: 110
                    height: 20
                    color: "#ffff00"
                    text: qsTr("CPU - 05%")
                    font.pixelSize: 15
                }

                Label {
                    id: ram
                    x: ecm.x
                    y: chaff.y
                    width: 110
                    height: 20
                    color: "#ffff00"
                    text: qsTr("RAM - 05%")
                    font.pixelSize: 15
                    styleColor: "#ffff00"
                }

                Image {
                    id: weapenIndicator
                    x: gun.x
                    y: gun.y
                    source: "images/weapenIndicator.png"
                    scale: 0.7
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        Item {
            id: _nxt_pg_item
            width: parent.width / 1.62
            height: parent.height / 1.62
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            scale: hudFlick.scale

            Flickable {
                id: nxtPgFlick
                x: 0
                height: hudFlick.height
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 0
                clip: true
                width: hudFlick.width * ((hudBtn.checked & !hudBtn.focus & nxtPgBtn.checked) * (timeline.currentFrame / timeline.endFrame) + (hudBtn.checked & hudBtn.focus & nxtPgBtn.checked)
                                         + (!hudBtn.checked & nxtPgBtn.checked)
                                         + (prvPgBtn.focus & prvPgBtn.checked)
                                         * (1 - timeline.currentFrame / timeline.endFrame))

                Rectangle {
                    id: nxtPgRect
                    x: 0
                    y: 0
                    opacity: 0.62
                    visible: true
                    color: "#626262"
                    radius: 15
                    anchors.fill: parent
                    clip: true
                    enabled: hudBtn.checked
                }

                Image {
                    id: tmpDegrees
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/tmpDegrees.png"
                    anchors.horizontalCenter: parent.horizontalCenter

                    Image {
                        id: inTmpLine
                        height: 500 * (inTempSetSpinBox.value + 20) / 100
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: -10
                        anchors.bottomMargin: 8
                        source: "images/tmpLine.png"
                    }

                    Image {
                        id: outTmpLine
                        height: 500 * (outTempSetSpinBox.value + 20) / 100
                        anchors.left: parent.right
                        anchors.bottom: parent.bottom
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 8
                        source: "images/tmpLine.png"
                    }
                }

                Label {
                    id: goodCamera
                    x: io.x
                    y: io.y + 20
                    visible: cameraSetComboBox.currentIndex === 0
                    color: "#ffff00"
                    text: qsTr("CAMERA - GOOD")
                }

                Label {
                    id: warningCamera
                    x: goodCamera.x
                    y: goodCamera.y
                    visible: cameraSetComboBox.currentIndex === 1
                    color: "#ff7700"
                    text: qsTr("CAMERA - WARNING")
                }

                Label {
                    id: errorCamera
                    x: goodCamera.x
                    y: goodCamera.y
                    color: "#ff0000"
                    visible: cameraSetComboBox.currentIndex === 2
                    text: qsTr("CAMERA - ERROR")
                }

                Image {
                    id: onLamp
                    x: 90
                    y: 392
                    visible: _lamp_set_switch.checked
                    source: "images/onLamp.png"
                    scale: 0.1
                }

                Image {
                    id: offLamp
                    x: 90
                    y: 392
                    visible: !onLamp.visible
                    source: "images/offLamp.png"
                    scale: 0.1
                }

                Image {
                    id: fuelGauge
                    y: 494
                    anchors.left: parent.left
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: goodCamera.x
                    anchors.bottomMargin: goodCamera.y
                    source: "images/fuelGauge.png"

                    Image {
                        id: fuelNeedle
                        x: 60
                        y: 45
                        source: "images/fuelNeedle.png"
                        rotation: -24 * fuelSetSpinBox.value / 16 + 93.6
                    }
                }

                Image {
                    id: mainRotor
                    x: goodCamera.x
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/MainRotor"
                    scale: 0.3

                    AnimatedImage {
                        id: fastestRotor
                        visible: speedRotorSetComboBox.currentIndex === 0
                        anchors.fill: parent
                        anchors.leftMargin: -150
                        anchors.rightMargin: -150
                        anchors.topMargin: -150
                        anchors.bottomMargin: -150
                        source: "images/fastestRotor.gif"
                        fillMode: Image.PreserveAspectFit
                    }

                    AnimatedImage {
                        id: fastRotor
                        visible: speedRotorSetComboBox.currentIndex === 1
                        anchors.fill: parent
                        anchors.leftMargin: -150
                        anchors.rightMargin: -150
                        anchors.topMargin: -150
                        anchors.bottomMargin: -150
                        source: "images/fastRotor.gif"
                        fillMode: Image.PreserveAspectFit
                    }

                    AnimatedImage {
                        id: mediumRotor
                        visible: speedRotorSetComboBox.currentIndex === 2
                        anchors.fill: parent
                        anchors.leftMargin: -150
                        anchors.rightMargin: -150
                        anchors.topMargin: -150
                        anchors.bottomMargin: -150
                        source: "images/mediumRotor.gif"
                        fillMode: Image.PreserveAspectFit
                    }

                    AnimatedImage {
                        id: slowRotor
                        visible: speedRotorSetComboBox.currentIndex === 3
                        anchors.fill: parent
                        anchors.leftMargin: -150
                        anchors.rightMargin: -150
                        anchors.topMargin: -150
                        anchors.bottomMargin: -150
                        source: "images/slowRotor.gif"
                        fillMode: Image.PreserveAspectFit
                    }

                    AnimatedImage {
                        id: slowestRotor
                        visible: speedRotorSetComboBox.currentIndex === 4
                        anchors.fill: parent
                        anchors.leftMargin: -150
                        anchors.rightMargin: -150
                        anchors.topMargin: -150
                        anchors.bottomMargin: -150
                        source: "images/slowestRotor.gif"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Label {
                    id: strongRadio
                    x: goodCamera.x
                    y: goodCamera.y + 20
                    visible: radioSetComboBox.currentIndex === 0
                    color: "#00ff00"
                    text: qsTr("RADIO - STRONG")
                }

                Label {
                    id: goodRadio
                    x: strongRadio.x
                    y: strongRadio.y
                    color: "#ffff00"
                    visible: radioSetComboBox.currentIndex === 1
                    text: qsTr("RADIO - GOOD")
                }

                Label {
                    id: weakRadio
                    x: strongRadio.x
                    y: strongRadio.y
                    color: "#ff0000"
                    visible: radioSetComboBox.currentIndex === 2
                    text: qsTr("RADIO - WEAK")
                }

                Text {
                    id: description
                    x: 705
                    width: 320
                    height: 172
                    color: "#ffff00"
                    text: setDescription.text
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                    font.italic: false
                }
            }

            RoundButton {
                id: nxtPgBtn
                y: 294
                width: 18
                height: 72
                opacity: 0.62
                visible: !prvPgBtn.visible & hudFlick.scale
                text: "\u27e8"
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: 5
                z: 1
                topInset: 6
                rightInset: 0
                icon.color: "#ffff00"
                highlighted: true
                font.styleName: "Regular"
                font.pointSize: 15
                flat: false
                display: AbstractButton.TextBesideIcon
                checkable: true
                bottomPadding: 6
                bottomInset: 0
                autoExclusive: true
                anchors.verticalCenterOffset: -3
            }

            RoundButton {
                id: prvPgBtn
                x: 1190
                y: 294
                width: 18
                height: 72
                opacity: 0.62
                visible: nxtPgFlick.width
                text: "\u27e9"
                anchors.verticalCenter: nxtPgFlick.verticalCenter
                anchors.left: nxtPgFlick.left
                anchors.leftMargin: 5
                checked: true
                z: 1
                topInset: 6
                rightInset: 0
                icon.color: "#ffff00"
                highlighted: false
                font.styleName: "Regular"
                font.pointSize: 15
                flat: false
                display: AbstractButton.TextBesideIcon
                checkable: true
                bottomPadding: 6
                bottomInset: 0
                autoExclusive: true
                anchors.verticalCenterOffset: -3
            }
        }
    }

    Item {
        id: __materialLibrary__
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: hudOpening
                running: hudBtn.checked
                loops: 1
                duration: 100
                to: 100
                from: 0
            },

            TimelineAnimation {
                id: hudClosing
                running: !hudBtn.checked
                loops: 1
                duration: 100
                to: 100
                from: 0
            },

            TimelineAnimation {
                id: nxtPgOpening
                running: nxtPgBtn.checked
                loops: 1
                duration: 100
                to: 100
                from: 0
            },

            TimelineAnimation {
                id: nxtPgClosing
                running: !nxtPgBtn.checked
                loops: 1
                duration: 100
                to: 100
                from: 0.
            }
        ]
        startFrame: 0
        endFrame: 100
        enabled: true
    }

    states: [
        State {
            name: "State1"

            PropertyChanges {
                target: hudRect
                visible: false
                color: "#000000"
                radius: 15
                smooth: true
            }
        }
    ]

    Window {
        id: settingsWindow
        width: 590
        height: 660
        opacity: 0.9

        color: "#000000"
        flags: Qt.SubWindow
        visible: settings.checked
        title: "Settings"

        Label {
            x: 5
            id: fuelSetLabel
            text: qsTr("FUEL")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            color: "#ffff00"
        }

        SpinBox {
            x: speedRotorSetComboBox.x
            y: fuelSetLabel.y
            opacity: 0.7
            value: 60
            to: 80
            id: fuelSetSpinBox
            editable: true
        }

        Label {
            id: enginePowerSetLabel
            x: fuelSetLabel.x
            y: fuelSetLabel.y + 50
            text: qsTr("ENGINE POWER")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            color: "#ffff00"
        }

        SpinBox {
            x: speedRotorSetComboBox.x
            y: enginePowerSetLabel.y
            opacity: 0.7
            value: 35
            to: 100
            from: 0
            id: enginePowerSetSpinBox
            editable: true
        }

        Label {
            id: inTmpSetLabel
            x: fuelSetLabel.x
            y: enginePowerSetLabel.y + 50
            text: qsTr("INDOOR TEMP")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            color: "#ffff00"
        }

        SpinBox {
            x: speedRotorSetComboBox.x
            y: inTmpSetLabel.y
            opacity: 0.7
            value: 25
            to: 80
            from: -20
            id: inTempSetSpinBox
            editable: true
        }

        Label {
            id: outTmpSetLabel
            x: fuelSetLabel.x
            y: inTmpSetLabel.y + 50
            text: qsTr("OUTSIDE TEMP")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            color: "#ffff00"
        }

        SpinBox {
            x: speedRotorSetComboBox.x
            y: outTmpSetLabel.y
            opacity: 0.7
            value: 5
            to: 80
            from: -20
            id: outTempSetSpinBox
            editable: true
        }

        Label {
            id: lampSetLabel
            x: fuelSetLabel.x
            y: outTmpSetLabel.y + 50
            text: qsTr("LAMP")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            color: "#ffff00"
        }

        Switch {
            x: speedRotorSetComboBox.x
            y: lampSetLabel.y
            id: _lamp_set_switch
        }

        Label {
            id: chksumSetLabel
            x: fuelSetLabel.x
            y: lampSetLabel.y + 50
            text: qsTr("CHKSUM")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            color: "#ffff00"
        }

        Switch {
            x: speedRotorSetComboBox.x
            y: chksumSetLabel.y
            id: _chksum_set_switch
            opacity: 0.7
            checked: true
        }

        Label {
            id: cameraSetLabel
            x: fuelSetLabel.x
            y: chksumSetLabel.y + 50
            text: qsTr("FIXED CAMERA")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            color: "#ffff00"
        }

        ComboBox {
            id: cameraSetComboBox
            x: speedRotorSetComboBox.x
            y: cameraSetLabel.y
            model: ["GOOD", "WARNING", "ERROR"]
            opacity: 0.7
        }

        Label {
            id: radioSetLabel
            x: fuelSetLabel.x
            y: cameraSetLabel.y + 50
            text: qsTr("RADIO")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            color: "#ffff00"
        }

        ComboBox {
            id: radioSetComboBox
            x: speedRotorSetComboBox.x
            y: radioSetLabel.y
            model: ["STRONG", "GOOD", "WEAK"]
            opacity: 0.7
        }

        Label {
            id: speedRotorSetLabel
            x: fuelSetLabel.x
            y: radioSetLabel.y + 50
            text: qsTr("MAIN ROTOR SPEED")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            color: "#ffff00"
        }

        ComboBox {
            id: speedRotorSetComboBox
            x: speedRotorSetLabel.x + speedRotorSetLabel.width + 5
            y: speedRotorSetLabel.y
            model: ["FASTEST", "FAST", "MEDIUM", "SLOW", "SLOWEST"]
            opacity: 0.7
        }

        Label {
            id: descriptionLabel
            x: fuelSetLabel.x
            y: speedRotorSetLabel.y + 50
            text: qsTr("DESCRIPTION")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 16
            color: "#ffff00"
        }

        TextEdit {
            id: setDescription
            x: speedRotorSetComboBox.x
            y: descriptionLabel.y
            width: 320
            height: 172
            color: "#ffff00"
            text: "The AH-64 Apache, manufactured by Boeing in 1984, is a versatile attack helicopter designed for combat superiority. It boasts a maximum altitude of 100k feet and can withstand wind speeds up to 220 knots. Equipped with advanced avionics and weaponry, the Apache remains a formidable force in modern warfare."
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.italic: false
        }
    }
}

/*##^##
Designer {
    D{i:0}D{i:3;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/

