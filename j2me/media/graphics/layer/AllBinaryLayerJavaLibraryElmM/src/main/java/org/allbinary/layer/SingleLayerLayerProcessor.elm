module Org.Allbinary.Layer.SingleLayerLayerProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Layer.LayerProcessor as LayerProcessor
import Org.Allbinary.Layer.SingleLayerLayerManager as SingleLayerLayerManager


jclass : String
jclass =
    "SingleLayerLayerProcessor"


jchain : List String
jchain =
    [ "SingleLayerLayerProcessor" ]
        ++ LayerProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    LayerProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "process_1", jm_process_1 ) ]
        LayerProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SingleLayerLayerProcessor"
        [ ( "jm_process_1", jm_process_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect LayerProcessor.jinit_1 JR.this [ (JR.new SingleLayerLayerManager.jnew_0 []) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.declare "layerManager" "" (JR.invoke "getLayerManager_0" JR.this []), 
                    JR.exec (JR.invoke "processAt_3" JR.this [ (JR.local "allBinaryLayerManager"), (JR.invoke "getLayerAt_1" (JR.local "layerManager") [ (JR.int 0) ]), (JR.int 0) ]) ])
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

