module Org.Allbinary.Game.Layer.Pickup.PickupLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.Game.Identification.BasicGroupFactory as BasicGroupFactory
import Org.Allbinary.Game.Collision.CollidableAlwaysPickupNeverCollideBehaviorFactory as CollidableAlwaysPickupNeverCollideBehaviorFactory
import Org.Allbinary.Game.Layer.Pickup.CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactory
import Org.Allbinary.Game.Combat.Destroy.DestroyedLayerProcessor as DestroyedLayerProcessor
import Org.Allbinary.Game.Multiplayer.Layer.MultiPlayerGameLayer as MultiPlayerGameLayer
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Game.Layer.Pickup.PickedUpLayerInterface as PickedUpLayerInterface
import Org.Allbinary.Game.Layer.Pickup.PickupableInterface as PickupableInterface


jclass : String
jclass =
    "PickupLayer"


jchain : List String
jchain =
    [ "PickupLayer" ]
        ++ MultiPlayerGameLayer.jchain
        ++ PickedUpLayerInterface.jchain
        ++ PickupableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    MultiPlayerGameLayer.jfields ++ [ ( "pickedUpLayerInterfaceFactoryInterface", JR.defaultOf "" ), ( "destroyed", JR.defaultOf "Z" ), ( "animationInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_2", jm_init_2 )
        , ( "initXYZ_3", jm_initXYZ_3 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "getPickedUpLayerInterfaceFactoryInterface_0", jm_getPickedUpLayerInterfaceFactoryInterface_0 )
        , ( "setPickedUp_0", jm_setPickedUp_0 )
        , ( "isDestroyed_0", jm_isDestroyed_0 )
        , ( "setDestroyed_1", jm_setDestroyed_1 )
        , ( "damage_2", jm_damage_2 )
        , ( "getDamage_1", jm_getDamage_1 )
        , ( "set_1", jm_set_1 ) ]
        MultiPlayerGameLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PickupLayer"
        [ ( "jm_init_2", jm_init_2 ), ( "jm_initXYZ_3", jm_initXYZ_3 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_getPickedUpLayerInterfaceFactoryInterface_0", jm_getPickedUpLayerInterfaceFactoryInterface_0 ), ( "jm_setPickedUp_0", jm_setPickedUp_0 ), ( "jm_isDestroyed_0", jm_isDestroyed_0 ), ( "jm_setDestroyed_1", jm_setDestroyed_1 ), ( "jm_damage_2", jm_damage_2 ), ( "jm_getDamage_1", jm_getDamage_1 ), ( "jm_set_1", jm_set_1 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "remoteInfo", "" ), ( "total", "I" ), ( "pickedUpLayerInterfaceFactoryInterface", "" ), ( "animationInterface", "" ), ( "rectangle", "" ), ( "viewPosition", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect MultiPlayerGameLayer.jinit_5 JR.this [ (JR.local "remoteInfo"), (JR.field "NONE_ARRAY" (JR.callStatic BasicGroupFactory.jm_getInstance_0 [])), (JR.local "name"), (JR.local "rectangle"), (JR.local "viewPosition") ]),
                JR.exec (JR.setField "pickedUpLayerInterfaceFactoryInterface" "" JR.this CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY),
                JR.exec (JR.setField "animationInterface" "" JR.this (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setCollidableInferface_1" JR.this [ (JR.invoke "createBehavior_0" (JR.callStatic CollidableAlwaysPickupNeverCollideBehaviorFactory.jm_getInstance_0 []) []) ]), 
                    JR.exec (JR.invoke "setLayerWidth_1" JR.this [ (JR.int 10) ]), 
                    JR.exec (JR.invoke "setLayerHeight_1" JR.this [ (JR.int 10) ]), 
                    JR.exec (JR.invoke "init_2" JR.this [ (JR.local "pickedUpLayerInterfaceFactoryInterface"), (JR.local "animationInterface") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "pickedUpLayerInterfaceFactoryInterface", "" ), ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "pickedUpLayerInterfaceFactoryInterface" "" JR.this (JR.local "pickedUpLayerInterfaceFactoryInterface")), 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")), 
                    JR.exec (JR.invoke "setDestroyed_1" JR.this [ (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initXYZ_3 : JR.Method
jm_initXYZ_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPosition_3" JR.this [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "viewPosition" "" (JR.invoke "getViewPosition_0" JR.this []), 
                    JR.declare "viewX" "I" (JR.invoke "getX_0" (JR.local "viewPosition") []), 
                    JR.declare "viewY" "I" (JR.invoke "getY_0" (JR.local "viewPosition") []), 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.local "viewX"), (JR.local "viewY") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "viewPosition" "" (JR.invoke "getViewPosition_0" JR.this []), 
                    JR.declare "viewX" "I" (JR.invoke "getX_0" (JR.local "viewPosition") []), 
                    JR.declare "viewY" "I" (JR.invoke "getY_0" (JR.local "viewPosition") []), 
                    JR.exec (JR.invoke "paintThreedXYZ_4" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.local "viewX"), (JR.local "viewY"), (JR.int 3) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getPickedUpLayerInterfaceFactoryInterface_0 : JR.Method
jm_getPickedUpLayerInterfaceFactoryInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "pickedUpLayerInterfaceFactoryInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setPickedUp_0 : JR.Method
jm_setPickedUp_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setDestroyed_1" JR.this [ (JR.bool True) ]) ])
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


jm_setDestroyed_1 : JR.Method
jm_setDestroyed_1 jheap jthis jargs =
    JR.method [ ( "destroyed", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "destroyed" "Z" JR.this (JR.local "destroyed")), 
                    JR.ifElse (JR.invoke "isDestroyed_0" JR.this []) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.callStatic DestroyedLayerProcessor.jm_getInstance_0 []) [ JR.this ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_damage_2 : JR.Method
jm_damage_2 jheap jthis jargs =
    JR.method [ ( "damage", "I" ), ( "damageType", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getDamage_1 : JR.Method
jm_getDamage_1 jheap jthis jargs =
    JR.method [ ( "damageType", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        (JR.run [ 
                    JR.declare "openGLSurfaceChangedInterface" "" (JR.thisField "animationInterface"), 
                    JR.exec (JR.invoke "set_1" (JR.local "openGLSurfaceChangedInterface") [ (JR.local "gl") ]) ])
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

