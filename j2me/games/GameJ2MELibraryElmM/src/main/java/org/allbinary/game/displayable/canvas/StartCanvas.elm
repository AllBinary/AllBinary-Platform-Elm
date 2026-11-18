module Org.Allbinary.Game.Displayable.Canvas.StartCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Media.Audio.AllBinaryMediaManager as AllBinaryMediaManager
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Input.Motion.Gesture.Observer.BasicMotionGesturesHandler as BasicMotionGesturesHandler
import Org.Allbinary.Game.Configuration.Event.ChangedGameFeatureListener as ChangedGameFeatureListener
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Graphics.Opengles.CurrentDisplayableFactory as CurrentDisplayableFactory
import Org.Allbinary.Canvas.CustomGameMenuUtil as CustomGameMenuUtil
import Org.Allbinary.Graphics.Displayable.Event.DisplayChangeEventHandler as DisplayChangeEventHandler
import Org.Allbinary.Graphics.Displayable.Event.DisplayChangeEventListener as DisplayChangeEventListener
import Org.Allbinary.Game.Input.Event.DownGameKeyEventHandler as DownGameKeyEventHandler
import Org.Allbinary.Media.Audio.EarlySoundsFactory as EarlySoundsFactory
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Graphics.Form.FormTypeFactory as FormTypeFactory
import Org.Allbinary.Game.Displayable.Canvas.FormUtil as FormUtil
import Org.Allbinary.Canvas.FullScreenUtil as FullScreenUtil
import Org.Allbinary.Business.Advertisement.GameAdStateFactory as GameAdStateFactory
import Org.Allbinary.Game.Displayable.Canvas.GameCanvasRunnableInterface as GameCanvasRunnableInterface
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFactory as GameFeatureFactory
import Org.Allbinary.Game.Init.GameInitializationUtil as GameInitializationUtil
import Org.Allbinary.Game.Displayable.Canvas.GameInputMappingCanvas as GameInputMappingCanvas
import Org.Allbinary.Game.Input.GameInputStrings as GameInputStrings
import Org.Allbinary.Game.Input.Event.GameKeyEventFactory as GameKeyEventFactory
import Org.Allbinary.Game.Input.Event.GameKeyEventHandler as GameKeyEventHandler
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.State.GameStateFactory as GameStateFactory
import Org.Allbinary.Canvas.GameStatisticsFactory as GameStatisticsFactory
import Org.Allbinary.Game.Score.HighScoreCommands as HighScoreCommands
import Org.Allbinary.Game.Score.HighScoresHelper as HighScoresHelper
import Org.Allbinary.Game.Score.HighScoresPaintable as HighScoresPaintable
import Org.Allbinary.Logic.System.Security.Licensing.InApplicationPurchaseFactory as InApplicationPurchaseFactory
import Org.Allbinary.Game.Configuration.Feature.InputFeatureFactory as InputFeatureFactory
import Org.Allbinary.J2MEUtil as J2MEUtil
import Org.Allbinary.Logic.System.Security.Licensing.LockableFeatureFactory as LockableFeatureFactory
import Org.Allbinary.Game.Configuration.Feature.MainFeatureFactory as MainFeatureFactory
import Org.Allbinary.Game.Displayable.Canvas.MenuListener as MenuListener
import Org.Allbinary.Graphics.Displayable.Command.MyCommandsFactory as MyCommandsFactory
import Org.Allbinary.Game.Displayable.Canvas.NoMenuInputProcessor as NoMenuInputProcessor
import Org.Allbinary.Game.Score.NullHighScoresSingletonFactory as NullHighScoresSingletonFactory
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Game.Displayable.Canvas.NullWaitGameRunnable as NullWaitGameRunnable
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureUtil as OpenGLFeatureUtil
import Org.Allbinary.Graphics.Opengles.OpenGLThreadUtil as OpenGLThreadUtil
import Org.Allbinary.Logic.System.Os.OperatingSystemFactory as OperatingSystemFactory
import Org.Allbinary.Game.Input.PlatformInputMappingFactory as PlatformInputMappingFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Graphics.ResizableListenerHandler as ResizableListenerHandler
import Org.Allbinary.Canvas.RunnableCanvas as RunnableCanvas
import Org.Allbinary.Game.Layer.SWTUtil as SWTUtil
import Org.Allbinary.Graphics.Form.ScrollSelectionForm as ScrollSelectionForm
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Animation.Special.SpecialAnimation as SpecialAnimation
import Org.Allbinary.Graphics.Paint.StatePaintableFactory as StatePaintableFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Game.Input.Event.UpGameKeyEventHandler as UpGameKeyEventHandler


jclass : String
jclass =
    "StartCanvas"


jchain : List String
jchain =
    [ "StartCanvas" ]
        ++ RunnableCanvas.jchain
        ++ GameCanvasRunnableInterface.jchain
        ++ MenuListener.jchain
        ++ DisplayChangeEventListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    RunnableCanvas.jfields ++ [ ( "basicColorFactory", JR.defaultOf "" ), ( "features", JR.defaultOf "" ), ( "openGLFeatureFactory", JR.defaultOf "" ), ( "myCommandsFactory", JR.defaultOf "" ), ( "gameAdStateFactory", JR.defaultOf "" ), ( "gameStateFactory", JR.defaultOf "" ), ( "gameInputStrings", JR.defaultOf "" ), ( "formUtil", JR.defaultOf "" ), ( "basicGameDemoPaintable", JR.defaultOf "" ), ( "specialAnimationInterface", JR.defaultOf "" ), ( "paintedSpecialAnimationInterface", JR.defaultOf "" ), ( "fullScreenUtil", JR.defaultOf "" ), ( "highScoresHelper", JR.defaultOf "" ), ( "realHighScoresPaintable", JR.defaultOf "" ), ( "highScoresPaintable", JR.defaultOf "" ), ( "state", JR.defaultOf "I" ), ( "timeDelayHelper", JR.defaultOf "" ), ( "highScoresFactoryInterface", JR.defaultOf "" ), ( "menuInputProcessor", JR.defaultOf "" ), ( "menuForm", JR.defaultOf "" ), ( "gameInitializationInterfaceFactoryInterface", JR.defaultOf "" ), ( "initialized", JR.defaultOf "Z" ), ( "defaultPaintableInterface", JR.defaultOf "" ), ( "paintableInterface", JR.defaultOf "" ), ( "overlayPaintable", JR.defaultOf "" ), ( "tempWait", JR.defaultOf "I" ), ( "inputToGameKeyMapping", JR.defaultOf "" ), ( "gameRunnable", JR.defaultOf "" ), ( "progressPaintable", JR.defaultOf "" ), ( "isSingleKeyRepeatableProcessing", JR.defaultOf "Z" ), ( "NONE", JR.defaultOf "" ), ( "gameKeyEventFactory", JR.defaultOf "" ), ( "SET_STATE", JR.defaultOf "" ), ( "baseGameStatistics", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onDisplayChangeEvent_1", jm_onDisplayChangeEvent_1 )
        , ( "getCustomCommands_0", jm_getCustomCommands_0 )
        , ( "initCommands_1", jm_initCommands_1 )
        , ( "initPostPaint_0", jm_initPostPaint_0 )
        , ( "mediaInit_0", jm_mediaInit_0 )
        , ( "itemStateChanged_1", jm_itemStateChanged_1 )
        , ( "initMenu_0", jm_initMenu_0 )
        , ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "getSourceId_0", jm_getSourceId_0 )
        , ( "keyPressed_1", jm_keyPressed_1 )
        , ( "keyReleased_1", jm_keyReleased_1 )
        , ( "keyRepeated_1", jm_keyRepeated_1 )
        , ( "keyPressedByDevice_2", jm_keyPressedByDevice_2 )
        , ( "keyReleasedByDevice_2", jm_keyReleasedByDevice_2 )
        , ( "keyRepeatedByDevice_2", jm_keyRepeatedByDevice_2 )
        , ( "addGameKeyEvent_2", jm_addGameKeyEvent_2 )
        , ( "removeGameKeyEvent_2", jm_removeGameKeyEvent_2 )
        , ( "pause_0", jm_pause_0 )
        , ( "unPause_0", jm_unPause_0 )
        , ( "isPausable_0", jm_isPausable_0 )
        , ( "isGameOver_0", jm_isGameOver_0 )
        , ( "setLoadStateHashtable_1", jm_setLoadStateHashtable_1 )
        , ( "getLoadStateHashtable_0", jm_getLoadStateHashtable_0 )
        , ( "getCurrentStateHashtable_0", jm_getCurrentStateHashtable_0 )
        , ( "setHighScoreSubmitted_1", jm_setHighScoreSubmitted_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "processGameOver_0", jm_processGameOver_0 )
        , ( "demoStateChange_0", jm_demoStateChange_0 )
        , ( "updateDemoState_0", jm_updateDemoState_0 )
        , ( "getNextRandom_0", jm_getNextRandom_0 )
        , ( "createGameLayerManager_1", jm_createGameLayerManager_1 )
        , ( "createRunnable_1", jm_createRunnable_1 )
        , ( "createCanvas_0", jm_createCanvas_0 )
        , ( "start_0", jm_start_0 )
        , ( "preDemoProcess_0", jm_preDemoProcess_0 )
        , ( "process_0", jm_process_0 )
        , ( "startDemoGame_0", jm_startDemoGame_0 )
        , ( "processGame_0", jm_processGame_0 )
        , ( "run_0", jm_run_0 )
        , ( "setRunning_1", jm_setRunning_1 )
        , ( "end_0", jm_end_0 )
        , ( "setGameState_1", jm_setGameState_1 )
        , ( "getGameState_0", jm_getGameState_0 )
        , ( "getState_0", jm_getState_0 )
        , ( "setState_1", jm_setState_1 )
        , ( "isHighScoreSubmitted_0", jm_isHighScoreSubmitted_0 )
        , ( "getRealHighScoresPaintable_0", jm_getRealHighScoresPaintable_0 )
        , ( "setSpecialAnimationInterface_1", jm_setSpecialAnimationInterface_1 )
        , ( "getSpecialAnimationInterface_0", jm_getSpecialAnimationInterface_0 )
        , ( "setPaintableInterface_1", jm_setPaintableInterface_1 )
        , ( "getPaintableInterface_0", jm_getPaintableInterface_0 )
        , ( "setDefaultPaintableInterface_1", jm_setDefaultPaintableInterface_1 )
        , ( "getDefaultPaintableInterface_0", jm_getDefaultPaintableInterface_0 )
        , ( "getHighScoresFactoryInterface_0", jm_getHighScoresFactoryInterface_0 )
        , ( "setMenuInputProcessor_1", jm_setMenuInputProcessor_1 )
        , ( "getMenuInputProcessor_0", jm_getMenuInputProcessor_0 )
        , ( "getMenuForm_0", jm_getMenuForm_0 )
        , ( "setMenuForm_1", jm_setMenuForm_1 )
        , ( "isInitialized_0", jm_isInitialized_0 )
        , ( "getOverlayPaintable_0", jm_getOverlayPaintable_0 )
        , ( "setBasicGameDemoPaintable_1", jm_setBasicGameDemoPaintable_1 )
        , ( "getBasicGameDemoPaintable_0", jm_getBasicGameDemoPaintable_0 )
        , ( "setTempWait_1", jm_setTempWait_1 )
        , ( "getTempWait_0", jm_getTempWait_0 )
        , ( "isSingleThread_0", jm_isSingleThread_0 )
        , ( "isRunningInAnotherThread_0", jm_isRunningInAnotherThread_0 )
        , ( "getGameInitializationInterfaceFactoryInterface_0", jm_getGameInitializationInterfaceFactoryInterface_0 )
        , ( "getTitle_0", jm_getTitle_0 )
        , ( "isPaused_0", jm_isPaused_0 )
        , ( "getType_0", jm_getType_0 ) ]
        RunnableCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StartCanvas"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onDisplayChangeEvent_1", jm_onDisplayChangeEvent_1 ), ( "jm_getCustomCommands_0", jm_getCustomCommands_0 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_initPostPaint_0", jm_initPostPaint_0 ), ( "jm_mediaInit_0", jm_mediaInit_0 ), ( "jm_itemStateChanged_1", jm_itemStateChanged_1 ), ( "jm_initMenu_0", jm_initMenu_0 ), ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_getSourceId_0", jm_getSourceId_0 ), ( "jm_keyPressed_1", jm_keyPressed_1 ), ( "jm_keyReleased_1", jm_keyReleased_1 ), ( "jm_keyRepeated_1", jm_keyRepeated_1 ), ( "jm_keyPressedByDevice_2", jm_keyPressedByDevice_2 ), ( "jm_keyReleasedByDevice_2", jm_keyReleasedByDevice_2 ), ( "jm_keyRepeatedByDevice_2", jm_keyRepeatedByDevice_2 ), ( "jm_addGameKeyEvent_2", jm_addGameKeyEvent_2 ), ( "jm_removeGameKeyEvent_2", jm_removeGameKeyEvent_2 ), ( "jm_pause_0", jm_pause_0 ), ( "jm_unPause_0", jm_unPause_0 ), ( "jm_isPausable_0", jm_isPausable_0 ), ( "jm_isGameOver_0", jm_isGameOver_0 ), ( "jm_setLoadStateHashtable_1", jm_setLoadStateHashtable_1 ), ( "jm_getLoadStateHashtable_0", jm_getLoadStateHashtable_0 ), ( "jm_getCurrentStateHashtable_0", jm_getCurrentStateHashtable_0 ), ( "jm_setHighScoreSubmitted_1", jm_setHighScoreSubmitted_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_processGameOver_0", jm_processGameOver_0 ), ( "jm_demoStateChange_0", jm_demoStateChange_0 ), ( "jm_updateDemoState_0", jm_updateDemoState_0 ), ( "jm_getNextRandom_0", jm_getNextRandom_0 ), ( "jm_createGameLayerManager_1", jm_createGameLayerManager_1 ), ( "jm_createRunnable_1", jm_createRunnable_1 ), ( "jm_createCanvas_0", jm_createCanvas_0 ), ( "jm_start_0", jm_start_0 ), ( "jm_preDemoProcess_0", jm_preDemoProcess_0 ), ( "jm_process_0", jm_process_0 ), ( "jm_startDemoGame_0", jm_startDemoGame_0 ), ( "jm_processGame_0", jm_processGame_0 ), ( "jm_run_0", jm_run_0 ), ( "jm_setRunning_1", jm_setRunning_1 ), ( "jm_end_0", jm_end_0 ), ( "jm_setGameState_1", jm_setGameState_1 ), ( "jm_getGameState_0", jm_getGameState_0 ), ( "jm_getState_0", jm_getState_0 ), ( "jm_setState_1", jm_setState_1 ), ( "jm_isHighScoreSubmitted_0", jm_isHighScoreSubmitted_0 ), ( "jm_getRealHighScoresPaintable_0", jm_getRealHighScoresPaintable_0 ), ( "jm_setSpecialAnimationInterface_1", jm_setSpecialAnimationInterface_1 ), ( "jm_getSpecialAnimationInterface_0", jm_getSpecialAnimationInterface_0 ), ( "jm_setPaintableInterface_1", jm_setPaintableInterface_1 ), ( "jm_getPaintableInterface_0", jm_getPaintableInterface_0 ), ( "jm_setDefaultPaintableInterface_1", jm_setDefaultPaintableInterface_1 ), ( "jm_getDefaultPaintableInterface_0", jm_getDefaultPaintableInterface_0 ), ( "jm_getHighScoresFactoryInterface_0", jm_getHighScoresFactoryInterface_0 ), ( "jm_setMenuInputProcessor_1", jm_setMenuInputProcessor_1 ), ( "jm_getMenuInputProcessor_0", jm_getMenuInputProcessor_0 ), ( "jm_getMenuForm_0", jm_getMenuForm_0 ), ( "jm_setMenuForm_1", jm_setMenuForm_1 ), ( "jm_isInitialized_0", jm_isInitialized_0 ), ( "jm_getOverlayPaintable_0", jm_getOverlayPaintable_0 ), ( "jm_setBasicGameDemoPaintable_1", jm_setBasicGameDemoPaintable_1 ), ( "jm_getBasicGameDemoPaintable_0", jm_getBasicGameDemoPaintable_0 ), ( "jm_setTempWait_1", jm_setTempWait_1 ), ( "jm_getTempWait_0", jm_getTempWait_0 ), ( "jm_isSingleThread_0", jm_isSingleThread_0 ), ( "jm_isRunningInAnotherThread_0", jm_isRunningInAnotherThread_0 ), ( "jm_getGameInitializationInterfaceFactoryInterface_0", jm_getGameInitializationInterfaceFactoryInterface_0 ), ( "jm_getTitle_0", jm_getTitle_0 ), ( "jm_isPaused_0", jm_isPaused_0 ), ( "jm_getType_0", jm_getType_0 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        [ ( "jstatic_id", jstatic_id ), ( "jstatic_BOT_GAME_STATS", jstatic_BOT_GAME_STATS ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_id : JR.M
jstatic_id s =
    JR.static "StartCanvas" jclinit "id"
        (JR.int 0)
        s


jstatic_BOT_GAME_STATS : JR.M
jstatic_BOT_GAME_STATS s =
    JR.static "StartCanvas" jclinit "BOT_GAME_STATS"
        (JR.str "Bot Game Statistics: ")
        s


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "commandListener", "" ), ( "highScoresFactoryInterface", "" ), ( "paintable", "" ), ( "overlayPaintable", "" ), ( "gameInitializationInterfaceFactoryInterface", "" ), ( "isContinue", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RunnableCanvas.jinit_3 JR.this [ (JR.local "commandListener"), (JR.field "DEFAULT_CHILD_NAME_LIST" (JR.callStatic CurrentDisplayableFactory.jm_getInstance_0 [])), (JR.bool True) ]),
                JR.exec (JR.setField "basicColorFactory" "" JR.this (JR.callStatic BasicColorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "features" "" JR.this (JR.callStatic Features.jm_getInstance_0 [])),
                JR.exec (JR.setField "openGLFeatureFactory" "" JR.this (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "myCommandsFactory" "" JR.this (JR.callStatic MyCommandsFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameAdStateFactory" "" JR.this (JR.callStatic GameAdStateFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameStateFactory" "" JR.this (JR.callStatic GameStateFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameInputStrings" "" JR.this (JR.callStatic GameInputStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "formUtil" "" JR.this (JR.callStatic FormUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicGameDemoPaintable" "" JR.this (JR.callStatic StatePaintableFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "specialAnimationInterface" "" JR.this (JR.callStatic SpecialAnimation.jm_getInstance_0 [])),
                JR.exec (JR.setField "paintedSpecialAnimationInterface" "" JR.this (JR.callStatic SpecialAnimation.jm_getInstance_0 [])),
                JR.exec (JR.setField "fullScreenUtil" "" JR.this (JR.callStatic FullScreenUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "highScoresHelper" "" JR.this (JR.new HighScoresHelper.jnew_0 [])),
                JR.exec (JR.setField "realHighScoresPaintable" "" JR.this (JR.new HighScoresPaintable.jnew_0 [])),
                JR.exec (JR.setField "highScoresPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "state" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 6000) ])),
                JR.exec (JR.setField "menuInputProcessor" "" JR.this (JR.callStatic NoMenuInputProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "menuForm" "" JR.this (JR.callStatic ScrollSelectionForm.jm_getNullScrollSelectionForm_0 [])),
                JR.exec (JR.setField "defaultPaintableInterface" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "paintableInterface" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "tempWait" "I" JR.this (JR.field "WAIT" (JR.callStatic NullWaitGameRunnable.jm_getInstance_0 []))),
                JR.exec (JR.setField "inputToGameKeyMapping" "" JR.this (JR.invoke "getInputMapping_0" (JR.invoke "getPersistentInputMappingInstance_0" (JR.callStatic PlatformInputMappingFactory.jm_getInstance_0 []) []) [])),
                JR.exec (JR.setField "gameRunnable" "" JR.this (JR.callStatic NullWaitGameRunnable.jm_getInstance_0 [])),
                JR.exec (JR.setField "progressPaintable" "" JR.this (JR.callStatic ProgressCanvasFactory.jm_getLazyInstance_0 [])),
                JR.exec (JR.setField "isSingleKeyRepeatableProcessing" "Z" JR.this (JR.invoke "isFeature_1" (JR.thisField "features") [ (JR.field "SINGLE_KEY_REPEAT_PRESS" (JR.callStatic InputFeatureFactory.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "NONE" "" JR.this (JR.field "NONE" (JR.callStatic GameKeyFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "gameKeyEventFactory" "" JR.this (JR.callStatic GameKeyEventFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "SET_STATE" "" JR.this (JR.str "setState")),
                JR.exec (JR.setField "baseGameStatistics" "" JR.this (JR.callStatic GameStatisticsFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setWait_1" JR.this [ (JR.field "WAIT" (JR.callStatic NullWaitGameRunnable.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.setField "gameInitializationInterfaceFactoryInterface" "" JR.this (JR.local "gameInitializationInterfaceFactoryInterface")), 
                    JR.exec (JR.invoke "initDemo_3" (JR.callStatic GameInitializationUtil.jm_getInstance_0 []) [ (JR.local "abeClientInformation"), JR.this, (JR.local "gameInitializationInterfaceFactoryInterface") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.callStatic ResizableListenerHandler.jm_getInstance_0 []) [ (JR.bool False) ]), 
                    JR.exec (JR.setField "overlayPaintable" "" JR.this (JR.local "overlayPaintable")), 
                    JR.exec (JR.setField "highScoresFactoryInterface" "" JR.this (JR.local "highScoresFactoryInterface")), 
                    JR.exec (JR.invoke "setDefaultPaintableInterface_1" JR.this [ (JR.local "paintable") ]), 
                    JR.exec (JR.invoke "setPaintableInterface_1" JR.this [ (JR.invoke "getDefaultPaintableInterface_0" JR.this []) ]), 
                    JR.ifElse (JR.local "isContinue") (JR.run [ 
                        JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "CONTINUE_COMMAND" (JR.callStatic GameCommandsFactory.jm_getInstance_0 [])) ]) ]) identity, 
                    JR.ifElse (JR.invoke "isChangedFeature_1" (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []) [ (JR.field "SOUND" (JR.callStatic GameFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.invoke "mediaInit_0" JR.this []) ]) identity, 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic DisplayChangeEventHandler.jm_getInstance_0 []) [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDisplayChangeEvent_1 : JR.Method
jm_onDisplayChangeEvent_1 jheap jthis jargs =
    JR.method [ ( "displayChangeEvent", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "scrollSelectionForm" "" (JR.invoke "getMenuForm_0" JR.this []), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "scrollSelectionForm") JR.null) (JR.run [ 
                            JR.declare "formType" "" (JR.invoke "getFormType_0" (JR.callStatic FormTypeFactory.jm_getInstance_0 []) []), 
                            JR.declare "rectangle" "" (JR.invoke "createFormRectangle_0" (JR.thisField "formUtil") []), 
                            JR.exec (JR.invoke "init_2" (JR.local "scrollSelectionForm") [ (JR.local "rectangle"), (JR.local "formType") ]) ]) identity, 
                        JR.exec (JR.invoke "init_0" (JR.thisField "overlayPaintable") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ON_DISPLAY_CHANGE_EVENT" (JR.thisField "canvasStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getCustomCommands_0 : JR.Method
jm_getCustomCommands_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "gameCommandsFactory" "" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.callStatic J2MEUtil.jm_isHTML_0 []) (JR.run [ 
                        JR.declare "commandArray" "" (JR.arrayOf "" [ (JR.field "START_COMMAND" (JR.local "gameCommandsFactory")), (JR.field "DISPLAY" (JR.callStatic HighScoreCommands.jm_getInstance_0 [])), GameInputMappingCanvas.jstatic_DISPLAY, (JR.field "DISPLAY_ABOUT" (JR.local "gameCommandsFactory")) ]), 
                        JR.return (JR.local "commandArray") ]) (JR.run [ 
                        JR.declare "commandList" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.exec (JR.invoke "add_1" (JR.local "commandList") [ (JR.field "START_COMMAND" (JR.local "gameCommandsFactory")) ]), 
                        JR.declare "inApplicationPurchaseFactory" "" (JR.callStatic InApplicationPurchaseFactory.jm_getInstance_0 []), 
                        JR.ifElse (JR.invoke "isEnabled_0" (JR.local "inApplicationPurchaseFactory") []) (JR.run [ 
                            JR.declare "list" "" (JR.invoke "getList_0" (JR.callStatic LockableFeatureFactory.jm_getInstance_0 []) []), 
                            JR.ifElse (JR.and (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "list") []) (JR.int 0)) (JR.map JR.not_ (JR.invoke "isPurchased_1" (JR.local "inApplicationPurchaseFactory") [ (JR.invoke "get_1" (JR.local "list") [ (JR.int 0) ]) ]))) (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "commandList") [ (JR.field "BUY_COMMAND" (JR.local "gameCommandsFactory")) ]) ]) identity ]) identity, 
                        JR.exec (JR.invoke "add_1" (JR.local "commandList") [ (JR.field "DISPLAY" (JR.callStatic HighScoreCommands.jm_getInstance_0 [])) ]), 
                        JR.try (JR.run [ 
                            JR.declare "isOverScan" "Z" (JR.invoke "isOverScan_0" (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic OperatingSystemFactory.jm_getInstance_0 []) []) []), 
                            JR.ifElse SWTUtil.jstatic_isSWT (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "commandList") [ GameInputMappingCanvas.jstatic_DISPLAY ]) ]) (JR.run [ 
                            JR.ifElse (JR.map JR.not_ (JR.local "isOverScan")) (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "commandList") [ (JR.field "DISPLAY_OPTIONS" (JR.local "gameCommandsFactory")) ]), 
                                JR.exec (JR.invoke "add_1" (JR.local "commandList") [ (JR.field "DISPLAY_LOAD_FORM" (JR.local "gameCommandsFactory")) ]), 
                                JR.exec (JR.invoke "add_1" (JR.local "commandList") [ GameInputMappingCanvas.jstatic_DISPLAY ]) ]) identity ]) ]) [ ( [ "Exception" ], "e", identity ) ] identity, 
                        JR.exec (JR.invoke "add_1" (JR.local "commandList") [ (JR.field "DISPLAY_ABOUT" (JR.local "gameCommandsFactory")) ]), 
                        JR.declare "commandArray" "" (JR.invoke "toArray_0" (JR.local "commandList") []), 
                        JR.return (JR.local "commandArray") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.declare "commandArray" "" (JR.invoke "getCustomCommands_0" JR.this []), 
                    JR.declare "size" "I" (JR.alength (JR.local "commandArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN85920 -> (JR.setLocal "index" "I" (JR.lit jwN85920))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.aget (JR.local "commandArray") (JR.local "index")) ]) ]) ], 
                    JR.exec (JR.callStatic CustomGameMenuUtil.jm_add_1 [ JR.this ]), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initPostPaint_0 : JR.Method
jm_initPostPaint_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_mediaInit_0 : JR.Method
jm_mediaInit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic AllBinaryMediaManager.jm_init_1 [ (JR.callStatic EarlySoundsFactory.jm_getInstance_0 []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_itemStateChanged_1 : JR.Method
jm_itemStateChanged_1 jheap jthis jargs =
    JR.method [ ( "item", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initMenu_0 : JR.Method
jm_initMenu_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "close_0" JR.this []), 
                    JR.exec (JR.invoke "open_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic BasicMotionGesturesHandler.jm_getInstance_0 []) [ (JR.invoke "getMenuInputProcessor_0" JR.this []) ]), 
                    JR.exec (JR.invoke "addListener_1" (JR.callStatic GameKeyEventHandler.jm_getInstance_0 []) [ (JR.invoke "getMenuInputProcessor_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeListener_1" (JR.callStatic BasicMotionGesturesHandler.jm_getInstance_0 []) [ (JR.invoke "getMenuInputProcessor_0" JR.this []) ]), 
                    JR.exec (JR.invoke "removeListener_1" (JR.callStatic GameKeyEventHandler.jm_getInstance_0 []) [ (JR.invoke "getMenuInputProcessor_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getSourceId_0 : JR.Method
jm_getSourceId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return jstatic_id ])
        (jregister jheap)
        jthis
        jargs


jm_keyPressed_1 : JR.Method
jm_keyPressed_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "keyPressedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyReleased_1 : JR.Method
jm_keyReleased_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "keyReleasedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyRepeated_1 : JR.Method
jm_keyRepeated_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "keyRepeatedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyPressedByDevice_2 : JR.Method
jm_keyPressedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addGameKeyEvent_2" JR.this [ (JR.local "keyCode"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyReleasedByDevice_2 : JR.Method
jm_keyReleasedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeGameKeyEvent_2" JR.this [ (JR.local "keyCode"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyRepeatedByDevice_2 : JR.Method
jm_keyRepeatedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.thisField "isSingleKeyRepeatableProcessing") (JR.run [ 
                        JR.exec (JR.invoke "addGameKeyEvent_2" JR.this [ (JR.local "keyCode"), (JR.bool True) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_addGameKeyEvent_2 : JR.Method
jm_addGameKeyEvent_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "repeated", "Z" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "gameKey" "" (JR.invoke "getInstanceForCanvas_2" (JR.thisField "inputToGameKeyMapping") [ JR.this, (JR.local "keyCode") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "gameKey") (JR.thisField "NONE")) (JR.run [ 
                            JR.declare "gameKeyEvent" "" (JR.invoke "getInstanceForInput_2" (JR.thisField "gameKeyEventFactory") [ JR.this, (JR.local "gameKey") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.callStatic DownGameKeyEventHandler.jm_getInstance_0 []) [ (JR.local "gameKeyEvent") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NO_KEY" (JR.thisField "gameInputStrings")) ]) [ (JR.local "keyCode") ]) []), JR.this, (JR.field "ADD_KEY_EVENT" (JR.thisField "gameInputStrings")) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Key Event Error"), JR.this, (JR.field "ADD_KEY_EVENT" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_removeGameKeyEvent_2 : JR.Method
jm_removeGameKeyEvent_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "repeated", "Z" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "gameKey" "" (JR.invoke "getInstanceForCanvas_2" (JR.thisField "inputToGameKeyMapping") [ JR.this, (JR.local "keyCode") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "gameKey") (JR.thisField "NONE")) (JR.run [ 
                            JR.declare "gameKeyEvent" "" (JR.invoke "getInstanceForInput_2" (JR.thisField "gameKeyEventFactory") [ JR.this, (JR.local "gameKey") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.callStatic UpGameKeyEventHandler.jm_getInstance_0 []) [ (JR.local "gameKeyEvent") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NO_KEY" (JR.thisField "gameInputStrings")) ]) [ (JR.local "keyCode") ]) []), JR.this, (JR.field "REMOVE_KEY_EVENT" (JR.thisField "gameInputStrings")) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Key Event Error"), JR.this, (JR.field "REMOVE_KEY_EVENT" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_pause_0 : JR.Method
jm_pause_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "close_0" JR.this []), 
                    JR.exec (JR.invoke "setPaused_1" JR.this [ (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_unPause_0 : JR.Method
jm_unPause_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "open_0" JR.this []), 
                    JR.exec (JR.invoke "setPaused_1" JR.this [ (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isPausable_0 : JR.Method
jm_isPausable_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getUsedRunnable_0" (JR.callStatic CurrentDisplayableFactory.jm_getInstance_0 []) []) (JR.callStatic NullWaitGameRunnable.jm_getInstance_0 [])) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isGameOver_0 : JR.Method
jm_isGameOver_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) [ (JR.str " since not a game") ]) []), JR.this, (JR.str "isGameOver") ]), 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_setLoadStateHashtable_1 : JR.Method
jm_setLoadStateHashtable_1 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Trying to continue a demo lol - only continue a game canvas not the demo"), JR.this, (JR.str "setLoadStateHashtable") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getLoadStateHashtable_0 : JR.Method
jm_getLoadStateHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Trying to continue a demo lol - only continue a game canvas not the demo"), JR.this, (JR.str "getLoadStateHashtable") ]), 
                    JR.return (JR.field "NULL_TABLE" (JR.thisField "stdUtil")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentStateHashtable_0 : JR.Method
jm_getCurrentStateHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Trying to save the AI lol"), JR.this, (JR.str "getCurrentStateHashtable") ]), 
                    JR.return (JR.field "NULL_TABLE" (JR.thisField "stdUtil")) ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScoreSubmitted_1 : JR.Method
jm_setHighScoreSubmitted_1 jheap jthis jargs =
    JR.method [ ( "isNotUsed", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "paintableInterface") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "paintedSpecialAnimationInterface") [ (JR.local "graphics"), (JR.int 0), (JR.int 0) ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "highScoresPaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.invoke "getBasicGameDemoPaintable_0" JR.this []) [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "overlayPaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "progressPaintable") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintThreed_1" (JR.thisField "paintableInterface") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paintThreedXYZ_4" (JR.thisField "paintedSpecialAnimationInterface") [ (JR.local "graphics"), (JR.int 0), (JR.int 0), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processGameOver_0 : JR.Method
jm_processGameOver_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Not Implemented since not a game"), JR.this, (JR.str "setGameOver") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_demoStateChange_0 : JR.Method
jm_demoStateChange_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "newState" "I" (JR.map2 JR.add (JR.thisField "state") (JR.int 1)), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "newState") (JR.int 2)) (JR.run [ 
                        JR.exec (JR.setLocal "newState" "I" (JR.int 0)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "newState") (JR.int 2)) (JR.run [ 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "isAnyHighScores_0" (JR.thisField "highScoresHelper") [])) (JR.run [ 
                            JR.exec (JR.setLocal "newState" "I" (JR.int 0)) ]) (JR.run [ 
                            JR.declare "highScores" "" (JR.invoke "getNextHighScores_0" (JR.thisField "highScoresHelper") []), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "highScores") (JR.callStatic NullHighScoresSingletonFactory.jm_getInstance_0 [])) (JR.run [ 
                                JR.exec (JR.setLocal "newState" "I" (JR.int 0)) ]) (JR.run [ 
                                JR.exec (JR.invoke "setHighScores_1" (JR.invoke "getRealHighScoresPaintable_0" JR.this []) [ (JR.local "highScores") ]) ]) ]) ]) identity ]), 
                    JR.exec (JR.invoke "setState_1" JR.this [ (JR.local "newState") ]), 
                    JR.exec (JR.invoke "updateDemoState_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_updateDemoState_0 : JR.Method
jm_updateDemoState_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "createInstance_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.thisField "state") ]) []), JR.this, (JR.thisField "SET_STATE") ]), 
                    JR.exec (JR.invoke "setState_1" (JR.invoke "getBasicGameDemoPaintable_0" JR.this []) [ (JR.thisField "state") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "state") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setField "highScoresPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])), 
                        JR.exec (JR.setField "paintedSpecialAnimationInterface" "" JR.this (JR.invoke "getSpecialAnimationInterface_0" JR.this [])), 
                        JR.exec (JR.invoke "reset_0" (JR.invoke "getSpecialAnimationInterface_0" JR.this []) []) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "state") (JR.int 1)) (JR.run [ 
                        JR.exec (JR.setField "paintedSpecialAnimationInterface" "" JR.this (JR.callStatic SpecialAnimation.jm_getInstance_0 [])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "state") (JR.int 2)) (JR.run [ 
                        JR.exec (JR.setField "highScoresPaintable" "" JR.this (JR.invoke "getRealHighScoresPaintable_0" JR.this [])) ]) identity ]) ]), 
                    JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.thisField "gameAdStateFactory") []), 
                    JR.exec (JR.invoke "processPageAdState_0" (JR.local "gameAdState") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getNextRandom_0 : JR.Method
jm_getNextRandom_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createGameLayerManager_1 : JR.Method
jm_createGameLayerManager_1 jheap jthis jargs =
    JR.method [ ( "randomValue", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createRunnable_1 : JR.Method
jm_createRunnable_1 jheap jthis jargs =
    JR.method [ ( "randomLevel", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createCanvas_0 : JR.Method
jm_createCanvas_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "highScoresPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])), 
                    JR.declare "randomLevel" "I" (JR.invoke "getNextRandom_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_start_0 : JR.Method
jm_start_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_preDemoProcess_0 : JR.Method
jm_preDemoProcess_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "update_0" (JR.thisField "overlayPaintable") []) ])
        (jregister jheap)
        jthis
        jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "processInputList_0" (JR.invoke "getMenuInputProcessor_0" JR.this []) []), 
                    JR.exec (JR.invoke "preDemoProcess_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "state") (JR.int 0)) (JR.run [ 
                        JR.declare "indexedAnimationBehavior" "" (JR.invoke "getAnimationBehavior_0" (JR.invoke "getSpecialAnimationInterface_0" JR.this []) []), 
                        JR.ifElse (JR.map2 JR.less (JR.field "loopIndex" (JR.local "indexedAnimationBehavior")) (JR.int 1)) (JR.run [ 
                            JR.exec (JR.invoke "setStartTimeTNT_0" (JR.thisField "timeDelayHelper") []) ]) identity, 
                        JR.declare "demoGameMidlet" "" (JR.invoke "getCustomCommandListener_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_startDemoGame_0 : JR.Method
jm_startDemoGame_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processGame_0 : JR.Method
jm_processGame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "run_0" (JR.thisField "gameRunnable") []), 
                    JR.exec (JR.invoke "nextFrame_0" (JR.thisField "specialAnimationInterface") []), 
                    JR.exec (JR.invoke "process_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                    JR.try (JR.run [ 
                        JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 50), (JR.str "Demo Thread") ]), 
                        JR.exec (JR.invoke "setCurrentThread_0" JR.this []), 
                        JR.exec (JR.invoke "setRunning_1" JR.this [ (JR.bool True) ]), 
                        JR.ifElse (JR.invoke "isFeature_1" (JR.thisField "features") [ (JR.field "LOAD_ONDEMAND" (JR.callStatic MainFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "end_0" (JR.local "progressCanvas") []) ]) (JR.run [ 
                            JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 50), (JR.str "Demo Thread Running") ]) ]), 
                        JR.exec (JR.invoke "initOnRun_2" (JR.thisField "fullScreenUtil") [ JR.this, (JR.invoke "getCustomCommandListener_0" JR.this []) ]), 
                        JR.exec (JR.invoke "initMenu_0" JR.this []), 
                        JR.exec (JR.invoke "initPostPaint_0" JR.this []), 
                        JR.exec (JR.invoke "updateDemoState_0" JR.this []), 
                        JR.ifElse (JR.invoke "isDefault_1" (JR.thisField "features") [ (JR.field "OPENGL_AS_GAME_THREAD" (JR.thisField "openGLFeatureFactory")) ]) (JR.run [ 
                            JR.exec (JR.invoke "onResume_0" (JR.callStatic OpenGLThreadUtil.jm_getInstance_0 []) []) ]) identity, 
                        JR.ifElse (JR.or (JR.invoke "isDefault_1" (JR.thisField "features") [ (JR.field "OPENGL_AS_GAME_THREAD" (JR.thisField "openGLFeatureFactory")) ]) (JR.callStatic J2MEUtil.jm_isHTML_0 [])) identity (JR.run [ 
                            JR.while (JR.invoke "isRunning_0" JR.this []) (JR.run [ 
                                JR.exec (JR.invoke "setStartTimeTNT_0" (JR.thisField "loopTimeHelper") []), 
                                JR.exec (JR.invoke "processGame_0" JR.this []), 
                                JR.exec (JR.invoke "processLoopSleep_0" JR.this []) ]), 
                            JR.exec (JR.invoke "end_0" JR.this []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setRunning_1 : JR.Method
jm_setRunning_1 jheap jthis jargs =
    JR.method [ ( "running", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia RunnableCanvas.jvtable "setRunning_1" JR.this [ (JR.local "running") ]), 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.and ((JR.or (JR.invoke "isDefault_1" (JR.thisField "features") [ (JR.field "OPENGL" (JR.thisField "openGLFeatureFactory")) ]) (JR.callStatic J2MEUtil.jm_isHTML_0 []))) (JR.map JR.not_ (JR.local "running"))) (JR.run [ 
                            JR.declare "currentDisplayableFactory" "" (JR.callStatic CurrentDisplayableFactory.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "clearRunnable_0" (JR.local "currentDisplayableFactory") []), 
                            JR.exec (JR.invoke "end_0" JR.this []) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.thisField "SET_RUNNING"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_end_0 : JR.Method
jm_end_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "baseGameStatistics") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ jstatic_BOT_GAME_STATS ]) [ (JR.invoke "toString_0" (JR.thisField "baseGameStatistics") []) ]) [ (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) []) ]), 
                    JR.exec (JR.invoke "init_0" (JR.thisField "baseGameStatistics") []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.thisField "features") [ (JR.field "LOAD_ONDEMAND" (JR.callStatic MainFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.invoke "start_0" (JR.local "progressCanvas") []) ]) identity, 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Demo End"), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "close_0" JR.this []), 
                    JR.exec (JR.invoke "removeListener_1" (JR.callStatic DisplayChangeEventHandler.jm_getInstance_0 []) [ JR.this ]) ])
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
                    JR.return (JR.field "PLAYING_GAME_STATE" (JR.thisField "gameStateFactory")) ])
        (jregister jheap)
        jthis
        jargs


jm_getState_0 : JR.Method
jm_getState_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "state") ])
        (jregister jheap)
        jthis
        jargs


jm_setState_1 : JR.Method
jm_setState_1 jheap jthis jargs =
    JR.method [ ( "state", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "state" "I" JR.this (JR.local "state")) ])
        (jregister jheap)
        jthis
        jargs


jm_isHighScoreSubmitted_0 : JR.Method
jm_isHighScoreSubmitted_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Wow the AI got a high score!"), JR.this, (JR.str "isHighScoreSubmitted") ]), 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getRealHighScoresPaintable_0 : JR.Method
jm_getRealHighScoresPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "realHighScoresPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setSpecialAnimationInterface_1 : JR.Method
jm_setSpecialAnimationInterface_1 jheap jthis jargs =
    JR.method [ ( "specialAnimationInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" (JR.local "specialAnimationInterface") [ (JR.int 0) ]), 
                    JR.exec (JR.setField "specialAnimationInterface" "" JR.this (JR.local "specialAnimationInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_getSpecialAnimationInterface_0 : JR.Method
jm_getSpecialAnimationInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "specialAnimationInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setPaintableInterface_1 : JR.Method
jm_setPaintableInterface_1 jheap jthis jargs =
    JR.method [ ( "paintableInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "paintableInterface" "" JR.this (JR.local "paintableInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_getPaintableInterface_0 : JR.Method
jm_getPaintableInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "paintableInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setDefaultPaintableInterface_1 : JR.Method
jm_setDefaultPaintableInterface_1 jheap jthis jargs =
    JR.method [ ( "defaultPaintableInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "defaultPaintableInterface" "" JR.this (JR.local "defaultPaintableInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDefaultPaintableInterface_0 : JR.Method
jm_getDefaultPaintableInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "defaultPaintableInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_getHighScoresFactoryInterface_0 : JR.Method
jm_getHighScoresFactoryInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "highScoresFactoryInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setMenuInputProcessor_1 : JR.Method
jm_setMenuInputProcessor_1 jheap jthis jargs =
    JR.method [ ( "menuInputProcessor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "menuInputProcessor" "" JR.this (JR.local "menuInputProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMenuInputProcessor_0 : JR.Method
jm_getMenuInputProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "menuInputProcessor") ])
        (jregister jheap)
        jthis
        jargs


jm_getMenuForm_0 : JR.Method
jm_getMenuForm_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "menuForm") ])
        (jregister jheap)
        jthis
        jargs


jm_setMenuForm_1 : JR.Method
jm_setMenuForm_1 jheap jthis jargs =
    JR.method [ ( "menuForm", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "menuForm" "" JR.this (JR.local "menuForm")) ])
        (jregister jheap)
        jthis
        jargs


jm_isInitialized_0 : JR.Method
jm_isInitialized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "initialized") ])
        (jregister jheap)
        jthis
        jargs


jm_getOverlayPaintable_0 : JR.Method
jm_getOverlayPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "overlayPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicGameDemoPaintable_1 : JR.Method
jm_setBasicGameDemoPaintable_1 jheap jthis jargs =
    JR.method [ ( "basicGameDemoPaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicGameDemoPaintable" "" JR.this (JR.local "basicGameDemoPaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicGameDemoPaintable_0 : JR.Method
jm_getBasicGameDemoPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicGameDemoPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setTempWait_1 : JR.Method
jm_setTempWait_1 jheap jthis jargs =
    JR.method [ ( "tempWait", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "tempWait" "I" JR.this (JR.local "tempWait")) ])
        (jregister jheap)
        jthis
        jargs


jm_getTempWait_0 : JR.Method
jm_getTempWait_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "tempWait") ])
        (jregister jheap)
        jthis
        jargs


jm_isSingleThread_0 : JR.Method
jm_isSingleThread_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.or (JR.invoke "isAnyThreed_0" (JR.callStatic OpenGLFeatureUtil.jm_getInstance_0 []) []) SWTUtil.jstatic_isSWT) ])
        (jregister jheap)
        jthis
        jargs


jm_isRunningInAnotherThread_0 : JR.Method
jm_isRunningInAnotherThread_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "openGLFeatureFactory" "" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL_AS_GAME_THREAD" (JR.local "openGLFeatureFactory")) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.invoke "isRunning_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameInitializationInterfaceFactoryInterface_0 : JR.Method
jm_getGameInitializationInterfaceFactoryInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameInitializationInterfaceFactoryInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_getTitle_0 : JR.Method
jm_getTitle_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callVia RunnableCanvas.jvtable "getTitle_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_isPaused_0 : JR.Method
jm_isPaused_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.callVia RunnableCanvas.jvtable "isPaused_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia RunnableCanvas.jvtable "getType_0" JR.this []) ])
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

