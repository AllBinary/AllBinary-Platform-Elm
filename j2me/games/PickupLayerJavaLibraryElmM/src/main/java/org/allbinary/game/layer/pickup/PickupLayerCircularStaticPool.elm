module Org.Allbinary.Game.Layer.Pickup.PickupLayerCircularStaticPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayerCircularPool as AllBinaryLayerCircularPool


jclass : String
jclass =
    "PickupLayerCircularStaticPool"


jchain : List String
jchain =
    [ "PickupLayerCircularStaticPool" ]
        ++ AllBinaryLayerCircularPool.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryLayerCircularPool.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstanceXYZ_4", jm_getInstanceXYZ_4 ) ]
        AllBinaryLayerCircularPool.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PickupLayerCircularStaticPool"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstanceXYZ_4", jm_getInstanceXYZ_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "PickupLayerCircularStaticPool" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceXYZ_4 : JR.Method
jm_getInstanceXYZ_4 jheap jthis jargs =
    JR.method [ ( "pickedUpLayerInterfaceFactoryInterface", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.declare "pickupLayer" "" (JR.invoke "getNextInstance_0" JR.this []), 
                    JR.exec (JR.invoke "initXYZ_3" (JR.local "pickupLayer") [ (JR.local "x"), (JR.local "y"), (JR.local "z") ]), 
                    JR.exec (JR.invoke "init_2" (JR.local "pickupLayer") [ (JR.local "pickedUpLayerInterfaceFactoryInterface"), (JR.invoke "getAnimationInterface_0" (JR.local "pickedUpLayerInterfaceFactoryInterface") []) ]), 
                    JR.return (JR.local "pickupLayer") ])
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

