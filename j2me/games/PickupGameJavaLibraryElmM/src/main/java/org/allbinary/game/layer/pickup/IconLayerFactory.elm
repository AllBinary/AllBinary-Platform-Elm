module Org.Allbinary.Game.Layer.Pickup.IconLayerFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.Game.Layer.Pickup.IconLayer as IconLayer


jclass : String
jclass =
    "IconLayerFactory"


jchain : List String
jchain =
    [ "IconLayerFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_3", jm_getInstance_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IconLayerFactory"
        [ ( "jm_getInstance_3", jm_getInstance_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_getInstance_3 : JR.Method
jm_getInstance_3 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new IconLayer.jnew_3 [ (JR.local "animationInterface"), (JR.local "width"), (JR.local "height") ]) ])
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

