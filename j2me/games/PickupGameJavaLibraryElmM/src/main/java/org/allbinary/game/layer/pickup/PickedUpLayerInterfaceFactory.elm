module Org.Allbinary.Game.Layer.Pickup.PickedUpLayerInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.Game.Layer.Pickup.PickedUpLayerInterfaceFactoryBase as PickedUpLayerInterfaceFactoryBase


jclass : String
jclass =
    "PickedUpLayerInterfaceFactory"


jchain : List String
jchain =
    [ "PickedUpLayerInterfaceFactory" ]
        ++ PickedUpLayerInterfaceFactoryBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    PickedUpLayerInterfaceFactoryBase.jfields ++ [ ( "pickedUpLayerType", JR.defaultOf "" ), ( "iconLayer", JR.defaultOf "" ), ( "animationInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getIconLayer_0", jm_getIconLayer_0 )
        , ( "getAnimationInterface_0", jm_getAnimationInterface_0 )
        , ( "getPickedUpLayerType_0", jm_getPickedUpLayerType_0 ) ]
        PickedUpLayerInterfaceFactoryBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PickedUpLayerInterfaceFactory"
        [ ( "jm_getIconLayer_0", jm_getIconLayer_0 ), ( "jm_getAnimationInterface_0", jm_getAnimationInterface_0 ), ( "jm_getPickedUpLayerType_0", jm_getPickedUpLayerType_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "pickeUpLayerType", "" ), ( "iconLayer", "" ), ( "animationInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect PickedUpLayerInterfaceFactoryBase.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "pickedUpLayerType" "" JR.this (JR.local "pickeUpLayerType")), 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")), 
                    JR.exec (JR.setField "iconLayer" "" JR.this (JR.local "iconLayer")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getIconLayer_0 : JR.Method
jm_getIconLayer_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "iconLayer") ])
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


jm_getPickedUpLayerType_0 : JR.Method
jm_getPickedUpLayerType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "pickedUpLayerType") ])
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

