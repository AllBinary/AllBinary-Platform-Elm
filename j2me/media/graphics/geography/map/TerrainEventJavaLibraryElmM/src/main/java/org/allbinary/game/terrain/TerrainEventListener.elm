module Org.Allbinary.Game.Terrain.TerrainEventListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.terrain
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Terrain.TerrainEventListenerInterface as TerrainEventListenerInterface


jclass : String
jclass =
    "TerrainEventListener"


jchain : List String
jchain =
    [ "TerrainEventListener" ]
        ++ TerrainEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onTerrainEvent_1", jm_onTerrainEvent_1 )
        , ( "getList_0", jm_getList_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TerrainEventListener"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onTerrainEvent_1", jm_onTerrainEvent_1 ), ( "jm_getList_0", jm_getList_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onTerrainEvent_1 : JR.Method
jm_onTerrainEvent_1 jheap jthis jargs =
    JR.method [ ( "terrainEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "terrainEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "list") ])
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

