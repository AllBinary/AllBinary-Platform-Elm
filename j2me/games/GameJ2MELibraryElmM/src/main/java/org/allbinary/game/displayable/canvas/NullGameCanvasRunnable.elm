module Org.Allbinary.Game.Displayable.Canvas.NullGameCanvasRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.GameCanvasRunnableInterface as GameCanvasRunnableInterface
import Org.Allbinary.Game.State.GameStateFactory as GameStateFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "NullGameCanvasRunnable"


jchain : List String
jchain =
    [ "NullGameCanvasRunnable" ]
        ++ GameCanvasRunnableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "gameStateFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getTitle_0", jm_getTitle_0 )
        , ( "isInitialized_0", jm_isInitialized_0 )
        , ( "isPaused_0", jm_isPaused_0 )
        , ( "unPause_0", jm_unPause_0 )
        , ( "pause_0", jm_pause_0 )
        , ( "isHighScoreSubmitted_0", jm_isHighScoreSubmitted_0 )
        , ( "setHighScoreSubmitted_1", jm_setHighScoreSubmitted_1 )
        , ( "processGameOver_0", jm_processGameOver_0 )
        , ( "isGameOver_0", jm_isGameOver_0 )
        , ( "initCommands_1", jm_initCommands_1 )
        , ( "getCurrentStateHashtable_0", jm_getCurrentStateHashtable_0 )
        , ( "getLoadStateHashtable_0", jm_getLoadStateHashtable_0 )
        , ( "setLoadStateHashtable_1", jm_setLoadStateHashtable_1 )
        , ( "getType_0", jm_getType_0 )
        , ( "setGameState_1", jm_setGameState_1 )
        , ( "getGameState_0", jm_getGameState_0 )
        , ( "itemStateChanged_1", jm_itemStateChanged_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "isRunning_0", jm_isRunning_0 )
        , ( "setRunning_1", jm_setRunning_1 )
        , ( "setThread_1", jm_setThread_1 )
        , ( "run_0", jm_run_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullGameCanvasRunnable"
        [ ( "jm_getTitle_0", jm_getTitle_0 ), ( "jm_isInitialized_0", jm_isInitialized_0 ), ( "jm_isPaused_0", jm_isPaused_0 ), ( "jm_unPause_0", jm_unPause_0 ), ( "jm_pause_0", jm_pause_0 ), ( "jm_isHighScoreSubmitted_0", jm_isHighScoreSubmitted_0 ), ( "jm_setHighScoreSubmitted_1", jm_setHighScoreSubmitted_1 ), ( "jm_processGameOver_0", jm_processGameOver_0 ), ( "jm_isGameOver_0", jm_isGameOver_0 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_getCurrentStateHashtable_0", jm_getCurrentStateHashtable_0 ), ( "jm_getLoadStateHashtable_0", jm_getLoadStateHashtable_0 ), ( "jm_setLoadStateHashtable_1", jm_setLoadStateHashtable_1 ), ( "jm_getType_0", jm_getType_0 ), ( "jm_setGameState_1", jm_setGameState_1 ), ( "jm_getGameState_0", jm_getGameState_0 ), ( "jm_itemStateChanged_1", jm_itemStateChanged_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_isRunning_0", jm_isRunning_0 ), ( "jm_setRunning_1", jm_setRunning_1 ), ( "jm_setThread_1", jm_setThread_1 ), ( "jm_run_0", jm_run_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_GAME_CANVAS_RUNNABLE", jstatic_NULL_GAME_CANVAS_RUNNABLE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_GAME_CANVAS_RUNNABLE : JR.M
jstatic_NULL_GAME_CANVAS_RUNNABLE s =
    JR.static "NullGameCanvasRunnable" jclinit "NULL_GAME_CANVAS_RUNNABLE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "gameStateFactory" "" JR.this (JR.callStatic GameStateFactory.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getTitle_0 : JR.Method
jm_getTitle_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_isInitialized_0 : JR.Method
jm_isInitialized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isPaused_0 : JR.Method
jm_isPaused_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_unPause_0 : JR.Method
jm_unPause_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_pause_0 : JR.Method
jm_pause_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isHighScoreSubmitted_0 : JR.Method
jm_isHighScoreSubmitted_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScoreSubmitted_1 : JR.Method
jm_setHighScoreSubmitted_1 jheap jthis jargs =
    JR.method [ ( "highScoreSubmitted", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processGameOver_0 : JR.Method
jm_processGameOver_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isGameOver_0 : JR.Method
jm_isGameOver_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getCurrentStateHashtable_0 : JR.Method
jm_getCurrentStateHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_TABLE" (JR.callStatic StdUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getLoadStateHashtable_0 : JR.Method
jm_getLoadStateHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_TABLE" (JR.callStatic StdUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_setLoadStateHashtable_1 : JR.Method
jm_setLoadStateHashtable_1 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_setGameState_1 : JR.Method
jm_setGameState_1 jheap jthis jargs =
    JR.method [ ( "gameState", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getGameState_0 : JR.Method
jm_getGameState_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "NO_GAME_STATE" (JR.thisField "gameStateFactory")) ])
        (jregister jheap)
        jthis
        jargs


jm_itemStateChanged_1 : JR.Method
jm_itemStateChanged_1 jheap jthis jargs =
    JR.method [ ( "item", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isRunning_0 : JR.Method
jm_isRunning_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_setRunning_1 : JR.Method
jm_setRunning_1 jheap jthis jargs =
    JR.method [ ( "isRunning", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setThread_1 : JR.Method
jm_setThread_1 jheap jthis jargs =
    JR.method [ ( "thread", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        identity
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

