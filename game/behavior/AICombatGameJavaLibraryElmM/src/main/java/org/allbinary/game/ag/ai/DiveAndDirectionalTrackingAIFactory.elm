module Org.Allbinary.Game.Ag.Ai.DiveAndDirectionalTrackingAIFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Ai.ArtificialIntelligenceInterfaceFactoryInterface as ArtificialIntelligenceInterfaceFactoryInterface
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Org.Allbinary.Game.Ag.Ai.BasicProbabilityAIDataFactory as BasicProbabilityAIDataFactory
import Org.Allbinary.Game.Ag.Ai.Tactical.BasicRandomAIFactory as BasicRandomAIFactory
import Org.Allbinary.Game.Ag.Ai.DiveAndDirectionalTrackingAI as DiveAndDirectionalTrackingAI
import Org.Allbinary.Game.Ag.Ai.LastKeyAIVisitorFactory as LastKeyAIVisitorFactory
import Org.Allbinary.Game.Ag.Ai.ThrustAIVisitorFactory as ThrustAIVisitorFactory


jclass : String
jclass =
    "DiveAndDirectionalTrackingAIFactory"


jchain : List String
jchain =
    [ "DiveAndDirectionalTrackingAIFactory" ]
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
    JR.register "DiveAndDirectionalTrackingAIFactory"
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
                    JR.declare "visitorCanBeNull" "" (JR.invoke "get_1" (JR.local "hashtable") [ BasicAI.jstatic_AI_VISITOR ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "visitorCanBeNull") JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "visitorCanBeNull" "" (JR.callStatic ThrustAIVisitorFactory.jm_getInstance_0 [])) ]) identity, 
                    JR.declare "hashtable2" "" (JR.invoke "getInstance_0" (JR.new BasicProbabilityAIDataFactory.jnew_0 []) []), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashtable2") [ BasicAI.jstatic_AI_VISITOR, (JR.callStatic LastKeyAIVisitorFactory.jm_getInstance_0 []) ]), 
                    JR.declare "artificialIntelligenceInterface" "" (JR.invoke "getInstance_3" (JR.new BasicRandomAIFactory.jnew_0 []) [ (JR.local "hashtable2"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]), 
                    JR.return (JR.new DiveAndDirectionalTrackingAI.jnew_4 [ (JR.local "ownerLayerInterface"), (JR.local "artificialIntelligenceInterface"), (JR.local "gameInput"), (JR.local "visitorCanBeNull") ]) ])
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

