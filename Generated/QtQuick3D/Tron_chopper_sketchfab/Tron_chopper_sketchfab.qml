import QtQuick
import QtQuick3D

import QtQuick.Timeline
import Generated.QtQuick3D.Tron_chopper_sketchfab
import Generated.QtQuick3D.Attack_helicopter_concept

Node {
    id: node

    // Resources
    Texture {
        id: ___textures_chopper_rotorblades_texture_tga_texture
        objectName: "..\textures\chopper_rotorblades_texture.tga"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/chopper_rotorblades_texture.tga
        // Skipped property: source, reason: Failed to find texture at c:/Users/Padidar/Downloads/attack-helicopter-concept/source/../textures/chopper_rotorblades_texture.tga
    }
    Texture {
        id: ___textures_chopper_rotors_texture_tga_texture
        objectName: "..\textures\chopper_rotors_texture.tga"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/chopper_rotors_texture.tga
        // Skipped property: source, reason: Failed to find texture at c:/Users/Padidar/Downloads/attack-helicopter-concept/source/../textures/chopper_rotors_texture.tga
    }
    Texture {
        id: ___textures_chopper_texture_tga_texture
        objectName: "..\textures\chopper_texture.tga"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/chopper_texture.tga
        // Skipped property: source, reason: Failed to find texture at c:/Users/Padidar/Downloads/attack-helicopter-concept/source/../textures/chopper_texture.tga
    }
    Texture {
        id: ___textures_chopper_texture_illum_tga_texture
        objectName: "..\textures\chopper_texture_illum.tga"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/chopper_texture_illum.tga
        // Skipped property: source, reason: Failed to find texture at c:/Users/Padidar/Downloads/attack-helicopter-concept/source/../textures/chopper_texture_illum.tga
    }
    Texture {
        id: ___renders_Hud_parts_HUD_basics_png_texture
        objectName: "..\renders\Hud parts\HUD_basics.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/HUD_basics.png
        // Skipped property: source, reason: Failed to find texture at c:/Users/Padidar/Downloads/attack-helicopter-concept/source/../renders/Hud parts/HUD_basics.png
    }
    Texture {
        id: ___textures_chopper_rear_rotorblades_texture_tga_texture
        objectName: "..\textures\chopper_rear_rotorblades_texture.tga"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/chopper_rear_rotorblades_texture.tga
        // Skipped property: source, reason: Failed to find texture at c:/Users/Padidar/Downloads/attack-helicopter-concept/source/../textures/chopper_rear_rotorblades_texture.tga
    }
    Texture {
        id: ___renders_Hud_parts_HUD_horizon_png_texture
        objectName: "..\renders\Hud parts\HUD_horizon.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/HUD_horizon.png
        // Skipped property: source, reason: Failed to find texture at c:/Users/Padidar/Downloads/attack-helicopter-concept/source/../renders/Hud parts/HUD_horizon.png
    }
    Texture {
        id: ___renders_Hud_parts_hud_target_png_texture
        objectName: "..\renders\Hud parts\hud_target.png"
        generateMipmaps: true
        mipFilter: Texture.Linear
        // Source texture path expected: maps/hud_target.png
        // Skipped property: source, reason: Failed to find texture at c:/Users/Padidar/Downloads/attack-helicopter-concept/source/../renders/Hud parts/hud_target.png
    }

    // Nodes:
    Node {
        id: rootNode
        objectName: "RootNode"
        Model {
            id: chopper_body
            objectName: "chopper_body"
            x: -2.2402000427246094
            y: 64.20381164550781
            z: 9.544525146484375
            rotation: Qt.quaternion(-0.37346, 0.561293, 0.562588, 0.47851)
            scale.x: 1
            scale.y: 1
            scale.z: 1
            source: "meshes/chopper_body_mesh.mesh"
            materials: [
                chopper_material_material
            ]
            Model {
                id: chopper_rotors
                objectName: "chopper_rotors"
                x: -3.8545665740966797
                z: 5.59130859375
                rotation: Qt.quaternion(0.706444, 0.0305986, -0.0305986, 0.706445)
                scale.x: 1.0774
                scale.y: 1.0774
                scale.z: 1.0774
                source: "meshes/chopper_rotors_mesh.mesh"
                materials: [
                    chopper_rotors_material
                ]
                Model {
                    id: chopper_rotor_disc
                    objectName: "chopper_rotor_disc"
                    x: 5.960464477539063e-08
                    z: 2.3749847412109375
                    scale.x: 0.695134
                    scale.y: 0.695134
                    scale.z: 0.660296
                    source: "meshes/chopper_rotor_disc_mesh.mesh"
                    materials: [
                        chopper_material_material
                    ]
                }
                Model {
                    id: chopper_rotor_blades_top
                    objectName: "chopper_rotor_blades_top"
                    y: 0.048908233642578125
                    z: 6.378387451171875
                    scale.x: 2.08645
                    scale.y: 2.08645
                    scale.z: 0.92816
                    source: "meshes/chopper_rotor_blades_top_mesh.mesh"
                    materials: [
                        rotor_blades_material_material
                    ]
                }
            }
            Model {
                id: chopper_gun_base
                objectName: "chopper_gun_base"
                x: -35.251609802246094
                y: -2.384185791015625e-06
                z: -34.363426208496094
                rotation: Qt.quaternion(0.704416, 0.0616284, 0.0616284, 0.704416)
                scale.x: 1
                scale.y: 1
                scale.z: 1
                source: "meshes/chopper_gun_base_mesh.mesh"
                materials: [
                    chopper_material_material
                ]
            }
            Model {
                id: chopper_gun_turret
                objectName: "chopper_gun_turret"
                x: -35.251609802246094
                y: -2.384185791015625e-06
                z: -34.363426208496094
                rotation: Qt.quaternion(0.667705, 0.064681, 0.0584165, 0.739307)
                scale.x: 1
                scale.y: 1
                scale.z: 1
                source: "meshes/chopper_gun_turret_mesh.mesh"
                materials: [
                    chopper_material_material
                ]
                Model {
                    id: chopper_gun_barrel
                    objectName: "chopper_gun_barrel"
                    x: 7.953498766255507e-07
                    y: 2.86102294921875e-06
                    z: 4.76837158203125e-07
                    source: "meshes/chopper_gun_barrel_mesh.mesh"
                    materials: [
                        chopper_material_material
                    ]
                }
            }
            Model {
                id: chopper_wing_left
                objectName: "chopper_wing_left"
                x: 49.47392272949219
                y: -12.288566589355469
                z: -8.779023170471191
                rotation: Qt.quaternion(0.706701, 0.0239372, 0.0239372, 0.706702)
                scale.x: 1
                scale.y: 1
                scale.z: 0.664778
                source: "meshes/chopper_wing_left_mesh.mesh"
                materials: [
                    chopper_material_material
                ]
            }
            Model {
                id: chopper_wing_left001
                objectName: "chopper_wing_left001"
                x: 53.4351806640625
                y: 3.337860107421875e-06
                z: -8.389862060546875
                source: "meshes/chopper_wing_left001_mesh.mesh"
                materials: [
                    chopper_material_material
                ]
            }
            Model {
                id: chopper_rotor_blades_rear
                objectName: "chopper_rotor_blades_rear"
                x: 70.5544204711914
                y: -1.430511474609375e-06
                z: -13.693878173828125
                rotation: Qt.quaternion(-3.09086e-08, 3.09086e-08, 0.707107, -0.707107)
                scale.x: 0.586513
                scale.y: 0.586513
                scale.z: 1
                source: "meshes/chopper_rotor_blades_rear_mesh.mesh"
                materials: [
                    rear_rotors_material
                ]
            }
            Model {
                id: hud
                objectName: "Hud"
                x: -92.77664947509766
                y: 3.719329833984375e-05
                z: -10.898727416992188
                rotation: Qt.quaternion(0.430459, 0.560986, 0.560985, 0.430459)
                scale.x: 1.61906
                scale.y: 1.61906
                scale.z: 1.61906
                source: "meshes/hud_mesh.mesh"
                materials: [
                    hud1_material
                ]
                Model {
                    id: hud2
                    objectName: "Hud2"
                    x: -1.52587890625e-05
                    z: -0.0892791748046875
                    rotation: Qt.quaternion(0.999214, 0, 0, 0.0396323)
                    scale.x: 0.462749
                    scale.y: 0.462749
                    scale.z: 0.462749
                    source: "meshes/hud2_mesh.mesh"
                    materials: [
                        hud2_material
                    ]
                }
            }
        }
        Model {
            id: cylinder005
            objectName: "Cylinder005"
            x: -43.34543991088867
            y: 7.674041748046875
            z: -153.9224853515625
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.12195
            scale.y: 0.12195
            scale.z: 0.12195
            source: "meshes/cylinder005_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: box005
            objectName: "Box005"
            x: 76.78400421142578
            y: 24.564626693725586
            z: -176.81678771972656
            rotation: Qt.quaternion(0.690346, -0.690346, -0.153046, 0.153046)
            scale.x: 0.0560737
            scale.y: 0.0560737
            scale.z: 0.0560737
            source: "meshes/box005_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: plane053
            objectName: "Plane053"
            x: -63.977996826171875
            y: 7.674039840698242
            z: 3.9797630310058594
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.140358
            scale.y: 0.140358
            scale.z: 0.140358
            source: "meshes/plane053_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: box006
            objectName: "Box006"
            x: -80.98973083496094
            y: 26.54524040222168
            z: -145.69264221191406
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/box006_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: box007
            objectName: "Box007"
            x: 76.78400421142578
            y: 24.564626693725586
            z: 21.80614471435547
            rotation: Qt.quaternion(0.690346, -0.690346, -0.153046, 0.153046)
            scale.x: 0.0560737
            scale.y: 0.0560737
            scale.z: 0.0560737
            source: "meshes/box007_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: box008
            objectName: "Box008"
            x: 76.78400421142578
            y: 24.564626693725586
            z: -77.50532531738281
            rotation: Qt.quaternion(0.690346, -0.690346, -0.153046, 0.153046)
            scale.x: 0.0560737
            scale.y: 0.0560737
            scale.z: 0.0560737
            source: "meshes/box008_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: box009
            objectName: "Box009"
            x: -80.89035034179688
            y: 26.54524040222168
            z: -46.38117980957031
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/box009_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: box010
            objectName: "Box010"
            x: -80.95396423339844
            y: 26.54524040222168
            z: 52.93029022216797
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            source: "meshes/box010_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: cylinder006
            objectName: "Cylinder006"
            x: -43.34543991088867
            y: 7.674041748046875
            z: 97.00440216064453
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.12195
            scale.y: 0.12195
            scale.z: 0.12195
            source: "meshes/cylinder006_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: cylinder007
            objectName: "Cylinder007"
            x: -43.34543991088867
            y: 7.674041748046875
            z: 34.27267837524414
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.12195
            scale.y: 0.12195
            scale.z: 0.12195
            source: "meshes/cylinder007_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: cylinder008
            objectName: "Cylinder008"
            x: -43.34543991088867
            y: 7.674041748046875
            z: -28.459047317504883
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.12195
            scale.y: 0.12195
            scale.z: 0.12195
            source: "meshes/cylinder008_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: cylinder009
            objectName: "Cylinder009"
            x: -43.34543991088867
            y: 7.674041748046875
            z: -91.19078063964844
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.12195
            scale.y: 0.12195
            scale.z: 0.12195
            source: "meshes/cylinder009_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: cylinder010
            objectName: "Cylinder010"
            x: 43.77872085571289
            y: 7.674041748046875
            z: -28.459047317504883
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.12195
            scale.y: 0.12195
            scale.z: 0.12195
            source: "meshes/cylinder010_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: cylinder011
            objectName: "Cylinder011"
            x: 43.77872085571289
            y: 7.674041748046875
            z: -91.19078063964844
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.12195
            scale.y: 0.12195
            scale.z: 0.12195
            source: "meshes/cylinder011_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: cylinder012
            objectName: "Cylinder012"
            x: 43.77872085571289
            y: 7.674041748046875
            z: 97.00440216064453
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.12195
            scale.y: 0.12195
            scale.z: 0.12195
            source: "meshes/cylinder012_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: cylinder013
            objectName: "Cylinder013"
            x: 43.77872085571289
            y: 7.674041748046875
            z: 34.27267837524414
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.12195
            scale.y: 0.12195
            scale.z: 0.12195
            source: "meshes/cylinder013_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: cylinder014
            objectName: "Cylinder014"
            x: 43.77872085571289
            y: 7.674041748046875
            z: -153.9224853515625
            rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
            scale.x: 0.12195
            scale.y: 0.12195
            scale.z: 0.12195
            source: "meshes/cylinder014_mesh.mesh"
            materials: [
                landscape_black_material,
                landscape_blue_material
            ]
        }
        Model {
            id: hud3
            objectName: "Hud3"
            x: 17.996381759643555
            y: 55.467620849609375
            z: -81.31776428222656
            scale.x: 0.372638
            scale.y: 0.372638
            scale.z: 0.372638
            source: "meshes/hud3_mesh.mesh"
            materials: [
                hud3_material
            ]
        }
    }

    // Animations:
    Timeline {
        id: take_001_timeline
        objectName: "Take 001"
        property real framesPerSecond: 25
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
            target: box006
            property: "position"
            keyframeSource: "animations/box006_position_0.qad"
        }
        KeyframeGroup {
            target: box006
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.707107, -0.707107, 6.18172e-08, 6.18172e-08)
            }
        }
        KeyframeGroup {
            target: box009
            property: "position"
            keyframeSource: "animations/box009_position_0.qad"
        }
        KeyframeGroup {
            target: box009
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.707107, -0.707107, 6.18172e-08, 6.18172e-08)
            }
        }
        KeyframeGroup {
            target: box010
            property: "position"
            keyframeSource: "animations/box010_position_0.qad"
        }
        KeyframeGroup {
            target: box010
            property: "rotation"
            Keyframe {
                frame: 0
                value: Qt.quaternion(0.707107, -0.707107, 6.18172e-08, 6.18172e-08)
            }
        }
        KeyframeGroup {
            target: cylinder005
            property: "position"
            keyframeSource: "animations/cylinder005_position_0.qad"
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
            target: hud3
            property: "position"
            keyframeSource: "animations/hud3_position_0.qad"
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
            target: chopper_rotor_blades_top
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(0, 0.0489082, 6.37839)
            }
        }
        KeyframeGroup {
            target: chopper_rotor_blades_top
            property: "rotation"
            keyframeSource: "animations/chopper_rotor_blades_top_rotation_0.qad"
        }
        KeyframeGroup {
            target: chopper_rotors
            property: "position"
            Keyframe {
                frame: 0
                value: Qt.vector3d(-3.85457, 0, 5.59131)
            }
        }
        KeyframeGroup {
            target: chopper_rotors
            property: "rotation"
            keyframeSource: "animations/chopper_rotors_rotation_0.qad"
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
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: rotor_blades_material_material
            objectName: "rotor blades material"
            baseColor: "#ff969696"
            baseColorMap: ___textures_chopper_rotorblades_texture_tga_texture
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: chopper_rotors_material
            objectName: "chopper rotors"
            baseColor: "#ff969696"
            baseColorMap: ___textures_chopper_rotors_texture_tga_texture
            roughness: -0.5999996662139893
        }

        PrincipledMaterial {
            id: rear_rotors_material
            objectName: "rear rotors"
            baseColor: "#ff969696"
            baseColorMap: ___textures_chopper_rear_rotorblades_texture_tga_texture
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: hud1_material
            objectName: "HUD1"
            baseColor: "#ff969696"
            baseColorMap: ___renders_Hud_parts_HUD_basics_png_texture
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: hud2_material
            objectName: "HUD2"
            baseColor: "#ff969696"
            baseColorMap: ___renders_Hud_parts_HUD_horizon_png_texture
            roughness: 0.8585786819458008
        }

        PrincipledMaterial {
            id: chopper_material_material
            objectName: "Chopper_material"
            baseColor: "#ff969696"
            baseColorMap: ___textures_chopper_texture_tga_texture
            roughness: 0.20000016689300537
            emissiveMap: ___textures_chopper_texture_illum_tga_texture
        }

        PrincipledMaterial {
            id: landscape_black_material
            objectName: "landscape_black"
            baseColor: "#ff000000"
            roughness: 0.39371341466903687
        }

        PrincipledMaterial {
            id: landscape_blue_material
            objectName: "landscape_blue"
            baseColor: "#ff81d3cf"
            roughness: 0.8964735269546509
        }

        PrincipledMaterial {
            id: hud3_material
            objectName: "HUD3"
            baseColor: "#ff969696"
            baseColorMap: ___renders_Hud_parts_hud_target_png_texture
            roughness: 0.8585786819458008
        }
    }
}
