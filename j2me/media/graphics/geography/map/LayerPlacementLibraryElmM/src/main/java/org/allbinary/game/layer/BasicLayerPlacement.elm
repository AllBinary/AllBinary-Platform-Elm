module Org.Allbinary.Game.Layer.BasicLayerPlacement exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR



jclass : String
jclass =
    "BasicLayerPlacement"


jchain : List String
jchain =
    [ "BasicLayerPlacement" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "layerType", JR.defaultOf "" ), ( "width", JR.defaultOf "I" ), ( "height", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getWidth_0", jm_getWidth_0 )
        , ( "getHeight_0", jm_getHeight_0 )
        , ( "getLayerType_0", jm_getLayerType_0 )
        , ( "setLayerType_1", jm_setLayerType_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicLayerPlacement"
        [ ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jm_getLayerType_0", jm_getLayerType_0 ), ( "jm_setLayerType_1", jm_setLayerType_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "layerType", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "layerType" "" JR.this (JR.local "layerType")), 
                    JR.exec (JR.setField "width" "I" JR.this (JR.local "width")), 
                    JR.exec (JR.setField "height" "I" JR.this (JR.local "height")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "width") ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "height") ])
        (jregister jheap)
        jthis
        jargs


jm_getLayerType_0 : JR.Method
jm_getLayerType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "layerType") ])
        (jregister jheap)
        jthis
        jargs


jm_setLayerType_1 : JR.Method
jm_setLayerType_1 jheap jthis jargs =
    JR.method [ ( "layerType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "layerType" "" JR.this (JR.local "layerType")) ])
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

