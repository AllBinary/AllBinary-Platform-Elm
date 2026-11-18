module Org.Allbinary.Game.Score.Displayable.HighScoresCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score.displayable
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Game.Paint.ColorFillPaintableFactory as ColorFillPaintableFactory
import Org.Allbinary.Game.Displayable.Canvas.GameCommandCanvas as GameCommandCanvas
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Score.HighScoreCommandsFactory as HighScoreCommandsFactory
import Org.Allbinary.Game.Score.Displayable.HighScoreRunnable as HighScoreRunnable
import Org.Allbinary.Game.Score.HighScoresHelperBase as HighScoresHelperBase
import Org.Allbinary.Game.Score.HighScoresResultsListener as HighScoresResultsListener
import Org.Allbinary.Game.Score.NoHighScoresFactory as NoHighScoresFactory
import Org.Allbinary.Game.Score.NullHighScoresSingletonFactory as NullHighScoresSingletonFactory
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Thread.SecondaryThreadPool as SecondaryThreadPool
import Org.Allbinary.Graphics.Paint.SimpleTextPaintable as SimpleTextPaintable
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "HighScoresCanvas"


jchain : List String
jchain =
    [ "HighScoresCanvas" ]
        ++ GameCommandCanvas.jchain
        ++ HighScoresResultsListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameCommandCanvas.jfields ++ [ ( "paintable", JR.defaultOf "" ), ( "highScoreCommandsFactory", JR.defaultOf "" ), ( "waitPaintable", JR.defaultOf "" ), ( "highScoresPaintable", JR.defaultOf "" ), ( "highScoresFactoryInterface", JR.defaultOf "" ), ( "colorFillPaintable", JR.defaultOf "" ), ( "highScoresHelper", JR.defaultOf "" ), ( "gameInfo", JR.defaultOf "" ), ( "highScoresCanvasInputProcessor", JR.defaultOf "" ), ( "currentCommand", JR.defaultOf "" ), ( "hasPainted", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "initCommands_1", jm_initCommands_1 )
        , ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "executeUpdate_0", jm_executeUpdate_0 )
        , ( "getHighScoresPaintable_0", jm_getHighScoresPaintable_0 )
        , ( "setHighScoresArray_1", jm_setHighScoresArray_1 )
        , ( "updateCommand_1", jm_updateCommand_1 )
        , ( "getGameInfo_0", jm_getGameInfo_0 )
        , ( "setPaintable_1", jm_setPaintable_1 ) ]
        GameCommandCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoresCanvas"
        [ ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_executeUpdate_0", jm_executeUpdate_0 ), ( "jm_getHighScoresPaintable_0", jm_getHighScoresPaintable_0 ), ( "jm_setHighScoresArray_1", jm_setHighScoresArray_1 ), ( "jm_updateCommand_1", jm_updateCommand_1 ), ( "jm_getGameInfo_0", jm_getGameInfo_0 ), ( "jm_setPaintable_1", jm_setPaintable_1 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "HighScoresCanvas" jclinit "NAME"
        (JR.str "HighScoresCanvas")
        s


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "allBinaryGameLayerManager", "" ), ( "gameInfo", "" ), ( "paintable", "" ), ( "highScoresFactoryInterface", "" ), ( "highScoresCanvasInputProcessorFactoryInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameCommandCanvas.jinit_4 JR.this [ (JR.local "commandListener"), jstatic_NAME, (JR.invoke "getBackgroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []) ]),
                JR.exec (JR.setField "paintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "highScoreCommandsFactory" "" JR.this (JR.callStatic HighScoreCommandsFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "waitPaintable" "" JR.this (JR.new SimpleTextPaintable.jnew_2 [ (JR.field "PLEASE_WAIT_FOR_SERVER" (JR.thisField "commonStrings")), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "highScoresHelper" "" JR.this (JR.new HighScoresHelperBase.jnew_0 [])),
                JR.exec (JR.setField "currentCommand" "" JR.this (JR.aget (JR.field "HIGH_SCORE_COMMANDS" (JR.thisField "highScoreCommandsFactory")) (JR.int 0))),
                JR.exec (JR.setField "hasPainted" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.setField "highScoresPaintable" "" JR.this (JR.local "paintable")), 
                    JR.exec (JR.setField "highScoresFactoryInterface" "" JR.this (JR.local "highScoresFactoryInterface")), 
                    JR.exec (JR.setField "highScoresCanvasInputProcessor" "" JR.this (JR.invoke "getInstance_1" (JR.local "highScoresCanvasInputProcessorFactoryInterface") [ JR.this ])), 
                    JR.exec (JR.setField "gameInfo" "" JR.this (JR.local "gameInfo")), 
                    JR.exec (JR.invoke "setBasicColorP_1" (JR.thisField "waitPaintable") [ (JR.invoke "getForegroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []) ]), 
                    JR.exec (JR.invoke "setBasicColorP_1" (JR.invoke "getHighScoresPaintable_0" JR.this []) [ (JR.invoke "getForegroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []) ]), 
                    JR.exec (JR.setField "colorFillPaintable" "" JR.this (JR.invoke "getInstance_2" (JR.callStatic ColorFillPaintableFactory.jm_getInstance_0 []) [ (JR.invoke "getBackgroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []), (JR.bool False) ])), 
                    JR.ifElse (JR.map2 JR.equals (JR.alength (JR.invoke "getHighScoresArray_0" (JR.thisField "highScoresHelper") [])) (JR.alength (JR.field "NO_HIGH_SCORES" (JR.callStatic NoHighScoresFactory.jm_getInstance_0 [])))) (JR.run [ 
                        JR.exec (JR.invoke "setPaintable_1" JR.this [ (JR.thisField "waitPaintable") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Show HighScores that are already loaded"), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "updateCommand_1" JR.this [ (JR.thisField "currentCommand") ]), 
                        JR.exec (JR.invoke "setPaintable_1" JR.this [ (JR.invoke "getHighScoresPaintable_0" JR.this []) ]) ]), 
                    JR.exec (JR.invoke "runTask_1" (JR.callStatic SecondaryThreadPool.jm_getInstance_0 []) [ (JR.new HighScoreRunnable.jnew_1 [ JR.this ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "CLOSE_AND_SHOW_GAME_CANVAS" (JR.callStatic GameCommandsFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia GameCommandCanvas.jvtable "open_0" JR.this []), 
                    JR.exec (JR.invoke "open_0" (JR.thisField "highScoresCanvasInputProcessor") []) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia GameCommandCanvas.jvtable "close_0" JR.this []), 
                    JR.exec (JR.invoke "close_0" (JR.thisField "highScoresCanvasInputProcessor") []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "colorFillPaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "paintable") [ (JR.local "graphics") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "waitPaintable") (JR.thisField "paintable")) (JR.run [ 
                        JR.exec (JR.invoke "paint_1" (JR.thisField "highScoresCanvasInputProcessor") [ (JR.local "graphics") ]) ]) identity, 
                    JR.exec (JR.callVia GameCommandCanvas.jvtable "paint_1" JR.this [ (JR.local "graphics") ]), 
                    JR.exec (JR.setField "hasPainted" "Z" JR.this (JR.bool True)) ])
        (jregister jheap)
        jthis
        jargs


jm_executeUpdate_0 : JR.Method
jm_executeUpdate_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "fetchHighScores_2" (JR.thisField "highScoresFactoryInterface") [ (JR.invoke "getGameInfo_0" JR.this []), JR.this ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getHighScoresPaintable_0 : JR.Method
jm_getHighScoresPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "highScoresPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScoresArray_1 : JR.Method
jm_setHighScoresArray_1 jheap jthis jargs =
    JR.method [ ( "highScoresArray", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "highScoresArray") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.thisField "commonStrings")) ]) [ (JR.alength (JR.local "highScoresArray")) ]) []), JR.this, (JR.str "setHighScoresArray") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "setHighScoresArray") ]) ]), 
                        JR.exec (JR.invoke "setHighScoresArray_1" (JR.thisField "highScoresHelper") [ (JR.local "highScoresArray") ]), 
                        JR.exec (JR.invoke "updateCommand_1" JR.this [ (JR.thisField "currentCommand") ]), 
                        JR.exec (JR.invoke "setPaintable_1" JR.this [ (JR.invoke "getHighScoresPaintable_0" JR.this []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateCommand_1 : JR.Method
jm_updateCommand_1 jheap jthis jargs =
    JR.method [ ( "command", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.thisField "commonStrings")) ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "command") ]) ]) []), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")) ]), 
                    JR.declare "gameCommandsFactory" "" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isHighScoreCommand_1" (JR.thisField "highScoreCommandsFactory") [ (JR.local "command") ]) (JR.run [ 
                        JR.declare "index" "I" (JR.invoke "getIndex_1" (JR.thisField "highScoreCommandsFactory") [ (JR.local "command") ]), 
                        JR.declare "nextIndex" "I" (JR.map2 JR.add (JR.local "index") (JR.int 1)), 
                        JR.declare "highScoresArray" "" (JR.invoke "getHighScoresArray_0" (JR.thisField "highScoresHelper") []), 
                        JR.ifElse (JR.map2 JR.greaterEquals (JR.local "nextIndex") (JR.alength (JR.local "highScoresArray"))) (JR.run [ 
                            JR.exec (JR.setLocal "nextIndex" "I" (JR.int 0)) ]) identity, 
                        JR.ifElse (JR.map2 JR.greater (JR.alength (JR.local "highScoresArray")) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "setHighScores_1" (JR.invoke "getHighScoresPaintable_0" JR.this []) [ (JR.aget (JR.local "highScoresArray") (JR.local "index")) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "setHighScores_1" (JR.invoke "getHighScoresPaintable_0" JR.this []) [ (JR.callStatic NullHighScoresSingletonFactory.jm_getInstance_0 []) ]) ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "index") (JR.local "nextIndex")) (JR.run [ 
                            JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                            JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "CLOSE_AND_SHOW_GAME_CANVAS" (JR.local "gameCommandsFactory")) ]), 
                            JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.aget (JR.field "HIGH_SCORE_COMMANDS" (JR.thisField "highScoreCommandsFactory")) (JR.local "nextIndex")) ]) ]) identity ]) identity, 
                    JR.exec (JR.setField "currentCommand" "" JR.this (JR.local "command")), 
                    JR.exec (JR.invoke "close_0" JR.this []), 
                    JR.exec (JR.callVia GameCommandCanvas.jvtable "initMenu_0" JR.this []), 
                    JR.exec (JR.invoke "open_0" JR.this []), 
                    JR.exec (JR.invoke "onChangeRepaint_1" (JR.thisField "repaintBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameInfo_0 : JR.Method
jm_getGameInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameInfo") ])
        (jregister jheap)
        jthis
        jargs


jm_setPaintable_1 : JR.Method
jm_setPaintable_1 jheap jthis jargs =
    JR.method [ ( "paintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "paintable" "" JR.this (JR.local "paintable")), 
                    JR.exec (JR.invoke "onChangeRepaint_1" (JR.thisField "repaintBehavior") [ JR.this ]) ])
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

