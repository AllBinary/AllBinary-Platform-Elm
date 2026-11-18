module Org.Allbinary.Game.Ag.Ai.Sequence.NumberLayersSequenceAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.sequence
-}

import JR
import Org.Allbinary.Game.Ag.Ai.Sequence.SequenceAI as SequenceAI


jclass : String
jclass =
    "NumberLayersSequenceAI"


jchain : List String
jchain =
    [ "NumberLayersSequenceAI" ]
        ++ SequenceAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    SequenceAI.jfields ++ [ ( "numberOfLayersLeft", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 ) ]
        SequenceAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NumberLayersSequenceAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "numberOfEnemiesLeft", "I" ), ( "artificialIntelligenceInterface", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SequenceAI.jinit_3 JR.this [ (JR.local "artificialIntelligenceInterface"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "numberOfLayersLeft" "I" JR.this (JR.local "numberOfEnemiesLeft")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getIndex_0" JR.this []) (JR.int 0)) (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.invoke "getSize_0" (JR.local "allBinaryLayerManager") []) (JR.thisField "numberOfLayersLeft")) (JR.run [ 
                            JR.exec (JR.invoke "setIndex_1" JR.this [ (JR.int 1) ]) ]) identity ]) identity, 
                    JR.exec (JR.callVia SequenceAI.jvtable "processAI_1" JR.this [ (JR.local "allBinaryLayerManager") ]) ])
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

