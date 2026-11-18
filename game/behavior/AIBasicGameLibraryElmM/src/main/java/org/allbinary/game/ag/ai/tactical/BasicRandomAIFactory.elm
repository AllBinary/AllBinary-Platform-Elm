module Org.Allbinary.Game.Ag.Ai.Tactical.BasicRandomAIFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.tactical
-}

import JR
import Org.Allbinary.Game.Ai.ArtificialIntelligenceInterfaceFactoryInterface as ArtificialIntelligenceInterfaceFactoryInterface
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Org.Allbinary.Game.Ag.Ai.Tactical.BasicRandomAI as BasicRandomAI
import Org.Allbinary.Game.Ag.Ai.InputProbability as InputProbability


jclass : String
jclass =
    "BasicRandomAIFactory"


jchain : List String
jchain =
    [ "BasicRandomAIFactory" ]
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
    JR.register "BasicRandomAIFactory"
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
                    JR.declare "visitor" "" (JR.invoke "get_1" (JR.local "hashtable") [ BasicAI.jstatic_AI_VISITOR ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "visitor") JR.null) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "No Visitor Provided") ]) ]) identity, 
                    JR.declare "inputProbability" "" (JR.invoke "get_1" (JR.local "hashtable") [ InputProbability.jstatic_INPUT_PROBABILITY ]), 
                    JR.return (JR.new BasicRandomAI.jnew_4 [ (JR.local "ownerLayerInterface"), (JR.local "gameInput"), (JR.local "inputProbability"), (JR.local "visitor") ]) ])
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

