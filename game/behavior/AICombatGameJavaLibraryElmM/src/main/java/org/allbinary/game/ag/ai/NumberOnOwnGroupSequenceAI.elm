module Org.Allbinary.Game.Ag.Ai.NumberOnOwnGroupSequenceAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Layer.Identification.GroupLayerManagerListener as GroupLayerManagerListener
import Org.Allbinary.Game.Ag.Ai.Sequence.SequenceAI as SequenceAI


jclass : String
jclass =
    "NumberOnOwnGroupSequenceAI"


jchain : List String
jchain =
    [ "NumberOnOwnGroupSequenceAI" ]
        ++ SequenceAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    SequenceAI.jfields ++ [ ( "numberOnSameTeam", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 ) ]
        SequenceAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NumberOnOwnGroupSequenceAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "numberOnSameTeam", "" ), ( "artificialIntelligenceInterface", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SequenceAI.jinit_3 JR.this [ (JR.local "artificialIntelligenceInterface"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "numberOnSameTeam" "" JR.this (JR.local "numberOnSameTeam")) ]) ])
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
                    JR.declare "layerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.declare "index" "I" (JR.invoke "getIndex_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.greater (JR.alength (JR.thisField "numberOnSameTeam")) (JR.local "index")) (JR.run [ 
                        JR.declare "size" "I" (JR.invoke "getGroupSizeFromInterface_1" (JR.callStatic GroupLayerManagerListener.jm_getInstance_0 []) [ (JR.local "layerInterface") ]), 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "intValue_0" (JR.aget (JR.thisField "numberOnSameTeam") (JR.local "index")) []) (JR.local "size")) (JR.run [ 
                            JR.exec (JR.invoke "next_0" JR.this []) ]) identity ]) identity, 
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

