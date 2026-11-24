module Org.Allbinary.Game.State.GameStateFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.state
-}

import JR
import Org.Allbinary.Game.State.GameState as GameState
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "GameStateFactory"


jchain : List String
jchain =
    [ "GameStateFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "index", JR.defaultOf "I" ), ( "NO_GAME_STATE", JR.defaultOf "" ), ( "PLAYING_GAME_STATE", JR.defaultOf "" ), ( "SHOW_END_RESULT_GAME_STATE", JR.defaultOf "" ), ( "SHOW_HIGH_SCORE_GAME_STATE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createGameState_1", jm_createGameState_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameStateFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createGameState_1", jm_createGameState_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameStateFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "index" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "NO_GAME_STATE" "" JR.this (JR.invoke "createGameState_1" JR.this [ (JR.str "NO_GAME_STATE") ])),
                JR.exec (JR.setField "PLAYING_GAME_STATE" "" JR.this (JR.invoke "createGameState_1" JR.this [ (JR.str "PLAYING_GAME_STATE") ])),
                JR.exec (JR.setField "SHOW_END_RESULT_GAME_STATE" "" JR.this (JR.invoke "createGameState_1" JR.this [ (JR.str "SHOW_END_RESULT_GAME_STATE") ])),
                JR.exec (JR.setField "SHOW_HIGH_SCORE_GAME_STATE" "" JR.this (JR.invoke "createGameState_1" JR.this [ (JR.str "SHOW_HIGH_SCORE_GAME_STATE") ])),
                identity,
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "GameStateFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_createGameState_1 : JR.Method
jm_createGameState_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new GameState.jnew_2 [ (JR.local "name"), (JR.postUpdate (JR.thisField "index") (\jwN66262 -> (JR.setField "index" "I" JR.this (JR.lit jwN66262))) JR.increment) ]) ])
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

