module Org.Allbinary.Game.Layer.Pickup.CountedPickedUpLayerInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Layer.Pickup.CountedPickedUpLayerInterfaceFactoryInterface as CountedPickedUpLayerInterfaceFactoryInterface
import Org.Allbinary.Game.Layer.Pickup.CountedPickedUpLayerInterfaceFactoryPool as CountedPickedUpLayerInterfaceFactoryPool
import Org.Allbinary.Game.Layer.Pickup.IconLayer as IconLayer
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Game.Layer.Pickup.PickedUpLayerInterfaceFactory as PickedUpLayerInterfaceFactory
import Org.Allbinary.Game.Layer.Pickup.PickedUpLayerTypeFactory as PickedUpLayerTypeFactory


jclass : String
jclass =
    "CountedPickedUpLayerInterfaceFactory"


jchain : List String
jchain =
    [ "CountedPickedUpLayerInterfaceFactory" ]
        ++ PickedUpLayerInterfaceFactory.jchain
        ++ CountedPickedUpLayerInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    PickedUpLayerInterfaceFactory.jfields ++ [ ( "id", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getNextInstance_4", jm_getNextInstance_4 )
        , ( "getTotal_0", jm_getTotal_0 )
        , ( "getId_0", jm_getId_0 ) ]
        PickedUpLayerInterfaceFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CountedPickedUpLayerInterfaceFactory"
        [ ( "jm_getNextInstance_4", jm_getNextInstance_4 ), ( "jm_getTotal_0", jm_getTotal_0 ), ( "jm_getId_0", jm_getId_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY", jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY : JR.M
jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY s =
    JR.static "CountedPickedUpLayerInterfaceFactory" jclinit "NULL_COUNTED_PICKUP_LAYER_FACTORY"
        (JR.new jnew_3 [ (JR.field "NONE" (JR.callStatic PickedUpLayerTypeFactory.jm_getInstance_0 [])), IconLayer.jstatic_NULL_ICON_LAYER, (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ]) ])
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "pickeUpLayerType", "" ), ( "iconLayer", "" ), ( "animationInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect PickedUpLayerInterfaceFactory.jinit_3 JR.this [ (JR.local "pickeUpLayerType"), (JR.local "iconLayer"), (JR.local "animationInterface") ]),
                identity,
                (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getList_0" (JR.callStatic CountedPickedUpLayerInterfaceFactoryPool.jm_getInstance_0 []) []), 
                    JR.exec (JR.setField "id" "I" JR.this (JR.invoke "size_0" (JR.local "list") [])), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getNextInstance_4 : JR.Method
jm_getNextInstance_4 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.callStatic CommonStrings.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getTotal_0 : JR.Method
jm_getTotal_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_getId_0 : JR.Method
jm_getId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "id") ])
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

