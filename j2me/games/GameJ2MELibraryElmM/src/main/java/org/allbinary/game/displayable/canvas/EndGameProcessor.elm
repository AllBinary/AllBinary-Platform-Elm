module Org.Allbinary.Game.Displayable.Canvas.EndGameProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.State.GameStateFactory as GameStateFactory
import Org.Allbinary.Game.Score.NullHighScoresSingletonFactory as NullHighScoresSingletonFactory
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Canvas.Processor as Processor


jclass : String
jclass =
    "EndGameProcessor"


jchain : List String
jchain =
    [ "EndGameProcessor" ]
        ++ Processor.jchain


jfields : List ( String, JR.JValue )
jfields =
    Processor.jfields ++ [ ( "gameStateFactory", JR.defaultOf "" ), ( "gameCanvas", JR.defaultOf "" ), ( "WAIT", JR.defaultOf "J" ) ]


jvtable =
    JR.vtable
        [ ( "process_0", jm_process_0 ) ]
        Processor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "EndGameProcessor"
        [ ( "jm_process_0", jm_process_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "gameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Processor.jinit_0 JR.this []),
                JR.exec (JR.setField "gameStateFactory" "" JR.this (JR.callStatic GameStateFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "WAIT" "J" JR.this (JR.long 5000)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameCanvas" "" JR.this (JR.local "gameCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isHighScoreSubmitted_0" (JR.thisField "gameCanvas") []) (JR.run [ 
                        JR.ifElse (JR.invoke "isElapsedTNT_1" (JR.invoke "getGameStateTimeHelper_0" (JR.thisField "gameCanvas") []) [ (JR.thisField "WAIT") ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.invoke "getGameState_0" (JR.thisField "gameCanvas") []) (JR.field "SHOW_END_RESULT_GAME_STATE" (JR.thisField "gameStateFactory"))) (JR.run [ 
                                JR.declare "highScoresBase" "" (JR.field "highScoresHelper" (JR.thisField "gameCanvas")), 
                                JR.declare "highScores" "" (JR.invoke "getSelectedHighScores_0" (JR.local "highScoresBase") []), 
                                JR.ifElse (JR.map2 JR.notEquals (JR.local "highScores") (JR.callStatic NullHighScoresSingletonFactory.jm_getInstance_0 [])) (JR.run [ 
                                    JR.exec (JR.invoke "selectHighScores_0" (JR.local "highScoresBase") []), 
                                    JR.exec (JR.invoke "setHighScores_1" (JR.invoke "getRealHighScoresPaintable_0" (JR.thisField "gameCanvas") []) [ (JR.local "highScores") ]), 
                                    JR.exec (JR.invoke "setGameState_1" (JR.thisField "gameCanvas") [ (JR.field "SHOW_HIGH_SCORE_GAME_STATE" (JR.thisField "gameStateFactory")) ]), 
                                    JR.exec (JR.invoke "setHighScoresPaintable_1" (JR.thisField "gameCanvas") [ (JR.invoke "getRealHighScoresPaintable_0" (JR.thisField "gameCanvas") []) ]) ]) identity ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.invoke "getGameState_0" (JR.thisField "gameCanvas") []) (JR.field "SHOW_HIGH_SCORE_GAME_STATE" (JR.thisField "gameStateFactory"))) (JR.run [ 
                                JR.exec (JR.invoke "setGameState_1" (JR.thisField "gameCanvas") [ (JR.field "SHOW_END_RESULT_GAME_STATE" (JR.thisField "gameStateFactory")) ]), 
                                JR.exec (JR.invoke "setHighScoresPaintable_1" (JR.thisField "gameCanvas") [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]) ]) identity ]) ]) identity ]) identity ])
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

