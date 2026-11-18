module Org.Allbinary.Game.Layer.Weapon.WeaponLayerCircularPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.weapon
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayerCircularPool as AllBinaryLayerCircularPool


jclass : String
jclass =
    "WeaponLayerCircularPool"


jchain : List String
jchain =
    [ "WeaponLayerCircularPool" ]
        ++ AllBinaryLayerCircularPool.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryLayerCircularPool.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstanceWeaponLayer_8", jm_getInstanceWeaponLayer_8 ) ]
        AllBinaryLayerCircularPool.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WeaponLayerCircularPool"
        [ ( "jm_getInstanceWeaponLayer_8", jm_getInstanceWeaponLayer_8 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryLayerCircularPool.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstanceWeaponLayer_8 : JR.Method
jm_getInstanceWeaponLayer_8 jheap jthis jargs =
    JR.method [ ( "sourceLayerInterface", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ), ( "angle", "I" ), ( "otherAngle", "I" ), ( "weaponProperties", "" ), ( "scoreable", "" ) ] ""
        (JR.run [ 
                    JR.declare "weaponLayer" "" (JR.callVia AllBinaryLayerCircularPool.jvtable "getNextInstance_0" JR.this []), 
                    JR.exec (JR.invoke "initXYZ_3" (JR.local "weaponLayer") [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]), 
                    JR.exec (JR.invoke "init_5" (JR.local "weaponLayer") [ (JR.local "sourceLayerInterface"), (JR.local "angle"), (JR.local "otherAngle"), (JR.local "weaponProperties"), (JR.local "scoreable") ]), 
                    JR.return (JR.local "weaponLayer") ])
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

