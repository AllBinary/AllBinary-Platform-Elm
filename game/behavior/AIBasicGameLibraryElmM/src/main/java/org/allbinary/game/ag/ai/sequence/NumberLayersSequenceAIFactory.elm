module Org.Allbinary.Game.Ag.Ai.Sequence.NumberLayersSequenceAIFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.sequence
-}

import JR
import Org.Allbinary.Game.Ag.Ai.Sequence.NumberLayersSequenceAI as NumberLayersSequenceAI


jclass : String
jclass =
    "NumberLayersSequenceAIFactory"


jchain : List String
jchain =
    [ "NumberLayersSequenceAIFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_4", jm_getInstance_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NumberLayersSequenceAIFactory"
        [ ( "jm_getInstance_4", jm_getInstance_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getInstance_4 : JR.Method
jm_getInstance_4 jheap jthis jargs =
    JR.method [ ( "numberOfEnemiesLeft", "I" ), ( "artificialIntelligenceInterface", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new NumberLayersSequenceAI.jnew_4 [ (JR.local "numberOfEnemiesLeft"), (JR.local "artificialIntelligenceInterface"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]) ])
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

