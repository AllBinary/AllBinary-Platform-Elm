module Org.Allbinary.Game.Ag.Ai.Scroller.RandomPatrolFlockingFiringAIFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.scroller
-}

import JR
import Org.Allbinary.Game.Ag.Ai.ArrayAI as ArrayAI
import Org.Allbinary.Game.Ai.ArtificialIntelligenceInterfaceFactoryInterface as ArtificialIntelligenceInterfaceFactoryInterface
import Org.Allbinary.Game.Ag.Ai.Scroller.RandomPatrolAI as RandomPatrolAI
import Org.Allbinary.Game.Ag.Ai.Scroller.TimedFireAI as TimedFireAI


jclass : String
jclass =
    "RandomPatrolFlockingFiringAIFactory"


jchain : List String
jchain =
    [ "RandomPatrolFlockingFiringAIFactory" ]
        ++ ArtificialIntelligenceInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_3", jm_getInstance_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RandomPatrolFlockingFiringAIFactory"
        [ ( "jm_getInstance_3", jm_getInstance_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getInstance_3 : JR.Method
jm_getInstance_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ 
                    JR.declare "artificialIntelligenceInterface" "" (JR.newArray "" [ (JR.int 2) ]), 
                    JR.exec (JR.andThen (JR.local "artificialIntelligenceInterface") (\jaN67806 -> JR.andThen (JR.int 0) (\jiN67806 -> (JR.aset (JR.lit jaN67806) (JR.lit jiN67806) (JR.new RandomPatrolAI.jnew_3 [ (JR.local "hashtable"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]))))), 
                    JR.exec (JR.andThen (JR.local "artificialIntelligenceInterface") (\jaN67870 -> JR.andThen (JR.int 1) (\jiN67870 -> (JR.aset (JR.lit jaN67870) (JR.lit jiN67870) (JR.new TimedFireAI.jnew_3 [ (JR.int 1800), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]))))), 
                    JR.return (JR.new ArrayAI.jnew_3 [ (JR.local "artificialIntelligenceInterface"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]) ])
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

