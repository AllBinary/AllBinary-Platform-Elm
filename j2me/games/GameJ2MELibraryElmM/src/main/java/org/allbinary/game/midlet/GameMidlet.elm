module Org.Allbinary.Game.Midlet.GameMidlet exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.midlet
-}

import JR
import Org.Allbinary.Graphics.Displayable.Screen.AboutCommandProcessor as AboutCommandProcessor
import Org.Allbinary.Graphics.Displayable.Screen.AboutPaintableFactory as AboutPaintableFactory
import Org.Allbinary.Game.Layer.AllBinaryGameLayerManager as AllBinaryGameLayerManager
import Org.Allbinary.Media.Audio.AllBinaryMediaManager as AllBinaryMediaManager
import Org.Allbinary.Input.AllBinarySensorManager as AllBinarySensorManager
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Input.Motion.Gesture.Observer.BasicMotionGesturesHandler as BasicMotionGesturesHandler
import Org.Allbinary.Game.Displayable.Canvas.BasicPaintablesCanvas as BasicPaintablesCanvas
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.Game.Configuration.Event.ChangedGameFeatureListener as ChangedGameFeatureListener
import Org.Allbinary.Graphics.Color.ColorChangeEventHandler as ColorChangeEventHandler
import Org.Allbinary.Graphics.Displayable.Screen.CommandForm as CommandForm
import Javax.Microedition.Lcdui.CommandListener as CommandListener
import Org.Allbinary.Debug.DebugFactory as DebugFactory
import Org.Allbinary.Game.Midlet.DemoGameMidletEvent as DemoGameMidletEvent
import Org.Allbinary.Game.Midlet.DemoGameMidletStateFactory as DemoGameMidletStateFactory
import Org.Allbinary.Util.EnumerationUtil as EnumerationUtil
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Canvas.FullScreenUtil as FullScreenUtil
import Org.Allbinary.Business.Advertisement.GameAdStateFactory as GameAdStateFactory
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Displayable.Canvas.GameEventHandlerUtil as GameEventHandlerUtil
import Org.Allbinary.Game.Configuration.Event.GameFeatureEventHandler as GameFeatureEventHandler
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFormUtil as GameFeatureFormUtil
import Org.Allbinary.Game.GameInfo as GameInfo
import Org.Allbinary.Game.Displayable.Canvas.GameInputMappingCanvas as GameInputMappingCanvas
import Org.Allbinary.Game.Displayable.Canvas.GameInputMappingInstructionsCanvas as GameInputMappingInstructionsCanvas
import Org.Allbinary.Game.Midlet.GameMidletEventHandler as GameMidletEventHandler
import Org.Allbinary.Game.Midlet.GameMidletStateFactory as GameMidletStateFactory
import Org.Allbinary.Game.GameMode as GameMode
import Org.Allbinary.Game.Layer.Hud.Event.GameNotificationEventHandler as GameNotificationEventHandler
import Org.Allbinary.Game.Configuration.GameOptionsFormFactory as GameOptionsFormFactory
import Org.Allbinary.Game.Configuration.Persistance.GamePersistanceSingleton as GamePersistanceSingleton
import Org.Allbinary.Game.State.GameStateFactory as GameStateFactory
import Org.Allbinary.Canvas.GameStatisticsFactory as GameStatisticsFactory
import Org.Allbinary.Game.GameStrings as GameStrings
import Org.Allbinary.Game.GameTypeFactory as GameTypeFactory
import Org.Allbinary.Game.Score.HighScoreCommands as HighScoreCommands
import Org.Allbinary.Game.Score.HighScoreCommandsFactory as HighScoreCommandsFactory
import Org.Allbinary.Game.Score.Displayable.HighScoreUtil as HighScoreUtil
import Org.Allbinary.Logic.System.Security.Licensing.InApplicationPurchaseFactory as InApplicationPurchaseFactory
import Org.Allbinary.Game.Configuration.InGameFeatures as InGameFeatures
import Org.Allbinary.Game.Configuration.InGameOptionsForm as InGameOptionsForm
import Org.Allbinary.Game.Configuration.InGameOptionsFormFactory as InGameOptionsFormFactory
import Org.Allbinary.J2MEUtil as J2MEUtil
import Org.Allbinary.Game.Configuration.LoadGameForm as LoadGameForm
import Org.Allbinary.Logic.System.Security.Licensing.LockableFeatureFactory as LockableFeatureFactory
import Org.Allbinary.Game.Configuration.Feature.MainFeatureFactory as MainFeatureFactory
import Org.Allbinary.Midlet.MidletStrings as MidletStrings
import Org.Allbinary.Graphics.Displayable.Command.MyCommandsFactory as MyCommandsFactory
import Javax.Microedition.Lcdui.NullCanvas as NullCanvas
import Org.Allbinary.Game.Displayable.Canvas.NullGameCanvasRunnable as NullGameCanvasRunnable
import Org.Allbinary.Thread.NullThread as NullThread
import Org.Allbinary.Game.PlayerTypesFactory as PlayerTypesFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Midlet.ProgressMidlet as ProgressMidlet
import Org.Allbinary.Graphics.ResizableListenerHandler as ResizableListenerHandler
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Game.Input.TextNotificationUtil as TextNotificationUtil
import Org.Allbinary.Thread.ThreadFactoryUtil as ThreadFactoryUtil
import Org.Allbinary.Thread.ThreadUtil as ThreadUtil
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.TsUtil as TsUtil
import Org.Allbinary.Input.Event.VirtualKeyboardEventHandler as VirtualKeyboardEventHandler
import Org.Allbinary.Graphics.Displayable.Screen.WebCommandProcessor as WebCommandProcessor


jclass : String
jclass =
    "GameMidlet"


jchain : List String
jchain =
    [ "GameMidlet" ]
        ++ ProgressMidlet.jchain
        ++ CommandListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    ProgressMidlet.jfields ++ [ ( "enumerationUtil", JR.defaultOf "" ), ( "basicColorFactory", JR.defaultOf "" ), ( "features", JR.defaultOf "" ), ( "midletStrings", JR.defaultOf "" ), ( "myCommandsFactory", JR.defaultOf "" ), ( "gameStrings", JR.defaultOf "" ), ( "gameAdStateFactory", JR.defaultOf "" ), ( "gameStateFactory", JR.defaultOf "" ), ( "tsUtil", JR.defaultOf "" ), ( "DISPLAYABLE", JR.defaultOf "" ), ( "COMMAND_NAME", JR.defaultOf "" ), ( "NO_COMMAND", JR.defaultOf "" ), ( "NO_DISPLAYABLE", JR.defaultOf "" ), ( "COMMAND_ACTION", JR.defaultOf "" ), ( "PAUSE_APP_BACKGROUND", JR.defaultOf "" ), ( "UN_PAUSE_APP_BACKGROUND", JR.defaultOf "" ), ( "aboutCommandProcessor", JR.defaultOf "" ), ( "webCommandProcessor", JR.defaultOf "" ), ( "gameMidletStateFactory", JR.defaultOf "" ), ( "gameStartTimeHelper", JR.defaultOf "" ), ( "fullScreenUtil", JR.defaultOf "" ), ( "debugInterface", JR.defaultOf "" ), ( "allbinaryGameCanvasRunnableInterface", JR.defaultOf "" ), ( "thread", JR.defaultOf "" ), ( "loadGameForm", JR.defaultOf "" ), ( "isFullScreen", JR.defaultOf "Z" ), ( "resized", JR.defaultOf "Z" ), ( "startedBefore", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "setDemo_0", jm_setDemo_0 )
        , ( "createGame_0", jm_createGame_0 )
        , ( "mediaShutdown_0", jm_mediaShutdown_0 )
        , ( "stopAll_0", jm_stopAll_0 )
        , ( "pauseApp_0", jm_pauseApp_0 )
        , ( "pauseAppBackground_1", jm_pauseAppBackground_1 )
        , ( "unPauseApp_0", jm_unPauseApp_0 )
        , ( "unPauseAppBackground_1", jm_unPauseAppBackground_1 )
        , ( "destroyAppInRunnable_2", jm_destroyAppInRunnable_2 )
        , ( "destroyApp_1", jm_destroyApp_1 )
        , ( "startApp_0", jm_startApp_0 )
        , ( "commandAction_2", jm_commandAction_2 )
        , ( "updateFullScreen_0", jm_updateFullScreen_0 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "getInputMappingInstructionsCanvas_0", jm_getInputMappingInstructionsCanvas_0 )
        , ( "getInputMappingCanvas_0", jm_getInputMappingCanvas_0 )
        , ( "getAboutCanvas_0", jm_getAboutCanvas_0 )
        , ( "getHelpPaintable_0", jm_getHelpPaintable_0 )
        , ( "createHighScoresCanvas_0", jm_createHighScoresCanvas_0 )
        , ( "startGameCanvasRunnableInterface_0", jm_startGameCanvasRunnableInterface_0 )
        , ( "stopGameCanvasRunnableInterface_0", jm_stopGameCanvasRunnableInterface_0 )
        , ( "getGameCanvasRunnableInterface_0", jm_getGameCanvasRunnableInterface_0 )
        , ( "setGameCanvasRunnableInterface_1", jm_setGameCanvasRunnableInterface_1 )
        , ( "createGameLayerManager_0", jm_createGameLayerManager_0 )
        , ( "getGameOptionsForm_0", jm_getGameOptionsForm_0 )
        , ( "save_0", jm_save_0 )
        , ( "getCurrentStateHashtable_0", jm_getCurrentStateHashtable_0 )
        , ( "setLoadGameForm_1", jm_setLoadGameForm_1 )
        , ( "getLoadGameForm_0", jm_getLoadGameForm_0 )
        , ( "setResized_1", jm_setResized_1 )
        , ( "isResized_0", jm_isResized_0 )
        , ( "isDemoLoading_0", jm_isDemoLoading_0 ) ]
        ProgressMidlet.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameMidlet"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_setDemo_0", jm_setDemo_0 ), ( "jm_createGame_0", jm_createGame_0 ), ( "jm_mediaShutdown_0", jm_mediaShutdown_0 ), ( "jm_stopAll_0", jm_stopAll_0 ), ( "jm_pauseApp_0", jm_pauseApp_0 ), ( "jm_pauseAppBackground_1", jm_pauseAppBackground_1 ), ( "jm_unPauseApp_0", jm_unPauseApp_0 ), ( "jm_unPauseAppBackground_1", jm_unPauseAppBackground_1 ), ( "jm_destroyAppInRunnable_2", jm_destroyAppInRunnable_2 ), ( "jm_destroyApp_1", jm_destroyApp_1 ), ( "jm_startApp_0", jm_startApp_0 ), ( "jm_commandAction_2", jm_commandAction_2 ), ( "jm_updateFullScreen_0", jm_updateFullScreen_0 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_getInputMappingInstructionsCanvas_0", jm_getInputMappingInstructionsCanvas_0 ), ( "jm_getInputMappingCanvas_0", jm_getInputMappingCanvas_0 ), ( "jm_getAboutCanvas_0", jm_getAboutCanvas_0 ), ( "jm_getHelpPaintable_0", jm_getHelpPaintable_0 ), ( "jm_createHighScoresCanvas_0", jm_createHighScoresCanvas_0 ), ( "jm_startGameCanvasRunnableInterface_0", jm_startGameCanvasRunnableInterface_0 ), ( "jm_stopGameCanvasRunnableInterface_0", jm_stopGameCanvasRunnableInterface_0 ), ( "jm_getGameCanvasRunnableInterface_0", jm_getGameCanvasRunnableInterface_0 ), ( "jm_setGameCanvasRunnableInterface_1", jm_setGameCanvasRunnableInterface_1 ), ( "jm_createGameLayerManager_0", jm_createGameLayerManager_0 ), ( "jm_getGameOptionsForm_0", jm_getGameOptionsForm_0 ), ( "jm_save_0", jm_save_0 ), ( "jm_getCurrentStateHashtable_0", jm_getCurrentStateHashtable_0 ), ( "jm_setLoadGameForm_1", jm_setLoadGameForm_1 ), ( "jm_getLoadGameForm_0", jm_getLoadGameForm_0 ), ( "jm_setResized_1", jm_setResized_1 ), ( "jm_isResized_0", jm_isResized_0 ), ( "jm_isDemoLoading_0", jm_isDemoLoading_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "clientInformationFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ProgressMidlet.jinit_1 JR.this [ (JR.local "clientInformationFactory") ]),
                JR.exec (JR.setField "enumerationUtil" "" JR.this (JR.callStatic EnumerationUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicColorFactory" "" JR.this (JR.callStatic BasicColorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "features" "" JR.this (JR.callStatic Features.jm_getInstance_0 [])),
                JR.exec (JR.setField "midletStrings" "" JR.this (JR.callStatic MidletStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "myCommandsFactory" "" JR.this (JR.callStatic MyCommandsFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameStrings" "" JR.this (JR.callStatic GameStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameAdStateFactory" "" JR.this (JR.callStatic GameAdStateFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameStateFactory" "" JR.this (JR.callStatic GameStateFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "DISPLAYABLE" "" JR.this (JR.str " Displayable: ")),
                JR.exec (JR.setField "COMMAND_NAME" "" JR.this (JR.str "command Name/Label: ")),
                JR.exec (JR.setField "NO_COMMAND" "" JR.this (JR.str "No Command")),
                JR.exec (JR.setField "NO_DISPLAYABLE" "" JR.this (JR.str "No Displayable")),
                JR.exec (JR.setField "COMMAND_ACTION" "" JR.this (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "GameMidlet::") ]) [ (JR.field "COMMAND_ACTION" (JR.thisField "midletStrings")) ]) [])),
                JR.exec (JR.setField "PAUSE_APP_BACKGROUND" "" JR.this (JR.str "pauseAppBackground")),
                JR.exec (JR.setField "UN_PAUSE_APP_BACKGROUND" "" JR.this (JR.str "unPauseAppBackground")),
                JR.exec (JR.setField "aboutCommandProcessor" "" JR.this (JR.callStatic AboutCommandProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "webCommandProcessor" "" JR.this (JR.callStatic WebCommandProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameMidletStateFactory" "" JR.this (JR.callStatic GameMidletStateFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameStartTimeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 240) ])),
                JR.exec (JR.setField "fullScreenUtil" "" JR.this (JR.callStatic FullScreenUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "allbinaryGameCanvasRunnableInterface" "" JR.this NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE),
                JR.exec (JR.setField "thread" "" JR.this NullThread.jstatic_NULL_THREAD),
                JR.exec (JR.setField "startedBefore" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "initWithRange_2" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int (JR.i32 0x291)), (JR.int 6) ]), 
                    JR.exec (JR.setField "loadGameForm" "" JR.this (JR.callStatic CommandForm.jm_getNullCommandForm_0 [])), 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "init_1" (JR.local "progressCanvas") [ JR.this ]), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic GameFeatureEventHandler.jm_getInstance_0 []) [ (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "clear_0" (JR.callStatic GamePersistanceSingleton.jm_getInstance_0 []) []), 
                    JR.exec (JR.setField "debugInterface" "" JR.this (JR.callStatic DebugFactory.jm_getInstance_0 [])), 
                    JR.exec (JR.invoke "init_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setDemo_0 : JR.Method
jm_setDemo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createGame_0 : JR.Method
jm_createGame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_mediaShutdown_0 : JR.Method
jm_mediaShutdown_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_stopAll_0 : JR.Method
jm_stopAll_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_pauseApp_0 : JR.Method
jm_pauseApp_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "pauseAppBackground_1" JR.this [ (JR.bool True) ]), 
                    JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.thisField "gameAdStateFactory") []), 
                    JR.exec (JR.invoke "stopAll_0" (JR.invoke "getAdvertisements_0" (JR.local "gameAdState") []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_pauseAppBackground_1 : JR.Method
jm_pauseAppBackground_1 jheap jthis jargs =
    JR.method [ ( "background", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.thisField "PAUSE_APP_BACKGROUND") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "allbinaryGameCanvasRunnableInterface") NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE) (JR.run [ 
                        JR.exec (JR.invoke "pause_0" (JR.thisField "allbinaryGameCanvasRunnableInterface") []) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "<<<<<< Null"), JR.this, (JR.thisField "PAUSE_APP_BACKGROUND") ]) ]), 
                    JR.exec (JR.invoke "shutdown_0" (JR.callStatic AllBinarySensorManager.jm_getInstance_0 []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_unPauseApp_0 : JR.Method
jm_unPauseApp_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "unPauseAppBackground_1" JR.this [ (JR.bool True) ]), 
                    JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.thisField "gameAdStateFactory") []), 
                    JR.exec (JR.invoke "startAll_0" (JR.invoke "getAdvertisements_0" (JR.local "gameAdState") []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_unPauseAppBackground_1 : JR.Method
jm_unPauseAppBackground_1 jheap jthis jargs =
    JR.method [ ( "background", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.thisField "UN_PAUSE_APP_BACKGROUND") ]), 
                    JR.exec (JR.invoke "init_0" (JR.callStatic AllBinarySensorManager.jm_getInstance_0 []) []), 
                    JR.declare "gameCanvasRunnableInterface" "" (JR.thisField "allbinaryGameCanvasRunnableInterface"), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "gameCanvasRunnableInterface") NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE) (JR.run [ 
                        JR.exec (JR.invoke "unPause_0" (JR.local "gameCanvasRunnableInterface") []) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "<<<<<< Null"), JR.this, (JR.thisField "UN_PAUSE_APP_BACKGROUND") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_destroyAppInRunnable_2 : JR.Method
jm_destroyAppInRunnable_2 jheap jthis jargs =
    JR.method [ ( "unconditional", "Z" ), ( "isProgress", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.local "isProgress") (JR.run [ 
                        JR.exec (JR.invoke "start_0" (JR.local "progressCanvas") []), 
                        JR.exec (JR.invoke "commandAction_2" JR.this [ (JR.field "SET_DISPLAYABLE" (JR.thisField "myCommandsFactory")), (JR.local "progressCanvas") ]) ]) identity, 
                    JR.exec (JR.invoke "destroyApp_1" JR.this [ (JR.local "unconditional") ]), 
                    JR.ifElse (JR.local "isProgress") (JR.run [ 
                        JR.exec (JR.invoke "end_0" (JR.local "progressCanvas") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_destroyApp_1 : JR.Method
jm_destroyApp_1 jheap jthis jargs =
    JR.method [ ( "unconditional", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "METHOD_NAME" "" (JR.str "GameMidlet::destroyApp"), 
                    JR.try (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.callStatic GameStatisticsFactory.jm_getInstance_0 []) []), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.thisField "gameAdStateFactory") []), 
                        JR.exec (JR.invoke "stopAll_0" (JR.invoke "getAdvertisements_0" (JR.local "gameAdState") []) []), 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "isDestroyed_0" JR.this [])) (JR.run [ 
                            JR.exec (JR.invoke "stopGameCanvasRunnableInterface_0" JR.this []), 
                            JR.exec (JR.invoke "setGameCanvasRunnableInterface_1" JR.this [ NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE ]), 
                            JR.exec (JR.invoke "mediaShutdown_0" JR.this []) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Midlet Managment Error: Midlet Should Only Be Destroyed Once"), JR.this, (JR.local "METHOD_NAME") ]) ]), 
                        JR.exec (JR.callVia ProgressMidlet.jvtable "destroyApp_1" JR.this [ (JR.bool True) ]), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.field "END" (JR.thisField "commonStrings")), JR.this, (JR.local "METHOD_NAME") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.local "METHOD_NAME"), (JR.local "e") ]) ]) ) ] identity, 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END" (JR.thisField "commonStrings")), JR.this, (JR.local "METHOD_NAME") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_startApp_0 : JR.Method
jm_startApp_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.thisField "gameAdStateFactory") []), 
                        JR.exec (JR.invoke "startAll_0" (JR.invoke "getAdvertisements_0" (JR.local "gameAdState") []) []), 
                        JR.declare "START_APP" "" (JR.str "startApp"), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.local "START_APP") ]), 
                        JR.declare "gameCanvasRunnableInterface" "" (JR.thisField "allbinaryGameCanvasRunnableInterface"), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "gameCanvasRunnableInterface") NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE) (JR.run [ 
                            JR.exec (JR.invoke "setCurrentGameState_1" (JR.thisField "gameMidletStateFactory") [ (JR.field "NO_GAME_STATE" (JR.thisField "gameStateFactory")) ]), 
                            JR.exec (JR.invoke "setDemo_0" JR.this []) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "GameCanvasRunnableInterface is available"), JR.this, (JR.local "START_APP") ]), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "gameCanvasRunnableInterface") (JR.invoke "getCurrentDisplayable_0" JR.this [])) (JR.run [ 
                                JR.exec (JR.invoke "unPauseAppBackground_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "GameCanvasRunnableInterface is not current displayable"), JR.this, (JR.local "START_APP") ]) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "startApp"), (JR.local "e") ]), 
                        JR.exec (JR.invoke "destroyApp_1" JR.this [ (JR.bool False) ]), 
                        JR.exec (JR.invoke "notifyDestroyed_0" JR.this []) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_commandAction_2 : JR.Method
jm_commandAction_2 jheap jthis jargs =
    JR.method [ ( "command", "" ), ( "displayable", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "displayableAsString" "" (JR.thisField "NO_DISPLAYABLE"), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "displayable") JR.null) (JR.run [ 
                            JR.exec (JR.setLocal "displayableAsString" "" (JR.invoke "toString_0" (JR.local "displayable") [])) ]) identity, 
                        JR.declare "label" "" (JR.thisField "NO_COMMAND"), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "command") JR.null) (JR.run [ 
                            JR.exec (JR.setLocal "label" "" (JR.invoke "getLabel_0" (JR.local "command") [])) ]) identity, 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "COMMAND_NAME") ]) [ (JR.local "label") ]) [ (JR.thisField "DISPLAYABLE") ]) [ (JR.local "displayableAsString") ]) []), JR.this, (JR.thisField "COMMAND_ACTION") ]), 
                        JR.declare "gameCommandsFactory" "" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []), 
                        JR.declare "allbinaryGameCanvasRunnableInterface" "" (JR.thisField "allbinaryGameCanvasRunnableInterface"), 
                        JR.declare "gameCanvasRunnableInterface" "" (JR.local "allbinaryGameCanvasRunnableInterface"), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "SHOW_GAME_CANVAS" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.invoke "getCurrent_0" (JR.invoke "getDisplay_0" JR.this []) []) (JR.local "gameCanvasRunnableInterface")) (JR.map2 JR.notEquals (JR.invoke "getType_0" (JR.local "allbinaryGameCanvasRunnableInterface") []) (JR.invoke "getType_0" NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE []))) (JR.run [ 
                                JR.exec (JR.invoke "setDisplay_1" JR.this [ (JR.local "gameCanvasRunnableInterface") ]) ]) identity, 
                            JR.exec (JR.invoke "unPauseAppBackground_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "CLOSE_AND_SHOW_GAME_CANVAS" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.declare "menuListener" "" (JR.local "displayable"), 
                            JR.exec (JR.invoke "close_0" (JR.local "menuListener") []), 
                            JR.exec (JR.invoke "setDisplay_1" JR.this [ (JR.local "gameCanvasRunnableInterface") ]), 
                            JR.exec (JR.invoke "unPauseAppBackground_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "EXIT_COMMAND" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.invoke "size_0" (JR.invoke "getEventListenerInterfaceListP_0" (JR.callStatic GameMidletEventHandler.jm_getInstance_0 []) []) []) (JR.int 0)) (JR.run [ 
                                JR.exec (JR.invoke "exitProgress_1" JR.this [ (JR.bool True) ]) ]) identity, 
                            JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameMidletEventHandler.jm_getInstance_0 []) [ (JR.new DemoGameMidletEvent.jnew_2 [ JR.this, (JR.field "NONE" (JR.callStatic DemoGameMidletStateFactory.jm_getInstance_0 [])) ]) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "EXIT_WITHOUT_PROGRESS_COMMAND" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "exitProgress_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                        JR.ifElse (JR.or (JR.or (JR.map2 JR.equals (JR.local "command") (JR.field "START_COMMAND" (JR.local "gameCommandsFactory"))) (JR.map2 JR.equals (JR.local "command") (JR.field "RESTART_COMMAND" (JR.local "gameCommandsFactory")))) (JR.map2 JR.equals (JR.local "command") (JR.field "CONTINUE_COMMAND" (JR.local "gameCommandsFactory")))) (JR.run [ 
                            JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.invoke "getCurrentGameState_0" (JR.thisField "gameMidletStateFactory") []) (JR.field "PLAYING_GAME_STATE" (JR.thisField "gameStateFactory"))) (JR.map2 JR.equals (JR.local "command") (JR.field "RESTART_COMMAND" (JR.local "gameCommandsFactory")))) (JR.run [ 
                                JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "gameStartTimeHelper") []) (JR.run [ 
                                    JR.ifElse (JR.and (JR.map2 JR.equals (JR.local "command") (JR.field "START_COMMAND" (JR.local "gameCommandsFactory"))) (JR.invoke "isDemoLoading_0" JR.this [])) (JR.run [ 
                                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Trying to Start Game Before Loading Complete"), JR.this, (JR.field "COMMAND_ACTION" (JR.thisField "midletStrings")) ]) ]) (JR.run [ 
                                        JR.exec (JR.setField "startedBefore" "Z" JR.this (JR.bool True)), 
                                        JR.exec (JR.invoke "createGame_0" JR.this []), 
                                        JR.exec (JR.invoke "setCurrentGameState_1" (JR.thisField "gameMidletStateFactory") [ (JR.field "PLAYING_GAME_STATE" (JR.thisField "gameStateFactory")) ]) ]) ]) (JR.run [ 
                                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Starting Game Too Often"), JR.this, (JR.field "COMMAND_ACTION" (JR.thisField "midletStrings")) ]) ]) ]) (JR.run [ 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Already in playing state"), JR.this, (JR.thisField "COMMAND_ACTION") ]) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "BUY_COMMAND" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.declare "inApplicationPurchaseFactory" "" (JR.callStatic InApplicationPurchaseFactory.jm_getInstance_0 []), 
                            JR.declare "list" "" (JR.invoke "getList_0" (JR.callStatic LockableFeatureFactory.jm_getInstance_0 []) []), 
                            JR.declare "lockableFeature" "" (JR.invoke "get_1" (JR.local "list") [ (JR.int 0) ]), 
                            JR.ifElse (JR.and (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "list") []) (JR.int 0)) (JR.map JR.not_ (JR.invoke "isPurchased_1" (JR.local "inApplicationPurchaseFactory") [ (JR.local "lockableFeature") ]))) (JR.run [ 
                                JR.exec (JR.invoke "purchase_1" (JR.local "inApplicationPurchaseFactory") [ (JR.local "lockableFeature") ]) ]) (JR.run [ 
                                JR.exec (JR.invoke "fireSuccess_1" (JR.callStatic TextNotificationUtil.jm_getInstance_0 []) [ (JR.str "Already Purchased") ]) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "QUIT_COMMAND" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "gameStartTimeHelper") []) (JR.run [ 
                                JR.ifElse (JR.instanceOf "HighScoreTextBox" (JR.local "displayable")) (JR.run [ 
                                    JR.declare "menuListener" "" (JR.local "displayable"), 
                                    JR.exec (JR.invoke "close_0" (JR.local "menuListener") []) ]) identity, 
                                JR.exec (JR.invoke "stopGameCanvasRunnableInterface_0" JR.this []), 
                                JR.exec (JR.invoke "setCurrentGameState_1" (JR.thisField "gameMidletStateFactory") [ (JR.field "NO_GAME_STATE" (JR.thisField "gameStateFactory")) ]), 
                                JR.exec (JR.invoke "setDemo_0" JR.this []) ]) identity ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "RESUME_COMMAND" (JR.thisField "myCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "unPauseAppBackground_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "PAUSE_COMMAND" (JR.thisField "myCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "pauseAppBackground_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "SET_DISPLAYABLE" (JR.thisField "myCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "pauseAppBackground_1" JR.this [ (JR.bool False) ]), 
                            JR.exec (JR.invoke "setDisplay_1" JR.this [ (JR.local "displayable") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "SET_MENU_DISPLAYABLE" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "pauseAppBackground_1" JR.this [ (JR.bool False) ]), 
                            JR.declare "menuListener" "" (JR.local "displayable"), 
                            JR.exec (JR.invoke "open_0" (JR.local "menuListener") []), 
                            JR.exec (JR.invoke "setDisplay_1" JR.this [ (JR.local "displayable") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "START_TRACE" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "start_0" (JR.thisField "debugInterface") []), 
                            JR.declare "gameCanvas" "" (JR.local "allbinaryGameCanvasRunnableInterface"), 
                            JR.exec (JR.invoke "addCommand_1" (JR.local "gameCanvas") [ (JR.field "STOP_TRACE" (JR.local "gameCommandsFactory")) ]), 
                            JR.exec (JR.invoke "removeCommand_1" (JR.local "gameCanvas") [ (JR.field "START_TRACE" (JR.local "gameCommandsFactory")) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "STOP_TRACE" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "pauseAppBackground_1" JR.this [ (JR.bool False) ]), 
                            JR.exec (JR.invoke "stop_0" (JR.thisField "debugInterface") []), 
                            JR.exec (JR.invoke "unPauseAppBackground_1" JR.this [ (JR.bool False) ]), 
                            JR.declare "gameCanvas" "" (JR.local "allbinaryGameCanvasRunnableInterface"), 
                            JR.exec (JR.invoke "addCommand_1" (JR.local "gameCanvas") [ (JR.field "START_TRACE" (JR.local "gameCommandsFactory")) ]), 
                            JR.exec (JR.invoke "removeCommand_1" (JR.local "gameCanvas") [ (JR.field "STOP_TRACE" (JR.local "gameCommandsFactory")) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "DEFAULT_OPTIONS" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.declare "tempDisplayable" "" (JR.local "displayable"), 
                            JR.ifElse (JR.instanceOf "GameOptionsForm" (JR.local "tempDisplayable")) (JR.run [ 
                                JR.exec (JR.invoke "setDefault_1" (JR.callStatic GameFeatureFormUtil.jm_getInstance_0 []) [ (JR.local "tempDisplayable") ]) ]) identity ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") GameInputMappingInstructionsCanvas.jstatic_DISPLAY) (JR.run [ 
                            JR.declare "tempDisplayable" "" (JR.local "displayable"), 
                            JR.ifElse (JR.instanceOf "GameInputMappingCanvas" (JR.local "tempDisplayable")) (JR.run [ 
                                JR.declare "gameInputMappingCanvas" "" (JR.local "tempDisplayable"), 
                                JR.exec (JR.invoke "update_0" (JR.local "gameInputMappingCanvas") []) ]) identity, 
                            JR.exec (JR.invoke "commandAction_2" JR.this [ (JR.field "SET_MENU_DISPLAYABLE" (JR.local "gameCommandsFactory")), (JR.invoke "getInputMappingInstructionsCanvas_0" JR.this []) ]) ]) (JR.run [ 
                        JR.ifElse (JR.invoke "isHighScoreCommand_1" (JR.callStatic HighScoreCommandsFactory.jm_getInstance_0 []) [ (JR.local "command") ]) (JR.run [ 
                            JR.declare "tempDisplayable" "" (JR.local "displayable"), 
                            JR.ifElse (JR.instanceOf "HighScoresCanvas" (JR.local "tempDisplayable")) (JR.run [ 
                                JR.declare "highScoresCanvas" "" (JR.local "tempDisplayable"), 
                                JR.exec (JR.invoke "updateCommand_1" (JR.local "highScoresCanvas") [ (JR.local "command") ]) ]) identity ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "DISPLAY" (JR.callStatic HighScoreCommands.jm_getInstance_0 []))) (JR.run [ 
                            JR.exec (JR.invoke "commandAction_2" JR.this [ (JR.field "SET_MENU_DISPLAYABLE" (JR.local "gameCommandsFactory")), (JR.invoke "createHighScoresCanvas_0" JR.this []) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") GameInputMappingInstructionsCanvas.jstatic_CLOSE) (JR.run [ 
                            JR.declare "menuListener" "" (JR.local "displayable"), 
                            JR.exec (JR.invoke "close_0" (JR.local "menuListener") []), 
                            JR.exec (JR.invoke "commandAction_2" JR.this [ GameInputMappingCanvas.jstatic_DISPLAY, NullCanvas.jstatic_NULL_CANVAS ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") GameInputMappingCanvas.jstatic_DISPLAY) (JR.run [ 
                            JR.ifElse (JR.callStatic J2MEUtil.jm_isHTML_0 []) (JR.run [ 
                                JR.exec (JR.invoke "pauseAppBackground_1" JR.this [ (JR.bool False) ]) ]) identity, 
                            JR.exec (JR.invoke "commandAction_2" JR.this [ (JR.field "SET_MENU_DISPLAYABLE" (JR.local "gameCommandsFactory")), (JR.invoke "getInputMappingCanvas_0" JR.this []) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") GameInputMappingCanvas.jstatic_DEFAULT) (JR.run [ 
                            JR.declare "tempDisplayable" "" (JR.local "displayable"), 
                            JR.ifElse (JR.instanceOf "GameInputMappingCanvas" (JR.local "tempDisplayable")) (JR.run [ 
                                JR.declare "gameInputMappingCanvas" "" (JR.local "tempDisplayable"), 
                                JR.exec (JR.invoke "setDefault_0" (JR.local "gameInputMappingCanvas") []) ]) identity ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") InGameOptionsForm.jstatic_DISPLAY) (JR.run [ 
                            JR.exec (JR.invoke "pauseAppBackground_1" JR.this [ (JR.bool False) ]), 
                            JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 50), (JR.str "In Game Options") ]), 
                            JR.declare "layerManager" "" (JR.invoke "createGameLayerManager_0" JR.this []), 
                            JR.declare "inGameOptionsFormFactory" "" (JR.callStatic InGameOptionsFormFactory.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "init_5" (JR.local "inGameOptionsFormFactory") [ JR.this, (JR.new InGameFeatures.jnew_0 []), (JR.str "Options In Game"), (JR.invoke "getBackgroundBasicColor_0" (JR.local "layerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.local "layerManager") []) ]), 
                            JR.declare "inGameOptionsForm" "" (JR.invoke "get_0" (JR.local "inGameOptionsFormFactory") []), 
                            JR.exec (JR.invoke "setItemStateListener_1" (JR.local "inGameOptionsForm") [ (JR.local "allbinaryGameCanvasRunnableInterface") ]), 
                            JR.exec (JR.invoke "commandAction_2" JR.this [ (JR.field "SET_MENU_DISPLAYABLE" (JR.local "gameCommandsFactory")), (JR.local "inGameOptionsForm") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") InGameOptionsForm.jstatic_DEFAULT) (JR.run [ 
                            JR.declare "inGameOptionsForm" "" (JR.invoke "get_0" (JR.callStatic InGameOptionsFormFactory.jm_getInstance_0 []) []), 
                            JR.exec (JR.invoke "setDefault_1" (JR.callStatic GameFeatureFormUtil.jm_getInstance_0 []) [ (JR.local "inGameOptionsForm") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "DISPLAY_OPTIONS" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.callStatic AllBinaryMediaManager.jm_setMuted_1 [ (JR.bool True) ]), 
                            JR.exec (JR.invoke "stopAll_0" JR.this []), 
                            JR.declare "mainFeatureFactory" "" (JR.callStatic MainFeatureFactory.jm_getInstance_0 []), 
                            JR.exec (JR.setField "isFullScreen" "Z" JR.this (JR.invoke "isFeature_1" (JR.thisField "features") [ (JR.field "FULL_SCREEN" (JR.local "mainFeatureFactory")) ])), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.callStatic ResizableListenerHandler.jm_getInstance_0 []) [ (JR.bool True) ]), 
                            JR.exec (JR.invoke "setResized_1" JR.this [ (JR.bool False) ]), 
                            JR.exec (JR.invoke "commandAction_2" JR.this [ (JR.field "SET_MENU_DISPLAYABLE" (JR.local "gameCommandsFactory")), (JR.invoke "getGameOptionsForm_0" JR.this []) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "CLOSE_OPTIONS" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "fireEvent_1" (JR.callStatic ResizableListenerHandler.jm_getInstance_0 []) [ (JR.bool False) ]), 
                            JR.exec (JR.invoke "commandAction_2" JR.this [ (JR.field "CLOSE_AND_SHOW_GAME_CANVAS" (JR.local "gameCommandsFactory")), (JR.local "displayable") ]), 
                            JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Close isFullScreen/change: ") ]), 
                            JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.thisField "isFullScreen") ]), 
                            JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isScreenChange_1" (JR.thisField "fullScreenUtil") [ (JR.thisField "isFullScreen") ]) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " isResized: ") ]), 
                            JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isResized_0" JR.this []) ]), 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.thisField "COMMAND_ACTION") ]), 
                            JR.ifElse (JR.or (JR.invoke "isResized_0" JR.this []) (JR.invoke "isScreenChange_1" (JR.thisField "fullScreenUtil") [ (JR.thisField "isFullScreen") ])) (JR.run [ 
                                JR.exec (JR.invoke "updateFullScreen_0" JR.this []) ]) identity, 
                            JR.exec (JR.callStatic AllBinaryMediaManager.jm_setMuted_1 [ (JR.bool False) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "DISPLAY_LOAD_FORM" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "pauseAppBackground_1" JR.this [ (JR.bool False) ]), 
                            JR.declare "keyValuePersistance" "" (JR.callStatic GamePersistanceSingleton.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "clear_0" (JR.local "keyValuePersistance") []), 
                            JR.exec (JR.invoke "loadAll_1" (JR.local "keyValuePersistance") [ (JR.thisField "abeClientInformation") ]), 
                            JR.ifElse (JR.map2 JR.equals (JR.invoke "getLoadGameForm_0" JR.this []) (JR.callStatic CommandForm.jm_getNullCommandForm_0 [])) (JR.run [ 
                                JR.declare "layerManager" "" (JR.invoke "createGameLayerManager_0" JR.this []), 
                                JR.exec (JR.invoke "setLoadGameForm_1" JR.this [ (JR.new LoadGameForm.jnew_4 [ JR.this, (JR.str "Load Game"), (JR.invoke "getBackgroundBasicColor_0" (JR.local "layerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.local "layerManager") []) ]) ]) ]) (JR.run [ 
                                JR.exec (JR.invoke "update_0" (JR.invoke "getLoadGameForm_0" JR.this []) []) ]), 
                            JR.exec (JR.invoke "commandAction_2" JR.this [ (JR.field "SET_MENU_DISPLAYABLE" (JR.local "gameCommandsFactory")), (JR.invoke "getLoadGameForm_0" JR.this []) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "LOAD_FILE" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.declare "loadGameForm" "" (JR.invoke "getLoadGameForm_0" JR.this []), 
                            JR.declare "index" "I" (JR.invoke "getSelectedId_0" (JR.local "loadGameForm") []), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "index") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.declare "keyValuePersistance" "" (JR.callStatic GamePersistanceSingleton.jm_getInstance_0 []), 
                                JR.exec (JR.invoke "setStartStateHashtable_1" JR.this [ (JR.invoke "get_1" (JR.local "keyValuePersistance") [ (JR.local "index") ]) ]), 
                                JR.declare "menuListener" "" (JR.invoke "getLoadGameForm_0" JR.this []), 
                                JR.exec (JR.invoke "close_0" (JR.local "menuListener") []), 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.callStatic BasicMotionGesturesHandler.jm_getInstance_0 []) []), JR.this, (JR.thisField "COMMAND_ACTION") ]), 
                                JR.exec (JR.invoke "commandAction_2" JR.this [ (JR.field "START_COMMAND" (JR.local "gameCommandsFactory")), NullCanvas.jstatic_NULL_CANVAS ]), 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.callStatic BasicMotionGesturesHandler.jm_getInstance_0 []) []), JR.this, (JR.thisField "COMMAND_ACTION") ]) ]) identity ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "DELETE_FILE" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.declare "loadGameForm" "" (JR.invoke "getLoadGameForm_0" JR.this []), 
                            JR.declare "index" "I" (JR.invoke "getSelectedText_0" (JR.local "loadGameForm") []), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "index") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.declare "keyValuePersistance" "" (JR.callStatic GamePersistanceSingleton.jm_getInstance_0 []), 
                                JR.exec (JR.invoke "delete_2" (JR.local "keyValuePersistance") [ (JR.thisField "abeClientInformation"), (JR.local "index") ]), 
                                JR.exec (JR.invoke "clear_0" (JR.local "keyValuePersistance") []), 
                                JR.exec (JR.invoke "loadAllSize_2" (JR.local "keyValuePersistance") [ (JR.thisField "abeClientInformation"), (JR.int 1) ]), 
                                JR.exec (JR.invoke "update_0" (JR.invoke "getLoadGameForm_0" JR.this []) []) ]) identity ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "SAVE" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.declare "keyValuePersistance" "" (JR.callStatic GamePersistanceSingleton.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "pauseAppBackground_1" JR.this [ (JR.bool False) ]), 
                            JR.exec (JR.invoke "save_2" (JR.local "keyValuePersistance") [ (JR.thisField "abeClientInformation"), (JR.invoke "getCurrentStateHashtable_0" JR.this []) ]), 
                            JR.exec (JR.invoke "unPauseAppBackground_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Submitted Score"), JR.this, (JR.thisField "COMMAND_ACTION") ]), 
                            JR.ifElse (JR.instanceOf "HighScoreTextBox" (JR.local "displayable")) (JR.run [ 
                                JR.declare "highScoreTextBox" "" (JR.local "displayable"), 
                                JR.exec (JR.andThen (JR.local "highScoreTextBox") (\jtN91943 -> (JR.setField "submitted" "Z" (JR.lit jtN91943) (JR.bool True)))) ]) identity, 
                            JR.exec (JR.invoke "setHighScoreSubmitted_1" (JR.local "allbinaryGameCanvasRunnableInterface") [ (JR.bool True) ]), 
                            JR.exec (JR.invoke "commandAction_2" JR.this [ (JR.field "CLOSE_AND_SHOW_GAME_CANVAS" (JR.local "gameCommandsFactory")), (JR.local "displayable") ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "DISPLAY_ABOUT" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "process_3" (JR.thisField "aboutCommandProcessor") [ JR.this, (JR.field "SET_MENU_DISPLAYABLE" (JR.local "gameCommandsFactory")), (JR.invoke "getAboutCanvas_0" JR.this []) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "OPEN_WEB_URL" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "process_3" (JR.thisField "webCommandProcessor") [ JR.this, (JR.field "OPEN_WEB_URL" (JR.local "gameCommandsFactory")), NullCanvas.jstatic_NULL_CANVAS ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "TOGGLE_KEYBOARD" (JR.local "gameCommandsFactory"))) (JR.run [ 
                            JR.declare "virtualKeyboardEventHandler" "" (JR.callStatic VirtualKeyboardEventHandler.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.local "virtualKeyboardEventHandler") [ (JR.field "SHOW_EVENT" (JR.local "virtualKeyboardEventHandler")) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_2" (JR.thisField "tsUtil") [ (JR.invoke "getLabel_0" (JR.local "command") []), (JR.invoke "getLabel_0" (JR.field "TOGGLE_FULLSCREEN" (JR.local "gameCommandsFactory")) []) ]) (JR.int 0)) (JR.run [ 
                            JR.declare "mainFeatureFactory" "" (JR.callStatic MainFeatureFactory.jm_getInstance_0 []), 
                            JR.declare "isFullScreen" "Z" (JR.invoke "isFeature_1" (JR.thisField "features") [ (JR.field "FULL_SCREEN" (JR.local "mainFeatureFactory")) ]), 
                            JR.ifElse (JR.local "isFullScreen") (JR.run [ 
                                JR.exec (JR.invoke "removeDefault_1" (JR.thisField "features") [ (JR.field "FULL_SCREEN" (JR.local "mainFeatureFactory")) ]) ]) (JR.run [ 
                                JR.exec (JR.invoke "addDefault_1" (JR.thisField "features") [ (JR.field "FULL_SCREEN" (JR.local "mainFeatureFactory")) ]) ]), 
                            JR.exec (JR.invoke "updateFullScreen_0" JR.this []) ]) identity ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "EXCEPTION_LABEL" (JR.thisField "commonStrings")) ]) [ (JR.invoke "getLabel_0" (JR.local "command") []) ]) []), JR.this, (JR.field "COMMAND_ACTION" (JR.thisField "midletStrings")), (JR.local "e") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "command") (JR.field "EXIT_COMMAND" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []))) (JR.run [ 
                            JR.exec (JR.invoke "exitProgress_1" JR.this [ (JR.bool False) ]) ]) identity ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateFullScreen_0 : JR.Method
jm_updateFullScreen_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "mainFeatureFactory" "" (JR.callStatic MainFeatureFactory.jm_getInstance_0 []), 
                    JR.declare "isFullScreen" "Z" (JR.invoke "isFeature_1" (JR.thisField "features") [ (JR.field "FULL_SCREEN" (JR.local "mainFeatureFactory")) ]), 
                    JR.declare "displayable" "" (JR.invoke "getCurrent_0" (JR.invoke "getDisplay_0" JR.this []) []), 
                    JR.ifElse (JR.instanceOf "Canvas" (JR.local "displayable")) (JR.run [ 
                        JR.declare "canvas" "" (JR.local "displayable"), 
                        JR.exec (JR.invoke "setFullScreenMode_1" (JR.local "canvas") [ (JR.local "isFullScreen") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInputMappingInstructionsCanvas_0 : JR.Method
jm_getInputMappingInstructionsCanvas_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new GameInputMappingInstructionsCanvas.jnew_2 [ JR.this, (JR.invoke "createGameLayerManager_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInputMappingCanvas_0 : JR.Method
jm_getInputMappingCanvas_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new GameInputMappingCanvas.jnew_4 [ (JR.thisField "abeClientInformation"), JR.this, (JR.invoke "createGameLayerManager_0" JR.this []), (JR.invoke "getHelpPaintable_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAboutCanvas_0 : JR.Method
jm_getAboutCanvas_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new BasicPaintablesCanvas.jnew_4 [ JR.this, (JR.field "ABOUT" (JR.callStatic CanvasStrings.jm_getInstance_0 [])), (JR.invoke "createGameLayerManager_0" JR.this []), (JR.field "paintableArray" (JR.callStatic AboutPaintableFactory.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getHelpPaintable_0 : JR.Method
jm_getHelpPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createHighScoresCanvas_0 : JR.Method
jm_createHighScoresCanvas_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_startGameCanvasRunnableInterface_0 : JR.Method
jm_startGameCanvasRunnableInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "threadFactoryUtil" "" (JR.callStatic ThreadFactoryUtil.jm_getInstance_0 []), 
                    JR.exec (JR.setField "thread" "" JR.this (JR.invoke "getInstanceGameCanvasRunnable_1" (JR.local "threadFactoryUtil") [ (JR.thisField "allbinaryGameCanvasRunnableInterface") ])), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Thread Priority: ") ]) [ (JR.cast "I" (JR.invoke "getPriority_0" (JR.thisField "thread") [])) ]) []), JR.this, (JR.str "startGameCanvasRunnableInterface") ]), 
                    JR.exec (JR.invoke "setThread_1" (JR.thisField "allbinaryGameCanvasRunnableInterface") [ (JR.thisField "thread") ]), 
                    JR.exec (JR.invoke "start_1" (JR.local "threadFactoryUtil") [ (JR.thisField "thread") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_stopGameCanvasRunnableInterface_0 : JR.Method
jm_stopGameCanvasRunnableInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "STOP_GAME_CANVAS_RUNNABLE_INTERFACE" (JR.thisField "gameStrings")) ]), 
                    JR.exec (JR.invoke "removeAllListeners_0" (JR.callStatic GameNotificationEventHandler.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "removeAllListeners_0" (JR.callStatic ColorChangeEventHandler.jm_getInstance_0 []) []), 
                    JR.exec (JR.callStatic GameEventHandlerUtil.jm_removeAllListeners_0 []), 
                    JR.declare "gameCanvasRunnableInterface" "" (JR.thisField "allbinaryGameCanvasRunnableInterface"), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "gameCanvasRunnableInterface") NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Set Running False: ") ]) [ (JR.invoke "toString_0" (JR.local "gameCanvasRunnableInterface") []) ]) []), JR.this, (JR.field "STOP_GAME_CANVAS_RUNNABLE_INTERFACE" (JR.thisField "gameStrings")) ]), 
                        JR.exec (JR.invoke "setRunning_1" (JR.local "gameCanvasRunnableInterface") [ (JR.bool False) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "StopGame - Could Not Stop"), JR.this, (JR.field "STOP_GAME_CANVAS_RUNNABLE_INTERFACE" (JR.thisField "gameStrings")) ]) ]), 
                    JR.exec (JR.invoke "join_1" (JR.callStatic ThreadUtil.jm_getInstance_0 []) [ (JR.thisField "thread") ]), 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.thisField "features") [ (JR.field "LOAD_ALL" (JR.callStatic MainFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 50), (JR.str "Stopped Game Runnable") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 50), (JR.str "Stopped Main Runnable") ]) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END" (JR.thisField "commonStrings")), JR.this, (JR.field "STOP_GAME_CANVAS_RUNNABLE_INTERFACE" (JR.thisField "gameStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameCanvasRunnableInterface_0 : JR.Method
jm_getGameCanvasRunnableInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "allbinaryGameCanvasRunnableInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setGameCanvasRunnableInterface_1 : JR.Method
jm_setGameCanvasRunnableInterface_1 jheap jthis jargs =
    JR.method [ ( "gameCanvasRunnableInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "allbinaryGameCanvasRunnableInterface" "" JR.this (JR.local "gameCanvasRunnableInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_createGameLayerManager_0 : JR.Method
jm_createGameLayerManager_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "gameInfo" "" (JR.new GameInfo.jnew_5 [ (JR.field "SINGLE_PLAYER" (JR.callStatic GameTypeFactory.jm_getInstance_0 [])), GameMode.jstatic_SERVER, (JR.field "PLAYER_TYPE_ONE" (JR.callStatic PlayerTypesFactory.jm_getInstance_0 [])), (JR.int 1), (JR.int 1) ]), 
                    JR.return (JR.new AllBinaryGameLayerManager.jnew_3 [ (JR.field "BLACK" (JR.thisField "basicColorFactory")), (JR.field "WHITE" (JR.thisField "basicColorFactory")), (JR.local "gameInfo") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameOptionsForm_0 : JR.Method
jm_getGameOptionsForm_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "layerManager" "" (JR.invoke "createGameLayerManager_0" JR.this []), 
                    JR.return (JR.invoke "init_4" (JR.callStatic GameOptionsFormFactory.jm_getInstance_0 []) [ JR.this, (JR.str "Game Options"), (JR.invoke "getBackgroundBasicColor_0" (JR.local "layerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.local "layerManager") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_save_0 : JR.Method
jm_save_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "SAVE" (JR.thisField "commonStrings")) ]), 
                    JR.declare "hashtable" "" (JR.invoke "getCurrentStateHashtable_0" JR.this []), 
                    JR.exec (JR.invoke "save_2" (JR.callStatic GamePersistanceSingleton.jm_getInstance_0 []) [ (JR.thisField "abeClientInformation"), (JR.local "hashtable") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentStateHashtable_0 : JR.Method
jm_getCurrentStateHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "getCurrentStateHashtable") ]), 
                    JR.declare "hashtable" "" (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "allbinaryGameCanvasRunnableInterface") NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE) (JR.run [ 
                        JR.declare "currentHashtable" "" (JR.invoke "getCurrentStateHashtable_0" (JR.thisField "allbinaryGameCanvasRunnableInterface") []), 
                        JR.declare "enumeration" "" (JR.invoke "keys_0" (JR.local "currentHashtable") []), 
                        JR.declare "key" "" (JR.lit (JR.defaultOf "")), 
                        JR.while (JR.invoke "hasMoreElements_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) (JR.run [ 
                            JR.exec (JR.setLocal "key" "" (JR.invoke "nextElement_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ])), 
                            JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.local "key"), (JR.invoke "get_1" (JR.local "currentHashtable") [ (JR.local "key") ]) ]) ]) ]) identity, 
                    JR.return (JR.local "hashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_setLoadGameForm_1 : JR.Method
jm_setLoadGameForm_1 jheap jthis jargs =
    JR.method [ ( "loadGameForm", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "loadGameForm" "" JR.this (JR.local "loadGameForm")) ])
        (jregister jheap)
        jthis
        jargs


jm_getLoadGameForm_0 : JR.Method
jm_getLoadGameForm_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "loadGameForm") ])
        (jregister jheap)
        jthis
        jargs


jm_setResized_1 : JR.Method
jm_setResized_1 jheap jthis jargs =
    JR.method [ ( "resized", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "resized" "Z" JR.this (JR.local "resized")) ])
        (jregister jheap)
        jthis
        jargs


jm_isResized_0 : JR.Method
jm_isResized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "resized") ])
        (jregister jheap)
        jthis
        jargs


jm_isDemoLoading_0 : JR.Method
jm_isDemoLoading_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.thisField "startedBefore") (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.declare "displayable" "" (JR.invoke "getCurrent_0" (JR.invoke "getDisplay_0" JR.this []) []), 
                    JR.ifElse (JR.instanceOf "DemoCanvas" (JR.local "displayable")) (JR.run [ 
                        JR.declare "demoCanvas" "" (JR.local "displayable"), 
                        JR.ifElse (JR.invoke "isDemoLoading_0" (JR.local "demoCanvas") []) (JR.run [ 
                            JR.return (JR.bool True) ]) identity ]) identity, 
                    JR.return (JR.bool False) ])
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

