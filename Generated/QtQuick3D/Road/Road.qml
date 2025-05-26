import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    scale.x: 100
    scale.y: 100
    scale.z: 100

    // Resources
    PrincipledMaterial {
        id: landscape_black_material
        objectName: "landscape_black"
        baseColor: "#ff000000"
        roughness: 0.019999999552965164
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
        indexOfRefraction: 1000
    }
    PrincipledMaterial {
        id: landscape_blue_material
        objectName: "landscape_blue"
        baseColor: "#ff81d3cf"
        roughness: 0.6000000238418579
        emissiveFactor.x: 0
        emissiveFactor.y: 1
        emissiveFactor.z: 1
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
        indexOfRefraction: 1000
    }

    // Nodes:
    Node {
        id: sketchfab_model
        objectName: "Sketchfab_model"
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        scale.x: 0.05
        scale.y: 0.05
        scale.z: 0.05
        Node {
            id: node1a119acdb01b4da285ad18e4813af83f_fbx
            objectName: "1a119acdb01b4da285ad18e4813af83f.fbx"
            rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            Node {
                id: object_2
                objectName: "Object_2"
                Node {
                    id: rootNode
                    objectName: "RootNode"
                    Node {
                        id: box005
                        objectName: "Box005"
                        x: 81.03144836425781
                        y: 26.54524040222168
                        z: -145.6929931640625
                        rotation: Qt.quaternion(0.690345, -0.690346, -0.153046, 0.153046)
                        scale.x: 0.0560737
                        scale.y: 0.0560737
                        scale.z: 0.0560737
                        Node {
                            id: object_35
                            objectName: "Object_35"
                            x: -83.57804107666016
                            y: 555.0578002929688
                            z: 3.4997938200831413e-06
                            Model {
                                id: box005_landscape_black_0
                                objectName: "Box005_landscape_black_0"
                                x: 8.48270719870925e-05
                                y: 0.00017634296091273427
                                z: -4.227657336741686e-05
                                source: "meshes/box005_landscape_black_0_mesh.mesh"
                                materials: [
                                    landscape_black_material
                                ]
                            }
                            Model {
                                id: box005_landscape_blue_0
                                objectName: "Box005_landscape_blue_0"
                                x: 8.48270719870925e-05
                                y: 0.00017634296091273427
                                z: -4.227657336741686e-05
                                source: "meshes/box005_landscape_blue_0_mesh.mesh"
                                materials: [
                                    landscape_blue_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: box006
                        objectName: "Box006"
                        x: -80.98973083496094
                        y: 26.54524040222168
                        z: -145.6929931640625
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        Model {
                            id: box006_landscape_black_0
                            objectName: "Box006_landscape_black_0"
                            x: 1.0214979738520924e-05
                            y: -1.9923470972571522e-05
                            source: "meshes/box006_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: box006_landscape_blue_0
                            objectName: "Box006_landscape_blue_0"
                            x: 1.0214979738520924e-05
                            y: -1.9923470972571522e-05
                            source: "meshes/box006_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: box007
                        objectName: "Box007"
                        x: 81.03144836425781
                        y: 26.54524040222168
                        z: -44.1577033996582
                        rotation: Qt.quaternion(0.690345, -0.690346, -0.153046, 0.153046)
                        scale.x: 0.0560737
                        scale.y: 0.0560737
                        scale.z: 0.0560737
                        Node {
                            id: object_46
                            objectName: "Object_46"
                            x: -83.57811737060547
                            y: 555.057861328125
                            z: -1.860008342191577e-05
                            Model {
                                id: box007_landscape_black_0
                                objectName: "Box007_landscape_black_0"
                                x: -0.00011800118954852223
                                y: -6.779766408726573e-05
                                z: -1.860008342191577e-05
                                source: "meshes/box007_landscape_black_0_mesh.mesh"
                                materials: [
                                    landscape_black_material
                                ]
                            }
                            Model {
                                id: box007_landscape_blue_0
                                objectName: "Box007_landscape_blue_0"
                                x: -0.00011800118954852223
                                y: -6.779766408726573e-05
                                z: -1.860008342191577e-05
                                source: "meshes/box007_landscape_blue_0_mesh.mesh"
                                materials: [
                                    landscape_blue_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: box008
                        objectName: "Box008"
                        x: 81.03144836425781
                        y: 26.54524040222168
                        z: 57.377593994140625
                        rotation: Qt.quaternion(0.690345, -0.690346, -0.153046, 0.153046)
                        scale.x: 0.0560737
                        scale.y: 0.0560737
                        scale.z: 0.0560737
                        Node {
                            id: object_50
                            objectName: "Object_50"
                            x: -83.57807922363281
                            y: 555.0579833984375
                            z: -4.069996066391468e-05
                            Model {
                                id: box008_landscape_black_0
                                objectName: "Box008_landscape_black_0"
                                x: 0.00016745181346777827
                                y: -3.728008960024454e-05
                                z: 5.076404704595916e-06
                                source: "meshes/box008_landscape_black_0_mesh.mesh"
                                materials: [
                                    landscape_black_material
                                ]
                            }
                            Model {
                                id: box008_landscape_blue_0
                                objectName: "Box008_landscape_blue_0"
                                x: 0.00016745181346777827
                                y: -3.728008960024454e-05
                                z: 5.076404704595916e-06
                                source: "meshes/box008_landscape_blue_0_mesh.mesh"
                                materials: [
                                    landscape_blue_material
                                ]
                            }
                        }
                    }
                    Node {
                        id: box009
                        objectName: "Box009"
                        x: -80.89035034179688
                        y: 26.54524040222168
                        z: -44.1577033996582
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        Model {
                            id: box009_landscape_black_0
                            objectName: "Box009_landscape_black_0"
                            y: -4.6820587158435956e-06
                            source: "meshes/box009_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: box009_landscape_blue_0
                            objectName: "Box009_landscape_blue_0"
                            y: -4.6820587158435956e-06
                            source: "meshes/box009_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: box010
                        objectName: "Box010"
                        x: -80.95397186279297
                        y: 26.54524040222168
                        z: 57.377593994140625
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        Model {
                            id: box010_landscape_black_0
                            objectName: "Box010_landscape_black_0"
                            x: 5.226571829552995e-06
                            y: 2.958459845103789e-06
                            source: "meshes/box010_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: box010_landscape_blue_0
                            objectName: "Box010_landscape_blue_0"
                            x: 5.226571829552995e-06
                            y: 2.958459845103789e-06
                            source: "meshes/box010_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: cylinder005
                        objectName: "Cylinder005"
                        x: -43.34544372558594
                        y: 7.674042224884033
                        z: -153.9219970703125
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder005_landscape_black_0
                            objectName: "Cylinder005_landscape_black_0"
                            y: 0.00011361543147359043
                            scale.x: 1
                            scale.y: 0.999997
                            scale.z: 1
                            source: "meshes/cylinder005_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: cylinder005_landscape_blue_0
                            objectName: "Cylinder005_landscape_blue_0"
                            y: 0.00011361543147359043
                            source: "meshes/cylinder005_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: cylinder006
                        objectName: "Cylinder006"
                        x: -43.34544372558594
                        y: 7.674042224884033
                        z: 103.52645874023438
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder006_landscape_black_0
                            objectName: "Cylinder006_landscape_black_0"
                            y: -8.454883754893672e-06
                            source: "meshes/cylinder006_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: cylinder006_landscape_blue_0
                            objectName: "Cylinder006_landscape_blue_0"
                            y: -8.454883754893672e-06
                            source: "meshes/cylinder006_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: cylinder007
                        objectName: "Cylinder007"
                        x: -43.34544372558594
                        y: 7.674042224884033
                        z: 39.16435241699219
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder007_landscape_black_0
                            objectName: "Cylinder007_landscape_black_0"
                            y: -8.454883754893672e-06
                            z: 2.6270026864949614e-06
                            source: "meshes/cylinder007_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: cylinder007_landscape_blue_0
                            objectName: "Cylinder007_landscape_blue_0"
                            y: -8.454883754893672e-06
                            z: 2.6270026864949614e-06
                            source: "meshes/cylinder007_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: cylinder008
                        objectName: "Cylinder008"
                        x: -43.34544372558594
                        y: 7.674042224884033
                        z: -25.197771072387695
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder008_landscape_black_0
                            objectName: "Cylinder008_landscape_black_0"
                            y: 6.803905307606328e-06
                            source: "meshes/cylinder008_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: cylinder008_landscape_blue_0
                            objectName: "Cylinder008_landscape_blue_0"
                            y: 6.803905307606328e-06
                            source: "meshes/cylinder008_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: cylinder009
                        objectName: "Cylinder009"
                        x: -43.34544372558594
                        y: 7.674042224884033
                        z: -89.55988311767578
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder009_landscape_black_0
                            objectName: "Cylinder009_landscape_black_0"
                            y: -6.949003727640957e-05
                            z: 3.305256541352719e-06
                            source: "meshes/cylinder009_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: cylinder009_landscape_blue_0
                            objectName: "Cylinder009_landscape_blue_0"
                            y: -6.949003727640957e-05
                            z: 3.305256541352719e-06
                            source: "meshes/cylinder009_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: cylinder010
                        objectName: "Cylinder010"
                        x: 43.77872085571289
                        y: 7.674042224884033
                        z: -25.197771072387695
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder010_landscape_black_0
                            objectName: "Cylinder010_landscape_black_0"
                            x: -3.0517578125e-05
                            y: 6.803905307606328e-06
                            source: "meshes/cylinder010_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: cylinder010_landscape_blue_0
                            objectName: "Cylinder010_landscape_blue_0"
                            x: -3.0517578125e-05
                            y: 6.803905307606328e-06
                            source: "meshes/cylinder010_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: cylinder011
                        objectName: "Cylinder011"
                        x: 43.77872085571289
                        y: 7.674042224884033
                        z: -89.55988311767578
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder011_landscape_black_0
                            objectName: "Cylinder011_landscape_black_0"
                            x: -3.0517578125e-05
                            y: -6.949003727640957e-05
                            z: 3.305256541352719e-06
                            source: "meshes/cylinder011_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: cylinder011_landscape_blue_0
                            objectName: "Cylinder011_landscape_blue_0"
                            x: -3.0517578125e-05
                            y: -6.949003727640957e-05
                            z: 3.305256541352719e-06
                            source: "meshes/cylinder011_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: cylinder012
                        objectName: "Cylinder012"
                        x: 43.77872085571289
                        y: 7.674042224884033
                        z: 103.52645874023438
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder012_landscape_black_0
                            objectName: "Cylinder012_landscape_black_0"
                            x: -3.0517578125e-05
                            y: -8.454883754893672e-06
                            source: "meshes/cylinder012_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: cylinder012_landscape_blue_0
                            objectName: "Cylinder012_landscape_blue_0"
                            x: -3.0517578125e-05
                            y: -8.454883754893672e-06
                            source: "meshes/cylinder012_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: cylinder013
                        objectName: "Cylinder013"
                        x: 43.77872085571289
                        y: 7.674042224884033
                        z: 39.16435241699219
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder013_landscape_black_0
                            objectName: "Cylinder013_landscape_black_0"
                            x: -3.0517578125e-05
                            y: -8.454883754893672e-06
                            z: 2.6270026864949614e-06
                            source: "meshes/cylinder013_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: cylinder013_landscape_blue_0
                            objectName: "Cylinder013_landscape_blue_0"
                            x: -3.0517578125e-05
                            y: -8.454883754893672e-06
                            z: 2.6270026864949614e-06
                            source: "meshes/cylinder013_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: cylinder014
                        objectName: "Cylinder014"
                        x: 43.77872085571289
                        y: 7.674042224884033
                        z: -153.9219970703125
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder014_landscape_black_0
                            objectName: "Cylinder014_landscape_black_0"
                            x: -3.0517578125e-05
                            y: 0.00011361543147359043
                            source: "meshes/cylinder014_landscape_black_0_mesh.mesh"
                            materials: [
                                landscape_black_material
                            ]
                        }
                        Model {
                            id: cylinder014_landscape_blue_0
                            objectName: "Cylinder014_landscape_blue_0"
                            x: -3.0517578125e-05
                            y: 0.00011361543147359043
                            source: "meshes/cylinder014_landscape_blue_0_mesh.mesh"
                            materials: [
                                landscape_blue_material
                            ]
                        }
                    }
                    Node {
                        id: plane053
                        objectName: "Plane053"
                        x: -0.101165771484375
                        y: 18.283599853515625
                        z: 3.277975082397461
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.140358
                        scale.y: 0.140358
                        scale.z: 0.140358
                        Node {
                            id: object_39
                            objectName: "Object_39"
                            x: -455.1008605957031
                            y: -5.000003337860107
                            z: -75.58954620361328
                            Model {
                                id: plane053_landscape_black_0
                                objectName: "Plane053_landscape_black_0"
                                x: 3.0517578125e-05
                                z: 3.819716766884085e-06
                                scale.x: 1
                                scale.y: 0.954192
                                scale.z: 1
                                source: "meshes/plane053_landscape_black_0_mesh.mesh"
                                materials: [
                                    landscape_black_material
                                ]
                            }
                            Model {
                                id: plane053_landscape_blue_0
                                objectName: "Plane053_landscape_blue_0"
                                x: 3.0517578125e-05
                                z: 3.819716766884085e-06
                                source: "meshes/plane053_landscape_blue_0_mesh.mesh"
                                materials: [
                                    landscape_blue_material
                                ]
                            }
                        }
                    }
                }
            }
        }
    }

    // Animations:
    Timeline {
        id: take_001_timeline
        objectName: "Take 001"
        property real framesPerSecond: 1000
        startFrame: 0
        endFrame: 4667
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 4667
            from: 0
            to: 4667
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: box005
            property: "position"
            keyframeSource: "animations/box005_position_0.qad"
        }
        KeyframeGroup {
            target: box008
            property: "position"
            keyframeSource: "animations/box008_position_0.qad"
        }
        KeyframeGroup {
            target: box006
            property: "position"
            keyframeSource: "animations/box006_position_0.qad"
        }
        KeyframeGroup {
            target: cylinder006
            property: "position"
            keyframeSource: "animations/cylinder006_position_0.qad"
        }
        KeyframeGroup {
            target: box007
            property: "position"
            keyframeSource: "animations/box007_position_0.qad"
        }
        KeyframeGroup {
            target: box009
            property: "position"
            keyframeSource: "animations/box009_position_0.qad"
        }
        KeyframeGroup {
            target: box010
            property: "position"
            keyframeSource: "animations/box010_position_0.qad"
        }
        KeyframeGroup {
            target: cylinder005
            property: "position"
            keyframeSource: "animations/cylinder005_position_0.qad"
        }
        KeyframeGroup {
            target: cylinder007
            property: "position"
            keyframeSource: "animations/cylinder007_position_0.qad"
        }
        KeyframeGroup {
            target: cylinder008
            property: "position"
            keyframeSource: "animations/cylinder008_position_0.qad"
        }
        KeyframeGroup {
            target: cylinder009
            property: "position"
            keyframeSource: "animations/cylinder009_position_0.qad"
        }
        KeyframeGroup {
            target: cylinder010
            property: "position"
            keyframeSource: "animations/cylinder010_position_0.qad"
        }
        KeyframeGroup {
            target: cylinder011
            property: "position"
            keyframeSource: "animations/cylinder011_position_0.qad"
        }
        KeyframeGroup {
            target: cylinder012
            property: "position"
            keyframeSource: "animations/cylinder012_position_0.qad"
        }
        KeyframeGroup {
            target: cylinder013
            property: "position"
            keyframeSource: "animations/cylinder013_position_0.qad"
        }
        KeyframeGroup {
            target: cylinder014
            property: "position"
            keyframeSource: "animations/cylinder014_position_0.qad"
        }
    }
}
