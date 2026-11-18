module Org.Allbinary.Game.Layer.Weapon.WeaponLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.weapon
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Game.Identification.BasicGroupFactory as BasicGroupFactory
import Org.Allbinary.Game.Layer.Weapon.CollidableWeaponBehavior as CollidableWeaponBehavior
import Org.Allbinary.Game.Combat.Destroy.DestroyedLayerProcessor as DestroyedLayerProcessor
import Org.Allbinary.Game.Configuration.GameConfigurationUtil as GameConfigurationUtil
import Org.Allbinary.Game.Multiplayer.Layer.MultiPlayerGameLayer as MultiPlayerGameLayer
import Org.Allbinary.Game.Score.NoScoreable as NoScoreable
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Game.Tick.TickableInterface as TickableInterface
import Org.Allbinary.Game.Combat.Weapon.WeaponProperties as WeaponProperties


jclass : String
jclass =
    "WeaponLayer"


jchain : List String
jchain =
    [ "WeaponLayer" ]
        ++ MultiPlayerGameLayer.jchain
        ++ TickableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    MultiPlayerGameLayer.jfields ++ [ ( "animationInterface", JR.defaultOf "" ), ( "initAnimationInterface", JR.defaultOf "" ), ( "destroyedAnimationInterface", JR.defaultOf "" ), ( "sourceLayerInterface", JR.defaultOf "" ), ( "totalDamage", JR.defaultOf "I" ), ( "initDamage", JR.defaultOf "I" ), ( "destroyed", JR.defaultOf "Z" ), ( "scoreableInterface", JR.defaultOf "" ), ( "movement", JR.defaultOf "" ), ( "weaponProperties", JR.defaultOf "" ), ( "multiPlayerType", JR.defaultOf "I" ), ( "collidableWeaponBehavior", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setCollidableInferface_1", jm_setCollidableInferface_1 )
        , ( "initXYZ_3", jm_initXYZ_3 )
        , ( "init_5", jm_init_5 )
        , ( "setGroupInterfaces_0", jm_setGroupInterfaces_0 )
        , ( "processTick_1", jm_processTick_1 )
        , ( "isDestroyed_0", jm_isDestroyed_0 )
        , ( "damage_2", jm_damage_2 )
        , ( "givePoints_1", jm_givePoints_1 )
        , ( "isExhausted_0", jm_isExhausted_0 )
        , ( "getDamage_1", jm_getDamage_1 )
        , ( "setDestroyed_1", jm_setDestroyed_1 )
        , ( "getInitDamage_0", jm_getInitDamage_0 )
        , ( "setAnimationInterface_1", jm_setAnimationInterface_1 )
        , ( "getAnimationInterface_0", jm_getAnimationInterface_0 )
        , ( "getInitAnimationInterfaceP_0", jm_getInitAnimationInterfaceP_0 )
        , ( "setInitAnimationInterfaceP_1", jm_setInitAnimationInterfaceP_1 )
        , ( "getDestroyedAnimationInterface_0", jm_getDestroyedAnimationInterface_0 )
        , ( "getOwnerLayerInterface_0", jm_getOwnerLayerInterface_0 )
        , ( "setOwnerLayerInterface_1", jm_setOwnerLayerInterface_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "getMovement_0", jm_getMovement_0 )
        , ( "setMovement_1", jm_setMovement_1 )
        , ( "getType_0", jm_getType_0 )
        , ( "getStaticType_0", jm_getStaticType_0 )
        , ( "getMultiPlayerType_0", jm_getMultiPlayerType_0 )
        , ( "setWeaponPropertiesP_1", jm_setWeaponPropertiesP_1 )
        , ( "getWeaponPropertiesP_0", jm_getWeaponPropertiesP_0 )
        , ( "implmentsTickableInterface_0", jm_implmentsTickableInterface_0 )
        , ( "set_1", jm_set_1 ) ]
        MultiPlayerGameLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WeaponLayer"
        [ ( "jm_setCollidableInferface_1", jm_setCollidableInferface_1 ), ( "jm_initXYZ_3", jm_initXYZ_3 ), ( "jm_init_5", jm_init_5 ), ( "jm_setGroupInterfaces_0", jm_setGroupInterfaces_0 ), ( "jm_processTick_1", jm_processTick_1 ), ( "jm_isDestroyed_0", jm_isDestroyed_0 ), ( "jm_damage_2", jm_damage_2 ), ( "jm_givePoints_1", jm_givePoints_1 ), ( "jm_isExhausted_0", jm_isExhausted_0 ), ( "jm_getDamage_1", jm_getDamage_1 ), ( "jm_setDestroyed_1", jm_setDestroyed_1 ), ( "jm_getInitDamage_0", jm_getInitDamage_0 ), ( "jm_setAnimationInterface_1", jm_setAnimationInterface_1 ), ( "jm_getAnimationInterface_0", jm_getAnimationInterface_0 ), ( "jm_getInitAnimationInterfaceP_0", jm_getInitAnimationInterfaceP_0 ), ( "jm_setInitAnimationInterfaceP_1", jm_setInitAnimationInterfaceP_1 ), ( "jm_getDestroyedAnimationInterface_0", jm_getDestroyedAnimationInterface_0 ), ( "jm_getOwnerLayerInterface_0", jm_getOwnerLayerInterface_0 ), ( "jm_setOwnerLayerInterface_1", jm_setOwnerLayerInterface_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_getMovement_0", jm_getMovement_0 ), ( "jm_setMovement_1", jm_setMovement_1 ), ( "jm_getType_0", jm_getType_0 ), ( "jm_getStaticType_0", jm_getStaticType_0 ), ( "jm_getMultiPlayerType_0", jm_getMultiPlayerType_0 ), ( "jm_setWeaponPropertiesP_1", jm_setWeaponPropertiesP_1 ), ( "jm_getWeaponPropertiesP_0", jm_getWeaponPropertiesP_0 ), ( "jm_implmentsTickableInterface_0", jm_implmentsTickableInterface_0 ), ( "jm_set_1", jm_set_1 ), ( "jnew_8", jnew_8 ), ( "jinit_8", jinit_8 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_8 : JR.Method
jinit_8 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "remoteInfo", "" ), ( "multiPlayerType", "I" ), ( "movement", "" ), ( "animationInterface", "" ), ( "destroyedAnimationInterface", "" ), ( "rectangle", "" ), ( "viewPosition", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect MultiPlayerGameLayer.jinit_5 JR.this [ (JR.local "remoteInfo"), (JR.field "NONE_ARRAY" (JR.callStatic BasicGroupFactory.jm_getInstance_0 [])), (JR.local "name"), (JR.local "rectangle"), (JR.local "viewPosition") ]),
                JR.exec (JR.setField "animationInterface" "" JR.this (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ])),
                JR.exec (JR.setField "sourceLayerInterface" "" JR.this AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER),
                JR.exec (JR.setField "destroyed" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "scoreableInterface" "" JR.this (JR.callStatic NoScoreable.jm_getInstance_0 [])),
                JR.exec (JR.setField "weaponProperties" "" JR.this WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES),
                JR.exec (JR.setField "collidableWeaponBehavior" "" JR.this (JR.callStatic CollidableWeaponBehavior.jm_getNullInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "initAnimationInterface" "" JR.this (JR.local "animationInterface")), 
                    JR.exec (JR.invoke "setAnimationInterface_1" JR.this [ (JR.local "animationInterface") ]), 
                    JR.exec (JR.setField "destroyedAnimationInterface" "" JR.this (JR.local "destroyedAnimationInterface")), 
                    JR.exec (JR.setField "movement" "" JR.this (JR.local "movement")), 
                    JR.exec (JR.setField "multiPlayerType" "I" JR.this (JR.local "multiPlayerType")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_8 : JR.Method
jnew_8 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_8 jheap jthis jargs


jm_setCollidableInferface_1 : JR.Method
jm_setCollidableInferface_1 jheap jthis jargs =
    JR.method [ ( "collidableInferface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia MultiPlayerGameLayer.jvtable "setCollidableInferface_1" JR.this [ (JR.local "collidableInferface") ]), 
                    JR.exec (JR.setField "collidableWeaponBehavior" "" JR.this (JR.invoke "getCollidableInferface_0" JR.this [])) ])
        (jregister jheap)
        jthis
        jargs


jm_initXYZ_3 : JR.Method
jm_initXYZ_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "x" "" JR.this (JR.local "x")), 
                    JR.exec (JR.setField "y" "" JR.this (JR.local "y")), 
                    JR.exec (JR.setField "z" "" JR.this (JR.local "z")) ])
        (jregister jheap)
        jthis
        jargs


jm_init_5 : JR.Method
jm_init_5 jheap jthis jargs =
    JR.method [ ( "sourceLayerInterface", "" ), ( "angle", "I" ), ( "otherAngle", "I" ), ( "weaponProperties", "" ), ( "scoreable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setWeaponPropertiesP_1" JR.this [ (JR.local "weaponProperties") ]), 
                    JR.exec (JR.invoke "setReadyForExplosion_1" JR.this [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "setAnimationInterface_1" JR.this [ (JR.invoke "getInitAnimationInterfaceP_0" JR.this []) ]), 
                    JR.exec (JR.invoke "setOwnerLayerInterface_1" JR.this [ (JR.local "sourceLayerInterface") ]), 
                    JR.exec (JR.invoke "init_1" (JR.thisField "collidableWeaponBehavior") [ (JR.local "sourceLayerInterface") ]), 
                    JR.exec (JR.invoke "setGroupInterfaces_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "scoreable") JR.null) (JR.run [ 
                        JR.exec (JR.setField "scoreableInterface" "" JR.this (JR.local "scoreable")) ]) identity, 
                    JR.exec (JR.setField "totalDamage" "I" JR.this (JR.int 0)), 
                    JR.exec (JR.setField "initDamage" "I" JR.this (JR.invoke "getDamage_0" (JR.local "weaponProperties") [])), 
                    JR.exec (JR.invoke "setDestroyed_1" JR.this [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "init_3" (JR.thisField "movement") [ (JR.invoke "getSpeed_0" (JR.local "weaponProperties") []), (JR.local "angle"), (JR.local "otherAngle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setGroupInterfaces_0 : JR.Method
jm_setGroupInterfaces_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "basicGroupFactory" "" (JR.callStatic BasicGroupFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.aget (JR.invoke "getGroupInterface_0" (JR.thisField "sourceLayerInterface") []) (JR.int 0)) (JR.field "ENEMY" (JR.local "basicGroupFactory"))) (JR.run [ 
                        JR.exec (JR.invoke "setGroupInterface_1" JR.this [ (JR.field "ENEMY_ARRAY" (JR.local "basicGroupFactory")) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setGroupInterface_1" JR.this [ (JR.invoke "getGroupInterface_0" (JR.thisField "sourceLayerInterface") []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processTick_1 : JR.Method
jm_processTick_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.and (JR.invoke "isExhausted_0" JR.this []) (JR.map JR.not_ (JR.invoke "isDestroyed_0" JR.this []))) (JR.run [ 
                        JR.ifElse (JR.invoke "isReadyForExplosion_0" JR.this []) (JR.run [ 
                            JR.declare "indexedAnimationInterface" "" (JR.invoke "getAnimationInterface_0" JR.this []), 
                            JR.declare "currentFrame" "I" (JR.invoke "getFrame_0" (JR.local "indexedAnimationInterface") []), 
                            JR.ifElse (JR.map2 JR.less (JR.local "currentFrame") (JR.map2 JR.sub (JR.invoke "getAnimationSize_0" (JR.local "indexedAnimationInterface") []) (JR.int 1))) (JR.run [ 
                                JR.exec (JR.invoke "nextFrame_0" (JR.local "indexedAnimationInterface") []) ]) (JR.run [ 
                                JR.exec (JR.invoke "setDestroyed_1" JR.this [ (JR.bool True) ]) ]) ]) (JR.run [ 
                            JR.declare "collidableWeaponBehavior" "" (JR.invoke "getCollidableInferface_0" JR.this []), 
                            JR.ifElse (JR.invoke "isCollided_0" (JR.local "collidableWeaponBehavior") []) (JR.run [ 
                                JR.exec (JR.invoke "setAnimationInterface_1" JR.this [ (JR.thisField "destroyedAnimationInterface") ]), 
                                JR.exec (JR.invoke "stop_0" (JR.invoke "getMovement_0" JR.this []) []), 
                                JR.exec (JR.invoke "setReadyForExplosion_1" JR.this [ (JR.bool True) ]) ]) (JR.run [ 
                                JR.exec (JR.invoke "setDestroyed_1" JR.this [ (JR.bool True) ]) ]) ]) ]) identity, 
                    JR.exec (JR.invoke "process_1" (JR.thisField "movement") [ JR.this ]), 
                    JR.exec (JR.setField "totalDamage" "I" JR.this (JR.map2 JR.add (JR.thisField "totalDamage") (JR.invoke "getDissipation_0" (JR.thisField "weaponProperties") []))) ])
        (jregister jheap)
        jthis
        jargs


jm_isDestroyed_0 : JR.Method
jm_isDestroyed_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "destroyed") ])
        (jregister jheap)
        jthis
        jargs


jm_damage_2 : JR.Method
jm_damage_2 jheap jthis jargs =
    JR.method [ ( "damage", "I" ), ( "damageType", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "totalDamage" "I" JR.this (JR.map2 JR.add (JR.thisField "totalDamage") (JR.map2 JR.mul (JR.local "damage") (JR.local "damage")))) ])
        (jregister jheap)
        jthis
        jargs


jm_givePoints_1 : JR.Method
jm_givePoints_1 jheap jthis jargs =
    JR.method [ ( "total", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addPoints_1" (JR.thisField "scoreableInterface") [ (JR.map2 JR.mul (JR.invoke "getCompetitionValue_0" (JR.callStatic GameConfigurationUtil.jm_getInstance_0 []) []) (JR.local "total")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isExhausted_0 : JR.Method
jm_isExhausted_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.greater (JR.thisField "totalDamage") (JR.invoke "getInitDamage_0" JR.this [])) (JR.map2 JR.less (JR.thisField "totalDamage") (JR.int 0))) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getDamage_1 : JR.Method
jm_getDamage_1 jheap jthis jargs =
    JR.method [ ( "damageType", "I" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isExhausted_0" JR.this [])) (JR.run [ 
                        JR.declare "total" "I" (JR.map2 JR.sub (JR.invoke "getInitDamage_0" JR.this []) (JR.thisField "totalDamage")), 
                        JR.exec (JR.invoke "givePoints_1" JR.this [ (JR.local "total") ]), 
                        JR.return (JR.local "total") ]) identity, 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_setDestroyed_1 : JR.Method
jm_setDestroyed_1 jheap jthis jargs =
    JR.method [ ( "destroyed", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "destroyed" "Z" JR.this (JR.local "destroyed")), 
                    JR.ifElse (JR.invoke "isDestroyed_0" JR.this []) (JR.run [ 
                        JR.exec (JR.setField "scoreableInterface" "" JR.this (JR.callStatic NoScoreable.jm_getInstance_0 [])), 
                        JR.exec (JR.invoke "add_1" (JR.callStatic DestroyedLayerProcessor.jm_getInstance_0 []) [ JR.this ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInitDamage_0 : JR.Method
jm_getInitDamage_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "initDamage") ])
        (jregister jheap)
        jthis
        jargs


jm_setAnimationInterface_1 : JR.Method
jm_setAnimationInterface_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_getAnimationInterface_0 : JR.Method
jm_getAnimationInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "animationInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_getInitAnimationInterfaceP_0 : JR.Method
jm_getInitAnimationInterfaceP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "initAnimationInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setInitAnimationInterfaceP_1 : JR.Method
jm_setInitAnimationInterfaceP_1 jheap jthis jargs =
    JR.method [ ( "initAnimationInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "initAnimationInterface" "" JR.this (JR.local "initAnimationInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDestroyedAnimationInterface_0 : JR.Method
jm_getDestroyedAnimationInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "destroyedAnimationInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_getOwnerLayerInterface_0 : JR.Method
jm_getOwnerLayerInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "sourceLayerInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setOwnerLayerInterface_1 : JR.Method
jm_setOwnerLayerInterface_1 jheap jthis jargs =
    JR.method [ ( "sourceLayerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "sourceLayerInterface" "" JR.this (JR.local "sourceLayerInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "viewPosition" "" (JR.invoke "getViewPosition_0" JR.this []), 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.map2 JR.sub (JR.invoke "getX_0" (JR.local "viewPosition") []) (JR.invoke "getHalfWidth_0" JR.this [])), (JR.map2 JR.sub (JR.invoke "getY_0" (JR.local "viewPosition") []) (JR.invoke "getHalfHeight_0" JR.this [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "viewPosition" "" (JR.invoke "getViewPosition_0" JR.this []), 
                    JR.exec (JR.invoke "paintThreedXYZ_4" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.map2 JR.sub (JR.invoke "getX_0" (JR.local "viewPosition") []) (JR.invoke "getHalfWidth_0" JR.this [])), (JR.map2 JR.sub (JR.invoke "getY_0" (JR.local "viewPosition") []) (JR.invoke "getHalfHeight_0" JR.this [])), (JR.map2 JR.sub (JR.invoke "getZ_0" (JR.local "viewPosition") []) (JR.invoke "getHalfDepth_0" JR.this [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getMovement_0 : JR.Method
jm_getMovement_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "movement") ])
        (jregister jheap)
        jthis
        jargs


jm_setMovement_1 : JR.Method
jm_setMovement_1 jheap jthis jargs =
    JR.method [ ( "movement", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "movement" "" JR.this (JR.local "movement")) ])
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callStatic jm_getStaticType_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_getStaticType_0 : JR.Method
jm_getStaticType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getMultiPlayerType_0 : JR.Method
jm_getMultiPlayerType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "multiPlayerType") ])
        (jregister jheap)
        jthis
        jargs


jm_setWeaponPropertiesP_1 : JR.Method
jm_setWeaponPropertiesP_1 jheap jthis jargs =
    JR.method [ ( "weaponProperties", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "weaponProperties" "" JR.this (JR.local "weaponProperties")) ])
        (jregister jheap)
        jthis
        jargs


jm_getWeaponPropertiesP_0 : JR.Method
jm_getWeaponPropertiesP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "weaponProperties") ])
        (jregister jheap)
        jthis
        jargs


jm_implmentsTickableInterface_0 : JR.Method
jm_implmentsTickableInterface_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "set_1" (JR.thisField "initAnimationInterface") [ (JR.local "gl") ]) ])
        (jregister jheap)
        jthis
        jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

