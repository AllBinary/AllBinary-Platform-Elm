module Org.Allbinary.Game.Input.GameInputLayerProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.GameInputLayerManager as GameInputLayerManager
import Org.Allbinary.Layer.LayerProcessor as LayerProcessor


jclass : String
jclass =
    "GameInputLayerProcessor"


jchain : List String
jchain =
    [ "GameInputLayerProcessor" ]
        ++ LayerProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    LayerProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "processAt_3", jm_processAt_3 )
        , ( "isProcessorLayer_1", jm_isProcessorLayer_1 ) ]
        LayerProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInputLayerProcessor"
        [ ( "jm_processAt_3", jm_processAt_3 ), ( "jm_isProcessorLayer_1", jm_isProcessorLayer_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect LayerProcessor.jinit_1 JR.this [ (JR.new GameInputLayerManager.jnew_0 []) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_processAt_3 : JR.Method
jm_processAt_3 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ), ( "layerInterface", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "gameInputInterface" "" (JR.local "layerInterface"), 
                    JR.exec (JR.invoke "processInput_1" (JR.local "gameInputInterface") [ (JR.local "allBinaryLayerManager") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isProcessorLayer_1 : JR.Method
jm_isProcessorLayer_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "implmentsGameInputInterface_0" (JR.local "layerInterface") []) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
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

