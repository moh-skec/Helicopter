import QtQuick
import QtQuick3D

import QtQuick.Timeline

Node {
    id: node
    scale.x: 100
    scale.y: 100
    scale.z: 100

    // Resources
    property url textureData: "maps/textureData.png"
    property url textureData23: "maps/textureData23.png"
    property url textureData61: "maps/textureData61.png"
    property url textureData11: "maps/textureData11.png"
    property url textureData25: "maps/textureData25.png"
    property url textureData13: "maps/textureData13.png"
    property url textureData170: "maps/textureData170.png"
    property url textureData15: "maps/textureData15.png"
    property url textureData36: "maps/textureData36.png"
    property url textureData59: "maps/textureData59.png"
    property url textureData73: "maps/textureData73.png"
    property url textureData21: "maps/textureData21.png"
    property url textureData67: "maps/textureData67.png"
    property url textureData2: "maps/textureData2.png"

    eulerRotation.y: eulerRotation.y + (take_001_timeline.currentFrame + 1)
                     / (take_001_timeline.currentFrame + 1) / 8

    SequentialAnimation {
        loops: Animation.Infinite
        NumberAnimation {
            target: node
            property: "eulerRotation.y"
            from: 0
            to: 360
            duration: 360
        }
    }
    Texture {
        id: _6_texture
        magFilter: Texture.Nearest
        minFilter: Texture.Nearest
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData36
    }
    Texture {
        id: _1_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData11
    }
    Texture {
        id: _2_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData13
    }
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData15
    }
    Texture {
        id: _12_texture
        tilingModeHorizontal: Texture.ClampToEdge
        tilingModeVertical: Texture.ClampToEdge
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData170
    }
    Texture {
        id: _9_texture
        magFilter: Texture.Nearest
        minFilter: Texture.Nearest
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData59
    }
    Texture {
        id: _5_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData23
    }
    Texture {
        id: _3_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData25
    }
    Texture {
        id: _8_texture
        magFilter: Texture.Nearest
        minFilter: Texture.Nearest
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData61
    }
    Texture {
        id: _11_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData73
    }
    Texture {
        id: _4_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData21
    }
    Texture {
        id: _7_texture
        magFilter: Texture.Nearest
        minFilter: Texture.Nearest
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    Texture {
        id: _10_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData67
    }
    Texture {
        id: _13_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData2
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
            Node {
                id: object_2
                objectName: "Object_2"
                Node {
                    id: rootNode
                    objectName: "RootNode"
                    Node {
                        id: chopper_body
                        objectName: "chopper_body"
                        y: 83.43415069580078
                        z: 5.161141395568848
                        rotation: Qt.quaternion(-0.37346, 0.561293,
                                                0.562588, 0.47851)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        Node {
                            id: object_5
                            objectName: "Object_5"
                            x: -0.8715807199478149
                            y: -3.809797632925438e-08
                            z: -19.831260681152344
                            Model {
                                id: chopper_body_Chopper_material_0
                                objectName: "chopper_body_Chopper_material_0"
                                source: "meshes/chopper_body_Chopper_material_0_mesh.mesh"
                                materials: [chopper_material_material]
                            }
                        }
                        Node {
                            id: chopper_rotors
                            objectName: "chopper_rotors"
                            x: -3.8545665740966797
                            y: -8.881784197001252e-16
                            z: 5.59130859375
                            rotation: Qt.quaternion(0.706444, 0.0305986,
                                                    -0.0305986, 0.706445)
                            scale.x: 1.0774
                            scale.y: 1.0774
                            scale.z: 1.0774
                            Model {
                                id: chopper_rotors_chopper_rotors_0
                                objectName: "chopper_rotors_chopper rotors_0"
                                source: "meshes/chopper_rotors_chopper_rotors_0_mesh.mesh"
                                materials: [chopper_rotors_material]
                            }
                            Node {
                                id: chopper_rotor_disc
                                objectName: "chopper_rotor_disc"
                                x: 5.960464477539063e-08
                                y: 3.552713678800501e-15
                                z: 2.3749847412109375
                                rotation: Qt.quaternion(1, -1.07182e-08,
                                                        7.36876e-09, 1.0467e-09)
                                scale.x: 0.695134
                                scale.y: 0.695134
                                scale.z: 0.660296
                                Model {
                                    id: chopper_rotor_disc_Chopper_material_0
                                    objectName: "chopper_rotor_disc_Chopper_material_0"
                                    source: "meshes/chopper_rotor_disc_Chopper_material_0_mesh.mesh"
                                    materials: [chopper_material_material]
                                }
                            }
                            Node {
                                id: chopper_rotor_blades_top
                                objectName: "chopper_rotor_blades_top"
                                x: -1.1102230246251565e-16
                                y: 0.048908233642578125
                                z: 6.378387451171875
                                rotation: Qt.quaternion(1, 1.42837e-08,
                                                        -4.46367e-10,
                                                        -1.67388e-09)
                                scale.x: 2.08645
                                scale.y: 2.08645
                                scale.z: 0.92816
                                Model {
                                    id: chopper_rotor_blades_top_rotor_blades_material_0
                                    objectName: "chopper_rotor_blades_top_rotor blades material_0"
                                    source: "meshes/chopper_rotor_blades_top_rotor_blades_material_0_mesh.mesh"
                                    materials: [rotor_blades_material_material]
                                }
                            }
                        }
                        Node {
                            id: chopper_gun_base
                            objectName: "chopper_gun_base"
                            x: -35.251609802246094
                            y: -2.384185791015625e-06
                            z: -34.363426208496094
                            rotation: Qt.quaternion(0.704416, 0.0616284,
                                                    0.0616284, 0.704416)
                            scale.x: 1
                            scale.y: 1
                            scale.z: 1
                            Model {
                                id: chopper_gun_base_Chopper_material_0
                                objectName: "chopper_gun_base_Chopper_material_0"
                                source: "meshes/chopper_gun_base_Chopper_material_0_mesh.mesh"
                                materials: [chopper_material_material]
                            }
                        }
                        Node {
                            id: chopper_gun_turret
                            objectName: "chopper_gun_turret"
                            x: -35.251609802246094
                            y: -2.384185791015625e-06
                            z: -34.363426208496094
                            rotation: Qt.quaternion(0.667705, 0.064681,
                                                    0.0584165, 0.739307)
                            scale.x: 1
                            scale.y: 1
                            scale.z: 1
                            Model {
                                id: chopper_gun_turret_Chopper_material_0
                                objectName: "chopper_gun_turret_Chopper_material_0"
                                source: "meshes/chopper_gun_turret_Chopper_material_0_mesh.mesh"
                                materials: [chopper_material_material]
                            }
                            Node {
                                id: chopper_gun_barrel
                                objectName: "chopper_gun_barrel"
                                x: 9.5367431640625e-07
                                y: 3.0060863494873047
                                z: -3.547161102294922
                                rotation: Qt.quaternion(1, -1.49012e-08,
                                                        -3.72529e-09,
                                                        -2.32831e-09)
                                scale.x: 1
                                scale.y: 1
                                scale.z: 1
                                Node {
                                    id: object_18
                                    objectName: "Object_18"
                                    x: -1.5832445399155404e-07
                                    y: -3.0060834884643555
                                    z: 3.54716157913208
                                    Model {
                                        id: chopper_gun_barrel_Chopper_material_0
                                        objectName: "chopper_gun_barrel_Chopper_material_0"
                                        source: "meshes/chopper_gun_barrel_Chopper_material_0_mesh.mesh"
                                        materials: [chopper_material_material]
                                    }
                                }
                            }
                        }
                        Node {
                            id: chopper_wing_left
                            objectName: "chopper_wing_left"
                            x: 53.4351806640625
                            y: 3.337860107421875e-06
                            z: -8.389862060546875
                            rotation: Qt.quaternion(0.706701, 0.0239372,
                                                    0.0239372, 0.706702)
                            scale.x: 1
                            scale.y: 1
                            scale.z: 0.664778
                            Node {
                                id: object_21
                                objectName: "Object_21"
                                x: -12.288569450378418
                                y: 3.9258480072021484
                                z: -0.9872636795043945
                                Model {
                                    id: chopper_wing_left_Chopper_material_0
                                    objectName: "chopper_wing_left_Chopper_material_0"
                                    source: "meshes/chopper_wing_left_Chopper_material_0_mesh.mesh"
                                    materials: [chopper_material_material]
                                }
                            }
                        }
                        Node {
                            id: chopper_wing_left001
                            objectName: "chopper_wing_left001"
                            x: 53.4351806640625
                            y: 3.337860107421875e-06
                            z: -8.389862060546875
                            rotation: Qt.quaternion(1, 7.45058e-09,
                                                    -2.08167e-17, -2.79397e-09)
                            Model {
                                id: chopper_wing_left001_Chopper_material_0
                                objectName: "chopper_wing_left001_Chopper_material_0"
                                source: "meshes/chopper_wing_left001_Chopper_material_0_mesh.mesh"
                                materials: [chopper_material_material]
                            }
                        }
                        Node {
                            id: chopper_rotor_blades_rear
                            objectName: "chopper_rotor_blades_rear"
                            x: 70.5544204711914
                            y: -1.430511474609375e-06
                            z: -13.693878173828125
                            rotation: Qt.quaternion(-2.69475e-08, 8.98251e-09,
                                                    -0.707107, 0.707107)
                            scale.x: 0.586513
                            scale.y: 0.586513
                            scale.z: 1
                            Model {
                                id: chopper_rotor_blades_rear_rear_rotors_0
                                objectName: "chopper_rotor_blades_rear_rear rotors_0"
                                source: "meshes/chopper_rotor_blades_rear_rear_rotors_0_mesh.mesh"
                                materials: [rear_rotors_material]
                            }
                        }
                        Node {
                            id: hud
                            objectName: "Hud"
                            x: -92.77664947509766
                            y: 3.719329833984375e-05
                            z: -10.898727416992188
                            rotation: Qt.quaternion(0.430459, 0.560986,
                                                    0.560985, 0.430459)
                            scale.x: 1.61906
                            scale.y: 1.61906
                            scale.z: 1.61906
                            Model {
                                id: hud_HUD1_0
                                objectName: "Hud_HUD1_0"
                                source: "meshes/hud_HUD1_0_mesh.mesh"
                                materials: [hud1_material]
                            }
                            Node {
                                id: hud2
                                objectName: "Hud2"
                                x: -1.52587890625e-05
                                z: -0.0892791748046875
                                rotation: Qt.quaternion(0.999214, 1.23827e-08,
                                                        4.32765e-08, 0.0396323)
                                scale.x: 0.462749
                                scale.y: 0.462749
                                scale.z: 0.462749
                                Model {
                                    id: hud2_HUD2_0
                                    objectName: "Hud2_HUD2_0"
                                    source: "meshes/hud2_HUD2_0_mesh.mesh"
                                    materials: [hud2_material]
                                }
                            }
                        }

                        Model {
                            id: plane
                            x: 0
                            y: -0
                            opacity: 0.5
                            source: "#Rectangle"
                            z: 15 - 27 * take_001_timeline.currentFrame / 2000
                            scale.z: 2
                            scale.y: 0.5
                            scale.x: 2.5
                            materials: newMaterial
                        }
                    }
                    Node {
                        id: cylinder005
                        objectName: "Cylinder005"
                        x: -43.34543991088867
                        y: 7.674041748046875
                        z: -153.9224853515625
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder005_landscape_black_0
                            objectName: "Cylinder005_landscape_black_0"
                            source: "meshes/cylinder005_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: cylinder005_landscape_blue_0
                            objectName: "Cylinder005_landscape_blue_0"
                            source: "meshes/cylinder005_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: box005
                        objectName: "Box005"
                        x: 81.03144073486328
                        y: 26.54524040222168
                        z: -145.69264221191406
                        rotation: Qt.quaternion(0.690346, -0.690346,
                                                -0.153046, 0.153046)
                        scale.x: 0.0560737
                        scale.y: 0.0560737
                        scale.z: 0.0560737
                        Node {
                            id: object_35
                            objectName: "Object_35"
                            x: -83.57811737060547
                            y: 555.057861328125
                            z: 3.0517578125e-05
                            Model {
                                id: box005_landscape_black_0
                                objectName: "Box005_landscape_black_0"
                                source: "meshes/box005_landscape_black_0_mesh.mesh"
                                materials: [landscape_black_material]
                            }
                            Model {
                                id: box005_landscape_blue_0
                                objectName: "Box005_landscape_blue_0"
                                source: "meshes/box005_landscape_blue_0_mesh.mesh"
                                materials: [landscape_blue_material]
                            }
                        }
                    }
                    Node {
                        id: plane053
                        objectName: "Plane053"
                        x: -0.101165771484375
                        y: 18.283599853515625
                        z: 3.277974843978882
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.140358
                        scale.y: 0.140358
                        scale.z: 0.140358
                        Node {
                            id: object_39
                            objectName: "Object_39"
                            x: -455.1008605957031
                            y: -5
                            z: -75.58953857421875
                            Model {
                                id: plane053_landscape_black_0
                                objectName: "Plane053_landscape_black_0"
                                source: "meshes/plane053_landscape_black_0_mesh.mesh"
                                materials: [landscape_black_material]
                            }
                            Model {
                                id: plane053_landscape_blue_0
                                objectName: "Plane053_landscape_blue_0"
                                source: "meshes/plane053_landscape_blue_0_mesh.mesh"
                                materials: [landscape_blue_material]
                            }
                        }
                    }
                    Node {
                        id: box006
                        objectName: "Box006"
                        x: -80.98973083496094
                        y: 26.54524040222168
                        z: -145.69264221191406
                        rotation: Qt.quaternion(0.707107, -0.707107,
                                                6.18173e-08, 6.18172e-08)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        Model {
                            id: box006_landscape_black_0
                            objectName: "Box006_landscape_black_0"
                            source: "meshes/box006_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: box006_landscape_blue_0
                            objectName: "Box006_landscape_blue_0"
                            source: "meshes/box006_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: box007
                        objectName: "Box007"
                        x: 81.03144073486328
                        y: 26.54524040222168
                        z: 52.93029022216797
                        rotation: Qt.quaternion(0.690346, -0.690346,
                                                -0.153046, 0.153046)
                        scale.x: 0.0560737
                        scale.y: 0.0560737
                        scale.z: 0.0560737
                        Node {
                            id: object_46
                            objectName: "Object_46"
                            x: -83.57811737060547
                            y: 555.057861328125
                            z: 3.0517578125e-05
                            Model {
                                id: box007_landscape_black_0
                                objectName: "Box007_landscape_black_0"
                                source: "meshes/box007_landscape_black_0_mesh.mesh"
                                materials: [landscape_black_material]
                            }
                            Model {
                                id: box007_landscape_blue_0
                                objectName: "Box007_landscape_blue_0"
                                source: "meshes/box007_landscape_blue_0_mesh.mesh"
                                materials: [landscape_blue_material]
                            }
                        }
                    }
                    Node {
                        id: box008
                        objectName: "Box008"
                        x: 81.03144073486328
                        y: 26.54524040222168
                        z: -46.38117980957031
                        rotation: Qt.quaternion(0.690346, -0.690346,
                                                -0.153046, 0.153046)
                        scale.x: 0.0560737
                        scale.y: 0.0560737
                        scale.z: 0.0560737
                        Node {
                            id: object_50
                            objectName: "Object_50"
                            x: -83.57811737060547
                            y: 555.057861328125
                            z: 3.0517578125e-05
                            Model {
                                id: box008_landscape_black_0
                                objectName: "Box008_landscape_black_0"
                                source: "meshes/box008_landscape_black_0_mesh.mesh"
                                materials: [landscape_black_material]
                            }
                            Model {
                                id: box008_landscape_blue_0
                                objectName: "Box008_landscape_blue_0"
                                source: "meshes/box008_landscape_blue_0_mesh.mesh"
                                materials: [landscape_blue_material]
                            }
                        }
                    }
                    Node {
                        id: box009
                        objectName: "Box009"
                        x: -80.89035034179688
                        y: 26.54524040222168
                        z: -46.38117980957031
                        rotation: Qt.quaternion(0.707107, -0.707107,
                                                6.18173e-08, 6.18172e-08)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        Model {
                            id: box009_landscape_black_0
                            objectName: "Box009_landscape_black_0"
                            source: "meshes/box009_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: box009_landscape_blue_0
                            objectName: "Box009_landscape_blue_0"
                            source: "meshes/box009_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: box010
                        objectName: "Box010"
                        x: -80.95396423339844
                        y: 26.54524040222168
                        z: 52.93029022216797
                        rotation: Qt.quaternion(0.707107, -0.707107,
                                                6.18173e-08, 6.18172e-08)
                        scale.x: 1
                        scale.y: 1
                        scale.z: 1
                        Model {
                            id: box010_landscape_black_0
                            objectName: "Box010_landscape_black_0"
                            source: "meshes/box010_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: box010_landscape_blue_0
                            objectName: "Box010_landscape_blue_0"
                            source: "meshes/box010_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: cylinder006
                        objectName: "Cylinder006"
                        x: -43.34543991088867
                        y: 7.674041748046875
                        z: 97.00440216064453
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder006_landscape_black_0
                            objectName: "Cylinder006_landscape_black_0"
                            source: "meshes/cylinder006_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: cylinder006_landscape_blue_0
                            objectName: "Cylinder006_landscape_blue_0"
                            source: "meshes/cylinder006_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: cylinder007
                        objectName: "Cylinder007"
                        x: -43.34543991088867
                        y: 7.674041748046875
                        z: 34.27267837524414
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder007_landscape_black_0
                            objectName: "Cylinder007_landscape_black_0"
                            source: "meshes/cylinder007_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: cylinder007_landscape_blue_0
                            objectName: "Cylinder007_landscape_blue_0"
                            source: "meshes/cylinder007_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: cylinder008
                        objectName: "Cylinder008"
                        x: -43.34543991088867
                        y: 7.674041748046875
                        z: -28.459047317504883
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder008_landscape_black_0
                            objectName: "Cylinder008_landscape_black_0"
                            source: "meshes/cylinder008_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: cylinder008_landscape_blue_0
                            objectName: "Cylinder008_landscape_blue_0"
                            source: "meshes/cylinder008_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: cylinder009
                        objectName: "Cylinder009"
                        x: -43.34543991088867
                        y: 7.674041748046875
                        z: -91.19078063964844
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder009_landscape_black_0
                            objectName: "Cylinder009_landscape_black_0"
                            source: "meshes/cylinder009_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: cylinder009_landscape_blue_0
                            objectName: "Cylinder009_landscape_blue_0"
                            source: "meshes/cylinder009_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: cylinder010
                        objectName: "Cylinder010"
                        x: 43.77872085571289
                        y: 7.674041748046875
                        z: -28.459047317504883
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder010_landscape_black_0
                            objectName: "Cylinder010_landscape_black_0"
                            source: "meshes/cylinder010_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: cylinder010_landscape_blue_0
                            objectName: "Cylinder010_landscape_blue_0"
                            source: "meshes/cylinder010_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: cylinder011
                        objectName: "Cylinder011"
                        x: 43.77872085571289
                        y: 7.674041748046875
                        z: -91.19078063964844
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder011_landscape_black_0
                            objectName: "Cylinder011_landscape_black_0"
                            source: "meshes/cylinder011_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: cylinder011_landscape_blue_0
                            objectName: "Cylinder011_landscape_blue_0"
                            source: "meshes/cylinder011_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: cylinder012
                        objectName: "Cylinder012"
                        x: 43.77872085571289
                        y: 7.674041748046875
                        z: 97.00440216064453
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder012_landscape_black_0
                            objectName: "Cylinder012_landscape_black_0"
                            source: "meshes/cylinder012_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: cylinder012_landscape_blue_0
                            objectName: "Cylinder012_landscape_blue_0"
                            source: "meshes/cylinder012_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: cylinder013
                        objectName: "Cylinder013"
                        x: 43.77872085571289
                        y: 7.674041748046875
                        z: 34.27267837524414
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder013_landscape_black_0
                            objectName: "Cylinder013_landscape_black_0"
                            source: "meshes/cylinder013_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: cylinder013_landscape_blue_0
                            objectName: "Cylinder013_landscape_blue_0"
                            source: "meshes/cylinder013_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: cylinder014
                        objectName: "Cylinder014"
                        x: 43.77872085571289
                        y: 7.674041748046875
                        z: -153.9224853515625
                        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
                        scale.x: 0.12195
                        scale.y: 0.12195
                        scale.z: 0.12195
                        Model {
                            id: cylinder014_landscape_black_0
                            objectName: "Cylinder014_landscape_black_0"
                            source: "meshes/cylinder014_landscape_black_0_mesh.mesh"
                            materials: [landscape_black_material]
                        }
                        Model {
                            id: cylinder014_landscape_blue_0
                            objectName: "Cylinder014_landscape_blue_0"
                            source: "meshes/cylinder014_landscape_blue_0_mesh.mesh"
                            materials: [landscape_blue_material]
                        }
                    }
                    Node {
                        id: hud3
                        objectName: "Hud3"
                        x: 17.996381759643555
                        y: 55.467620849609375
                        z: -81.31776428222656
                        rotation: Qt.quaternion(1, 2.31182e-08, -1.99941e-08,
                                                -1.12467e-08)
                        scale.x: 0.372638
                        scale.y: 0.372638
                        scale.z: 0.372638
                        Model {
                            id: hud3_HUD3_0
                            objectName: "Hud3_HUD3_0"
                            source: "meshes/hud3_HUD3_0_mesh.mesh"
                            materials: [hud3_material]
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
        endFrame: 4000
        currentFrame: 0
        enabled: true
        animations: TimelineAnimation {
            duration: 4000
            from: 0
            to: 4000
            running: true
            loops: Animation.Infinite
        }
        KeyframeGroup {
            target: cylinder013
            property: "position"
            keyframeSource: "animations/cylinder013_position_0.qad"
        }
        KeyframeGroup {
            target: chopper_gun_turret
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-35.2516, -2.38419e-06, -34.3634)
            }
        }
        KeyframeGroup {
            target: chopper_gun_turret
            property: "rotation"
            keyframeSource: "animations/chopper_gun_turret_rotation_0.qad"
        }
        KeyframeGroup {
            target: chopper_rotor_blades_top
            property: "position"
            keyframeSource: "animations/chopper_rotor_blades_top_position_0.qad"
        }
        KeyframeGroup {
            target: chopper_rotor_blades_top
            property: "rotation"
            keyframeSource: "animations/chopper_rotor_blades_top_rotation_0.qad"
        }
        KeyframeGroup {
            target: chopper_rotors
            property: "position"
            keyframeSource: "animations/chopper_rotors_position_0.qad"
        }
        KeyframeGroup {
            target: chopper_rotors
            property: "rotation"
            keyframeSource: "animations/chopper_rotors_rotation_0.qad"
        }
        KeyframeGroup {
            target: cylinder014
            property: "position"
            keyframeSource: "animations/cylinder014_position_0.qad"
        }
        KeyframeGroup {
            target: chopper_wing_left
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(53.4352, 3.33786e-06, -8.38986)
            }
        }
        KeyframeGroup {
            target: chopper_wing_left
            property: "rotation"
            keyframeSource: "animations/chopper_wing_left_rotation_0.qad"
        }
        KeyframeGroup {
            target: hud3
            property: "position"
            keyframeSource: "animations/hud3_position_0.qad"
        }
        KeyframeGroup {
            target: chopper_wing_left001
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(53.4352, 3.33786e-06, -8.38986)
            }
        }
        KeyframeGroup {
            target: chopper_wing_left001
            property: "rotation"
            keyframeSource: "animations/chopper_wing_left001_rotation_0.qad"
        }
        KeyframeGroup {
            target: chopper_rotor_blades_rear
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(70.5544, -1.43051e-06, -13.6939)
            }
        }
        KeyframeGroup {
            target: chopper_rotor_blades_rear
            property: "rotation"
            keyframeSource: "animations/chopper_rotor_blades_rear_rotation_0.qad"
        }
        KeyframeGroup {
            target: hud2
            property: "position"
            keyframeSource: "animations/hud2_position_0.qad"
        }
        KeyframeGroup {
            target: hud2
            property: "rotation"
            keyframeSource: "animations/hud2_rotation_0.qad"
        }
        KeyframeGroup {
            target: chopper_body
            property: "position"
            keyframeSource: "animations/chopper_body_position_0.qad"
        }
        KeyframeGroup {
            target: chopper_body
            property: "rotation"
            keyframeSource: "animations/chopper_body_rotation_0.qad"
        }
        KeyframeGroup {
            target: cylinder005
            property: "position"
            keyframeSource: "animations/cylinder005_position_0.qad"
        }
        KeyframeGroup {
            target: box005
            property: "position"
            keyframeSource: "animations/box005_position_0.qad"
        }
        KeyframeGroup {
            target: box006
            property: "position"
            keyframeSource: "animations/box006_position_0.qad"
        }
        KeyframeGroup {
            target: box007
            property: "position"
            keyframeSource: "animations/box007_position_0.qad"
        }
        KeyframeGroup {
            target: box008
            property: "position"
            keyframeSource: "animations/box008_position_0.qad"
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
            target: cylinder006
            property: "position"
            keyframeSource: "animations/cylinder006_position_0.qad"
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
    }
    Node {
        id: __materialLibrary__

        SpecularGlossyMaterial {
            id: chopper_material_material
            objectName: "Chopper_material"
            albedoColor: "#ff737373"
            albedoMap: _1_texture
            specularMap: _2_texture
            glossinessMap: _2_texture
            specularColor: "#ff262626"
            glossiness: 0.699999988079071
            emissiveMap: _0_texture
            emissiveFactor.x: 1
            emissiveFactor.y: 1
            emissiveFactor.z: 1
            alphaMode: SpecularGlossyMaterial.Opaque
        }

        SpecularGlossyMaterial {
            id: chopper_rotors_material
            objectName: "chopper_rotors"
            albedoColor: "#ff737373"
            albedoMap: _4_texture
            specularMap: _5_texture
            glossinessMap: _5_texture
            specularColor: "#ff262626"
            glossiness: 0.699999988079071
            emissiveMap: _3_texture
            emissiveFactor.x: 1
            emissiveFactor.y: 1
            emissiveFactor.z: 1
            alphaMode: SpecularGlossyMaterial.Opaque
        }

        SpecularGlossyMaterial {
            id: rotor_blades_material_material
            objectName: "rotor_blades_material"
            albedoMap: _7_texture
            specularColor: "#ff000000"
            emissiveMap: _6_texture
            emissiveFactor.x: 1
            emissiveFactor.y: 1
            emissiveFactor.z: 1
            cullMode: SpecularGlossyMaterial.NoCulling
            alphaMode: SpecularGlossyMaterial.Blend
        }

        SpecularGlossyMaterial {
            id: rear_rotors_material
            objectName: "rear_rotors"
            albedoMap: _9_texture
            specularColor: "#ff000000"
            glossiness: 0.4000000059604645
            emissiveMap: _8_texture
            emissiveFactor.x: 1
            emissiveFactor.y: 1
            emissiveFactor.z: 1
            cullMode: SpecularGlossyMaterial.NoCulling
            alphaMode: SpecularGlossyMaterial.Blend
        }

        SpecularGlossyMaterial {
            id: hud1_material
            // specularChannel: Material.B
            // specularSingleChannelEnabled: false
            // albedoChannel: Material.B
            // albedoSingleChannelEnabled: false
            alphaCutoff: 0.4
            lighting: SpecularGlossyMaterial.FragmentLighting
            blendMode: SpecularGlossyMaterial.Screen
            objectName: "HUD1"
            albedoColor: "#ff000000"
            albedoMap: _10_texture
            specularColor: "#ff000000"
            emissiveFactor.x: 1
            emissiveFactor.y: 1
            emissiveFactor.z: 0
            cullMode: Material.BackFaceCulling
            alphaMode: SpecularGlossyMaterial.Blend
        }

        SpecularGlossyMaterial {
            id: landscape_black_material
            objectName: "landscape_black"
            albedoColor: "#ff000000"
            specularColor: "#ff1a1a1a"
            glossiness: 0.9800000190734863
            cullMode: Material.BackFaceCulling
            alphaMode: SpecularGlossyMaterial.Opaque
        }

        SpecularGlossyMaterial {
            id: landscape_blue_material
            objectName: "landscape_blue"
            albedoColor: "#ff81d3cf"
            specularColor: "#ff0d0d0d"
            glossiness: 0.4000000059604645
            emissiveFactor.x: 0
            emissiveFactor.y: 1
            emissiveFactor.z: 1
            cullMode: Material.NoCulling
            alphaMode: SpecularGlossyMaterial.Opaque
        }

        SpecularGlossyMaterial {
            id: hud2_material
            objectName: "HUD2"
            albedoColor: "#ff000000"
            albedoMap: _11_texture
            specularColor: "#ff0d0d0d"
            glossiness: 0.4000000059604645
            emissiveFactor.x: 1
            emissiveFactor.y: 1
            emissiveFactor.z: 0
            cullMode: Material.BackFaceCulling
            alphaMode: SpecularGlossyMaterial.Blend
        }

        SpecularGlossyMaterial {
            id: hud3_material
            objectName: "HUD3"
            albedoColor: "#ff000000"
            albedoMap: _12_texture
            specularColor: "#ff0d0d0d"
            glossiness: 0.4000000059604645
            emissiveFactor.x: 1
            emissiveFactor.y: 1
            emissiveFactor.z: 0
            cullMode: Material.BackFaceCulling
            alphaMode: SpecularGlossyMaterial.Blend
        }

        PrincipledMaterial {
            id: newMaterial
            baseColorMap: _13_texture
            cullMode: Material.NoCulling
            baseColor: "#00ff00"
            objectName: "New Material"
        }
    }
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/

