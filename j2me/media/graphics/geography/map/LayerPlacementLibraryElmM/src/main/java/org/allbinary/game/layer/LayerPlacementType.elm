module Org.Allbinary.Game.Layer.LayerPlacementType exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR



jclass : String
jclass =
    "LayerPlacementType"


jchain : List String
jchain =
    [ "LayerPlacementType" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "type", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getType_0", jm_getType_0 )
        , ( "setType_1", jm_setType_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerPlacementType"
        [ ( "jm_getType_0", jm_getType_0 ), ( "jm_setType_1", jm_setType_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "type", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "type" "I" JR.this (JR.local "type")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "type") ])
        (jregister jheap)
        jthis
        jargs


jm_setType_1 : JR.Method
jm_setType_1 jheap jthis jargs =
    JR.method [ ( "type", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "type" "I" JR.this (JR.local "type")) ])
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

