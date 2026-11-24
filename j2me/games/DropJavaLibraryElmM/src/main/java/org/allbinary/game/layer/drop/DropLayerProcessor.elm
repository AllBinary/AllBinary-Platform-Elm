module Org.Allbinary.Game.Layer.Drop.DropLayerProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.drop
-}

import JR
import Org.Allbinary.Layer.BasicLayerProcessor as BasicLayerProcessor


jclass : String
jclass =
    "DropLayerProcessor"


jchain : List String
jchain =
    [ "DropLayerProcessor" ]
        ++ BasicLayerProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicLayerProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_1", jm_process_1 ) ]
        BasicLayerProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DropLayerProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_1", jm_process_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_LAYER_PROCESSOR", jstatic_LAYER_PROCESSOR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_LAYER_PROCESSOR : JR.M
jstatic_LAYER_PROCESSOR s =
    JR.static "DropLayerProcessor" jclinit "LAYER_PROCESSOR"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicLayerProcessor.jinit_0 JR.this []),
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
                    JR.return jstatic_LAYER_PROCESSOR ])
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getList_0" JR.this []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "layerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "dropLayerInterface" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68457 -> (JR.setLocal "index" "I" (JR.lit jwN68457))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "layerInterface" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.setLocal "dropLayerInterface" "" (JR.local "layerInterface")), 
                        JR.exec (JR.setLocal "layerInterface" "" (JR.invoke "getDroppedLayer_0" (JR.local "dropLayerInterface") [])), 
                        JR.exec (JR.invoke "append_1" (JR.local "allBinaryLayerManager") [ (JR.local "layerInterface") ]) ]) ], 
                    JR.exec (JR.invoke "clear_0" (JR.local "list") []) ])
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

