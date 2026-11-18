module Org.Allbinary.Ai.ArtificialIntelligenceLayerProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.ai
-}

import JR
import Org.Allbinary.Ai.ArtificialIntelligenceLayerManager as ArtificialIntelligenceLayerManager
import Org.Allbinary.Layer.LayerProcessor as LayerProcessor


jclass : String
jclass =
    "ArtificialIntelligenceLayerProcessor"


jchain : List String
jchain =
    [ "ArtificialIntelligenceLayerProcessor" ]
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
    JR.register "ArtificialIntelligenceLayerProcessor"
        [ ( "jm_processAt_3", jm_processAt_3 ), ( "jm_isProcessorLayer_1", jm_isProcessorLayer_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect LayerProcessor.jinit_1 JR.this [ (JR.new ArtificialIntelligenceLayerManager.jnew_0 []) ]),
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
                    JR.declare "artificialIntelligenceCompositeInterface" "" (JR.local "layerInterface"), 
                    JR.exec (JR.invoke "processAI_1" (JR.invoke "getArtificialIntelligenceInterface_0" (JR.local "artificialIntelligenceCompositeInterface") []) [ (JR.local "allBinaryLayerManager") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isProcessorLayer_1 : JR.Method
jm_isProcessorLayer_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "implmentsArtificialIntelligenceCompositeInterface_0" (JR.local "layerInterface") []) (JR.run [ 
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

