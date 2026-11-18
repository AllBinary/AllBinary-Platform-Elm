module Org.Allbinary.Game.Ag.Ai.Sequence.ComboSequenceAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.sequence
-}

import JR
import Org.Allbinary.Game.Ag.Ai.Sequence.SequenceAI as SequenceAI


jclass : String
jclass =
    "ComboSequenceAI"


jchain : List String
jchain =
    [ "ComboSequenceAI" ]
        ++ SequenceAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    SequenceAI.jfields ++ []


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 ) ]
        SequenceAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ComboSequenceAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "artificialIntelligenceInterface", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SequenceAI.jinit_3 JR.this [ (JR.local "artificialIntelligenceInterface"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.declare "artificialIntelligenceInterfaceArray" "" (JR.invoke "getArtificialIntelligenceInterface_0" JR.this []), 
                    JR.declare "size" "I" (JR.alength (JR.local "artificialIntelligenceInterfaceArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68467 -> (JR.setLocal "index" "I" (JR.lit jwN68467))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "setIndex_1" JR.this [ (JR.local "index") ]), 
                        JR.exec (JR.callVia SequenceAI.jvtable "processAI_1" JR.this [ (JR.local "allBinaryLayerManager") ]) ]) ] ])
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

