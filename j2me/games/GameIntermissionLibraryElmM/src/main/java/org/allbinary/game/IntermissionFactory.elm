module Org.Allbinary.Game.IntermissionFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.Game.State.GameStateFactory as GameStateFactory


jclass : String
jclass =
    "IntermissionFactory"


jchain : List String
jchain =
    [ "IntermissionFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "START_LEVEL_INTERMISSION_GAME_STATE", JR.defaultOf "" ), ( "WAIT_LEVEL_INTERMISSION_GAME_STATE", JR.defaultOf "" ), ( "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE", JR.defaultOf "" ), ( "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IntermissionFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "IntermissionFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "START_LEVEL_INTERMISSION_GAME_STATE" "" JR.this (JR.invoke "createGameState_1" (JR.callStatic GameStateFactory.jm_getInstance_0 []) [ (JR.str "START_LEVEL_INTERMISSION_GAME_STATE") ])),
                JR.exec (JR.setField "WAIT_LEVEL_INTERMISSION_GAME_STATE" "" JR.this (JR.invoke "createGameState_1" (JR.callStatic GameStateFactory.jm_getInstance_0 []) [ (JR.str "WAIT_LEVEL_INTERMISSION_GAME_STATE") ])),
                JR.exec (JR.setField "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE" "" JR.this (JR.invoke "createGameState_1" (JR.callStatic GameStateFactory.jm_getInstance_0 []) [ (JR.str "SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE") ])),
                JR.exec (JR.setField "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE" "" JR.this (JR.invoke "createGameState_1" (JR.callStatic GameStateFactory.jm_getInstance_0 []) [ (JR.str "SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE") ])),
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
                    JR.return jstatic_instance ])
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

