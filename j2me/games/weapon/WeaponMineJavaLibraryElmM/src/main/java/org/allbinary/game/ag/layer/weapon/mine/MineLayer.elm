module Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.weapon.mine
-}

import JR
import Org.Allbinary.Ag.Weapon.Media.Audio.DropWeaponSound as DropWeaponSound
import Org.Allbinary.Animation.FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactory
import Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineWeaponResources as MineWeaponResources
import Org.Allbinary.Physics.Movement.NoMovementFactory as NoMovementFactory
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle
import Org.Allbinary.Game.Multiplayer.Layer.RemoteInfo as RemoteInfo
import Org.Allbinary.Media.Audio.SecondaryPlayerQueueFactory as SecondaryPlayerQueueFactory
import Org.Allbinary.Game.Layer.Weapon.SimpleWeaponLayer as SimpleWeaponLayer
import Org.Allbinary.View.Event.ViewPositionEventHandler as ViewPositionEventHandler


jclass : String
jclass =
    "MineLayer"


jchain : List String
jchain =
    [ "MineLayer" ]
        ++ SimpleWeaponLayer.jchain


jfields : List ( String, JR.JValue )
jfields =
    SimpleWeaponLayer.jfields ++ [ ( "viewPositionEventHandler", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "initXYZ_3", jm_initXYZ_3 )
        , ( "damage_2", jm_damage_2 )
        , ( "getDamage_1", jm_getDamage_1 )
        , ( "setDestroyed_1", jm_setDestroyed_1 ) ]
        SimpleWeaponLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MineLayer"
        [ ( "jm_initXYZ_3", jm_initXYZ_3 ), ( "jm_damage_2", jm_damage_2 ), ( "jm_getDamage_1", jm_getDamage_1 ), ( "jm_setDestroyed_1", jm_setDestroyed_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "MineLayer" jclinit "NAME"
        (JR.str "MineLayer")
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "viewPosition", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SimpleWeaponLayer.jinit_8 JR.this [ jstatic_NAME, RemoteInfo.jstatic_REMOTE_INFO, (JR.map JR.neg (JR.int 1)), (JR.invoke "getMovmentInstance_0" (JR.callStatic NoMovementFactory.jm_getInstance_0 []) []), (JR.invoke "getInstance_1" (JR.invoke "get_1" (JR.callStatic FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0 []) [ (JR.field "RESOURCE" (JR.callStatic MineWeaponResources.jm_getInstance_0 [])) ]) [ (JR.int 0) ]), (JR.callStatic SimpleWeaponLayer.jm_createDestroyed_0 []), (JR.new Rectangle.jnew_3 [ (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 [])), (JR.int 10), (JR.int 10) ]), (JR.local "viewPosition") ]),
                JR.exec (JR.setField "viewPositionEventHandler" "" JR.this (JR.callStatic ViewPositionEventHandler.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_initXYZ_3 : JR.Method
jm_initXYZ_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPosition_3" JR.this [ (JR.map2 JR.add (JR.local "x") (JR.int 5)), (JR.map2 JR.add (JR.local "y") (JR.int 5)), (JR.local "z") ]), 
                    JR.exec (JR.invoke "addListener_1" (JR.thisField "viewPositionEventHandler") [ JR.this ]), 
                    JR.exec (JR.invoke "add_1" (JR.callStatic SecondaryPlayerQueueFactory.jm_getInstance_0 []) [ (JR.callStatic DropWeaponSound.jm_getInstance_0 []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_damage_2 : JR.Method
jm_damage_2 jheap jthis jargs =
    JR.method [ ( "damage", "I" ), ( "damageType", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "totalDamage" "" JR.this (JR.map2 JR.add (JR.invoke "getInitDamage_0" JR.this []) (JR.int 1))) ])
        (jregister jheap)
        jthis
        jargs


jm_getDamage_1 : JR.Method
jm_getDamage_1 jheap jthis jargs =
    JR.method [ ( "damageType", "I" ) ] "I"
        (JR.run [ 
                    JR.exec (JR.callVia SimpleWeaponLayer.jvtable "getDamage_1" JR.this [ (JR.local "damageType") ]), 
                    JR.return (JR.invoke "getInitDamage_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setDestroyed_1 : JR.Method
jm_setDestroyed_1 jheap jthis jargs =
    JR.method [ ( "destroyed", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia SimpleWeaponLayer.jvtable "setDestroyed_1" JR.this [ (JR.local "destroyed") ]), 
                    JR.ifElse (JR.invoke "isDestroyed_0" JR.this []) (JR.run [ 
                        JR.exec (JR.invoke "removeListener_1" (JR.thisField "viewPositionEventHandler") [ JR.this ]) ]) identity ])
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

