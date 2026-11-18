module Org.Allbinary.Game.Layer.Pickup.PickedUpLayerInterfaceFactoryBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.Game.Layer.Pickup.PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterface


jclass : String
jclass =
    "PickedUpLayerInterfaceFactoryBase"


jchain : List String
jchain =
    [ "PickedUpLayerInterfaceFactoryBase" ]
        ++ PickedUpLayerInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getIconLayer_0", jm_getIconLayer_0 )
        , ( "getAnimationInterface_0", jm_getAnimationInterface_0 )
        , ( "getPickedUpLayerType_0", jm_getPickedUpLayerType_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PickedUpLayerInterfaceFactoryBase"
        [ ( "jm_getIconLayer_0", jm_getIconLayer_0 ), ( "jm_getAnimationInterface_0", jm_getAnimationInterface_0 ), ( "jm_getPickedUpLayerType_0", jm_getPickedUpLayerType_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE", jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE : JR.M
jstatic_NULL_PICKED_UP_LAYER_FACTORY_BASE s =
    JR.static "PickedUpLayerInterfaceFactoryBase" jclinit "NULL_PICKED_UP_LAYER_FACTORY_BASE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getIconLayer_0 : JR.Method
jm_getIconLayer_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getAnimationInterface_0 : JR.Method
jm_getAnimationInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getPickedUpLayerType_0 : JR.Method
jm_getPickedUpLayerType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
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

