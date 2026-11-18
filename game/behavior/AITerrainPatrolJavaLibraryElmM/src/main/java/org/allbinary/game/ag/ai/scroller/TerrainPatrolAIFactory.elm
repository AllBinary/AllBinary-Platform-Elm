module Org.Allbinary.Game.Ag.Ai.Scroller.TerrainPatrolAIFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.scroller
-}

import JR
import Org.Allbinary.Game.Ai.ArtificialIntelligenceInterfaceFactoryInterface as ArtificialIntelligenceInterfaceFactoryInterface
import Org.Allbinary.Game.Ag.Ai.Scroller.BasePatrolAI as BasePatrolAI
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Game.Ag.Ai.Scroller.TerrainPatrolAI as TerrainPatrolAI


jclass : String
jclass =
    "TerrainPatrolAIFactory"


jchain : List String
jchain =
    [ "TerrainPatrolAIFactory" ]
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
    JR.register "TerrainPatrolAIFactory"
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
                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ BasePatrolAI.jstatic_MAX_DISTANCE, (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 220) ]) ]), 
                    JR.return (JR.new TerrainPatrolAI.jnew_3 [ (JR.local "hashtable"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]) ])
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

