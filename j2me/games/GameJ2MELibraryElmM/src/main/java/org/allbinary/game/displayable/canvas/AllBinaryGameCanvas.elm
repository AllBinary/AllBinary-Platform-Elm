module Org.Allbinary.Game.Displayable.Canvas.AllBinaryGameCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.AllBinaryGameCanvasInterface as AllBinaryGameCanvasInterface
import Org.Allbinary.Game.Layer.AllBinaryGameLayerManager as AllBinaryGameLayerManager
import Org.Allbinary.Media.Audio.AllBinaryMediaManager as AllBinaryMediaManager
import Org.Allbinary.AndroidUtil as AndroidUtil
import Org.Allbinary.Game.Displayable.Canvas.BaseGameBehavior as BaseGameBehavior
import Org.Allbinary.Game.Displayable.Canvas.BaseMenuBehavior as BaseMenuBehavior
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Game.Init.BasicBuildGameInitializerFactory as BasicBuildGameInitializerFactory
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.BasicColorSetUtil as BasicColorSetUtil
import Org.Allbinary.Input.Motion.Gesture.Observer.BasicMotionGesturesHandler as BasicMotionGesturesHandler
import Org.Allbinary.Game.Displayable.Canvas.BasicPopupMenuPaintable as BasicPopupMenuPaintable
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.Game.Configuration.Event.ChangedGameFeatureListener as ChangedGameFeatureListener
import Org.Allbinary.Game.Displayable.Canvas.CheatGameInputProcessor as CheatGameInputProcessor
import Org.Allbinary.Game.Paint.ColorFillPaintableFactory as ColorFillPaintableFactory
import Org.Allbinary.Graphics.Form.CommandCurrentSelectionFormFactory as CommandCurrentSelectionFormFactory
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Graphics.Opengles.CurrentDisplayableFactory as CurrentDisplayableFactory
import Org.Allbinary.Debug.DebugFactory as DebugFactory
import Org.Allbinary.Game.Displayable.Canvas.DemoGameBehavior as DemoGameBehavior
import Org.Allbinary.Graphics.Displayable.Event.DisplayChangeEventHandler as DisplayChangeEventHandler
import Org.Allbinary.Graphics.Displayable.Event.DisplayChangeEventListener as DisplayChangeEventListener
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Game.Displayable.Canvas.EndGameInfo as EndGameInfo
import Org.Allbinary.Game.Displayable.Canvas.EndGamePaintable as EndGamePaintable
import Org.Allbinary.Game.Displayable.Canvas.EndGameProcessor as EndGameProcessor
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Displayable.Canvas.FormInputProcessor as FormInputProcessor
import Org.Allbinary.Graphics.Form.FormPaintable as FormPaintable
import Org.Allbinary.Graphics.Form.FormTypeFactory as FormTypeFactory
import Org.Allbinary.Game.Displayable.Canvas.FormUtil as FormUtil
import Org.Allbinary.Business.Advertisement.GameAdStateFactory as GameAdStateFactory
import Org.Allbinary.Game.Displayable.Canvas.GameCanvasInputProcessor as GameCanvasInputProcessor
import Org.Allbinary.Game.Displayable.Canvas.GameCanvasPauseRunnable as GameCanvasPauseRunnable
import Org.Allbinary.Game.Displayable.Canvas.GameCanvasRunnable as GameCanvasRunnable
import Org.Allbinary.Game.Displayable.Canvas.GameCanvasRunnableInterface as GameCanvasRunnableInterface
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFactory as GameFeatureFactory
import Org.Allbinary.Game.Configuration.Feature.GameFeatureUtil as GameFeatureUtil
import Org.Allbinary.Game.GameInfo as GameInfo
import Org.Allbinary.Game.Init.GameInitializationUtil as GameInitializationUtil
import Org.Allbinary.Game.Configuration.Event.GameInitializedEventHandler as GameInitializedEventHandler
import Org.Allbinary.Game.Input.GameInputStrings as GameInputStrings
import Org.Allbinary.Game.Input.Event.GameKeyEventHandler as GameKeyEventHandler
import Org.Allbinary.Game.Displayable.GameLevelDisplayChangeEventListenersFactory as GameLevelDisplayChangeEventListenersFactory
import Org.Allbinary.Game.Displayable.Canvas.GameLimitedCommandTextItemArrayFactory as GameLimitedCommandTextItemArrayFactory
import Org.Allbinary.Game.Displayable.Canvas.GameProcessor as GameProcessor
import Org.Allbinary.Game.State.GameStateFactory as GameStateFactory
import Org.Allbinary.Canvas.GameStatisticsFactory as GameStatisticsFactory
import Org.Allbinary.Game.GameStrings as GameStrings
import Org.Allbinary.Graphics.Displayable.GameTickDisplayInfoSingleton as GameTickDisplayInfoSingleton
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Game.GameTypeFactory as GameTypeFactory
import Org.Allbinary.Graphics.GraphicsStrings as GraphicsStrings
import Org.Allbinary.Game.Score.HighScore as HighScore
import Org.Allbinary.Game.Score.Displayable.HighScoreTextBox as HighScoreTextBox
import Org.Allbinary.Game.Score.HighScoresPaintable as HighScoresPaintable
import Org.Allbinary.Game.Configuration.InGameFeatures as InGameFeatures
import Org.Allbinary.Game.Displayable.Canvas.InGameMenuBehavior as InGameMenuBehavior
import Org.Allbinary.Game.Configuration.InGameOptionsForm as InGameOptionsForm
import Org.Allbinary.Game.Configuration.Feature.InputFeatureFactory as InputFeatureFactory
import Org.Allbinary.Game.Intermission as Intermission
import Org.Allbinary.Game.IntermissionCompositeInterface as IntermissionCompositeInterface
import Org.Allbinary.Game.IntermissionEnableListenerInterface as IntermissionEnableListenerInterface
import Org.Allbinary.J2MEUtil as J2MEUtil
import JInteger
import JThread
import Org.Allbinary.Game.Configuration.Feature.MainFeatureFactory as MainFeatureFactory
import Org.Allbinary.Game.Displayable.Canvas.MenuListener as MenuListener
import Org.Allbinary.Graphics.Displayable.Command.MyCommandsFactory as MyCommandsFactory
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Game.Displayable.Canvas.MyFormUtil as MyFormUtil
import Org.Allbinary.Input.Motion.Button.NoButtonsTouchInputFactory as NoButtonsTouchInputFactory
import Org.Allbinary.Debug.NoDebug as NoDebug
import Org.Allbinary.Game.Displayable.Canvas.NoMenuInputProcessor as NoMenuInputProcessor
import Org.Allbinary.Game.Input.NoPlayerGameInput as NoPlayerGameInput
import Javax.Microedition.Lcdui.NullCommandListener as NullCommandListener
import Org.Allbinary.Game.Displayable.Canvas.NullDemoPaintable as NullDemoPaintable
import Org.Allbinary.Game.Score.NullHighScoresSingletonFactory as NullHighScoresSingletonFactory
import Org.Allbinary.Graphics.Paint.NullInitUpdatePaintable as NullInitUpdatePaintable
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Game.Displayable.Canvas.NullWaitGameRunnable as NullWaitGameRunnable
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureUtil as OpenGLFeatureUtil
import Org.Allbinary.Image.Opengles.OpenGLImageSpecificFactory as OpenGLImageSpecificFactory
import Org.Allbinary.Graphics.Opengles.OpenGLThreadUtil as OpenGLThreadUtil
import Org.Allbinary.Logic.System.Os.OperatingSystemFactory as OperatingSystemFactory
import Org.Allbinary.Game.PlayerTypesFactory as PlayerTypesFactory
import Org.Allbinary.Game.Displayable.Canvas.PopupCommandFormInputProcessor as PopupCommandFormInputProcessor
import Org.Allbinary.Game.Displayable.Canvas.PopupMenuInputProcessor as PopupMenuInputProcessor
import Org.Allbinary.Game.Displayable.Canvas.PopupMenuInterface as PopupMenuInterface
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Media.Audio.PrimaryPlayerQueueFactory as PrimaryPlayerQueueFactory
import Org.Allbinary.Canvas.Processor as Processor
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory as ResourceLoadingLevelFactory
import Org.Allbinary.Canvas.RunnableCanvas as RunnableCanvas
import Org.Allbinary.Game.Layer.SWTUtil as SWTUtil
import Org.Allbinary.Game.Displayable.Canvas.SaveHighScoreRunnable as SaveHighScoreRunnable
import Org.Allbinary.Graphics.ScreenCaptureFactory as ScreenCaptureFactory
import Org.Allbinary.Graphics.Form.ScrollSelectionForm as ScrollSelectionForm
import Org.Allbinary.Graphics.Form.ScrollSelectionFormNoneFactory as ScrollSelectionFormNoneFactory
import Org.Allbinary.Media.Audio.SecondaryPlayerQueueFactory as SecondaryPlayerQueueFactory
import Org.Allbinary.Thread.SecondaryThreadPool as SecondaryThreadPool
import Org.Allbinary.Media.Audio.SelectSound as SelectSound
import Org.Allbinary.Game.Configuration.Feature.SensorFeatureFactory as SensorFeatureFactory
import Org.Allbinary.Input.Gyro.SingleSensorGameUpdateProcessor as SingleSensorGameUpdateProcessor
import Org.Allbinary.Game.Displayable.Canvas.StartIntermissionProcessor as StartIntermissionProcessor
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Input.Motion.Button.TouchButtonFactory as TouchButtonFactory
import Org.Allbinary.Input.Motion.Button.TouchButtonsPaintableFactory as TouchButtonsPaintableFactory
import Org.Allbinary.Game.Configuration.Feature.TouchFeatureFactory as TouchFeatureFactory
import Org.Allbinary.Input.Motion.Button.TouchScreenFactory as TouchScreenFactory
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "AllBinaryGameCanvas"


jchain : List String
jchain =
    [ "AllBinaryGameCanvas" ]
        ++ RunnableCanvas.jchain
        ++ AllBinaryGameCanvasInterface.jchain
        ++ GameCanvasRunnableInterface.jchain
        ++ MenuListener.jchain
        ++ IntermissionCompositeInterface.jchain
        ++ IntermissionEnableListenerInterface.jchain
        ++ PopupMenuInterface.jchain
        ++ DisplayChangeEventListener.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    RunnableCanvas.jfields ++ [ ( "basicColorFactory", JR.defaultOf "" ), ( "basicSetColorUtil", JR.defaultOf "" ), ( "touchFeatureFactory", JR.defaultOf "" ), ( "openGLFeatureFactory", JR.defaultOf "" ), ( "touchButtonFactory", JR.defaultOf "" ), ( "gameAdStateFactory", JR.defaultOf "" ), ( "gameStrings", JR.defaultOf "" ), ( "gameInputStrings", JR.defaultOf "" ), ( "gameStateFactory", JR.defaultOf "" ), ( "gameTickTimeDelayHelper", JR.defaultOf "" ), ( "gameTickDisplayInfoSingleton", JR.defaultOf "" ), ( "gameRunnable", JR.defaultOf "" ), ( "gamePauseRunnable", JR.defaultOf "" ), ( "formUtil", JR.defaultOf "" ), ( "myFormUtil", JR.defaultOf "" ), ( "updateMyFontProcessor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "gameSpecificPaintable", JR.defaultOf "" ), ( "sensorGameUpdateProcessor", JR.defaultOf "" ), ( "endGameInfo", JR.defaultOf "" ), ( "startIntermissionInterface", JR.defaultOf "" ), ( "endLevelIntermissionInterface", JR.defaultOf "" ), ( "gameLayerManager", JR.defaultOf "" ), ( "gameState", JR.defaultOf "" ), ( "gameOver", JR.defaultOf "Z" ), ( "initialized", JR.defaultOf "Z" ), ( "gameStateTimeHelper", JR.defaultOf "" ), ( "highScoresHelper", JR.defaultOf "" ), ( "highScoreSubmitted", JR.defaultOf "Z" ), ( "realHighScoresPaintable", JR.defaultOf "" ), ( "highScoresPaintable", JR.defaultOf "" ), ( "localPlayerGameInputList", JR.defaultOf "" ), ( "isCheating", JR.defaultOf "Z" ), ( "hashtable", JR.defaultOf "" ), ( "isSingleKeyRepeatableProcessing", JR.defaultOf "Z" ), ( "gameInitializationInterfaceFactoryInterface", JR.defaultOf "" ), ( "touchButtonsPaintable", JR.defaultOf "" ), ( "touchPaintable", JR.defaultOf "" ), ( "cheatProcessor", JR.defaultOf "" ), ( "gameInputProcessor", JR.defaultOf "" ), ( "endGameProcessor", JR.defaultOf "" ), ( "realEndGameProcessor", JR.defaultOf "" ), ( "startIntermissionProcessor", JR.defaultOf "" ), ( "realStartIntermissionProcessor", JR.defaultOf "" ), ( "endGamePaintable", JR.defaultOf "" ), ( "endGameStatePaintable", JR.defaultOf "" ), ( "nonBotPaintable", JR.defaultOf "" ), ( "intermissionPaintable", JR.defaultOf "" ), ( "startIntermissionPaintable", JR.defaultOf "" ), ( "mainStateProcessor", JR.defaultOf "" ), ( "processGameProcessor", JR.defaultOf "" ), ( "highScoresFactoryInterface", JR.defaultOf "" ), ( "startLevel", JR.defaultOf "I" ), ( "mainMenuInputProcessor", JR.defaultOf "" ), ( "popupMenuInputProcessor", JR.defaultOf "" ), ( "menuInputProcessor", JR.defaultOf "" ), ( "menuForm", JR.defaultOf "" ), ( "formPaintable", JR.defaultOf "" ), ( "openMenuPaintable", JR.defaultOf "" ), ( "menuPaintable", JR.defaultOf "" ), ( "currentTouchInputFactory", JR.defaultOf "" ), ( "colorFillPaintable", JR.defaultOf "" ), ( "baseGameStatistics", JR.defaultOf "" ), ( "primaryPlayerQueue", JR.defaultOf "" ), ( "secondaryPlayerQueue", JR.defaultOf "" ), ( "BUILD_GAME", JR.defaultOf "" ), ( "gameTypeFactory", JR.defaultOf "" ), ( "screenCapture", JR.defaultOf "" ), ( "basicMotionGesturesHandler", JR.defaultOf "" ), ( "gameKeyEventHandler", JR.defaultOf "" ), ( "gameBehavior", JR.defaultOf "" ), ( "menuBehavior", JR.defaultOf "" ), ( "progressPaintable", JR.defaultOf "" ), ( "fontHeightP", JR.defaultOf "I" ), ( "gameCanvasStartListener", JR.defaultOf "" ), ( "rawGameInputProcessor", JR.defaultOf "" ), ( "rawInputProcessor", JR.defaultOf "" ), ( "inputProcessor", JR.defaultOf "" ), ( "YIELD_SLEEP", JR.defaultOf "J" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "getInGameMenuBehavior_0", jm_getInGameMenuBehavior_0 )
        , ( "setCurrentThread_0", jm_setCurrentThread_0 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "onDisplayChangeEvent_1", jm_onDisplayChangeEvent_1 )
        , ( "updateMenuFromEvent_1", jm_updateMenuFromEvent_1 )
        , ( "processSleep_0", jm_processSleep_0 )
        , ( "initPopupMenu_0", jm_initPopupMenu_0 )
        , ( "initMenu_0", jm_initMenu_0 )
        , ( "initMenu2_0", jm_initMenu2_0 )
        , ( "updateMenu_0", jm_updateMenu_0 )
        , ( "updateMenu2_0", jm_updateMenu2_0 )
        , ( "pause_0", jm_pause_0 )
        , ( "unPause_0", jm_unPause_0 )
        , ( "isPausable_0", jm_isPausable_0 )
        , ( "popupMenu_0", jm_popupMenu_0 )
        , ( "popupMenu2_0", jm_popupMenu2_0 )
        , ( "toggleMenu_0", jm_toggleMenu_0 )
        , ( "closeMenu_0", jm_closeMenu_0 )
        , ( "closeMenu2_0", jm_closeMenu2_0 )
        , ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "processorInit_0", jm_processorInit_0 )
        , ( "setProcessGameProcessorInit_0", jm_setProcessGameProcessorInit_0 )
        , ( "initSpecialPaint_0", jm_initSpecialPaint_0 )
        , ( "init_2", jm_init_2 )
        , ( "notifyIntermission_1", jm_notifyIntermission_1 )
        , ( "mediaInit_0", jm_mediaInit_0 )
        , ( "initConfigurable_1", jm_initConfigurable_1 )
        , ( "initApp_1", jm_initApp_1 )
        , ( "initTouch_0", jm_initTouch_0 )
        , ( "updateCurrentTouchInputFactory_1", jm_updateCurrentTouchInputFactory_1 )
        , ( "updateTouch_0", jm_updateTouch_0 )
        , ( "updateTouch2_0", jm_updateTouch2_0 )
        , ( "postInitTouch_0", jm_postInitTouch_0 )
        , ( "initCommands_1", jm_initCommands_1 )
        , ( "addCommands_0", jm_addCommands_0 )
        , ( "itemStateChanged_1", jm_itemStateChanged_1 )
        , ( "updateScreenButtonPaintable_0", jm_updateScreenButtonPaintable_0 )
        , ( "updateScreenButtonPaintable2_0", jm_updateScreenButtonPaintable2_0 )
        , ( "getLayerManager_0", jm_getLayerManager_0 )
        , ( "setLayerManager_1", jm_setLayerManager_1 )
        , ( "isGameOver_0", jm_isGameOver_0 )
        , ( "setGameOver_1", jm_setGameOver_1 )
        , ( "processGameOver_0", jm_processGameOver_0 )
        , ( "isHighScoreSubmitted_0", jm_isHighScoreSubmitted_0 )
        , ( "setHighScoreSubmitted_1", jm_setHighScoreSubmitted_1 )
        , ( "getGameState_0", jm_getGameState_0 )
        , ( "setGameState_1", jm_setGameState_1 )
        , ( "updateGameState_0", jm_updateGameState_0 )
        , ( "updateGameKeyEventProcessor_0", jm_updateGameKeyEventProcessor_0 )
        , ( "removeAllGameKeyInputListenersOnBuild_0", jm_removeAllGameKeyInputListenersOnBuild_0 )
        , ( "removeAllGameKeyInputListeners_0", jm_removeAllGameKeyInputListeners_0 )
        , ( "removeAllGameKeyInputListeners2_0", jm_removeAllGameKeyInputListeners2_0 )
        , ( "removeKeyInputListener_1", jm_removeKeyInputListener_1 )
        , ( "updateEndGameProcessor_0", jm_updateEndGameProcessor_0 )
        , ( "updateEndGameProcessor2_0", jm_updateEndGameProcessor2_0 )
        , ( "buildGameInit_1", jm_buildGameInit_1 )
        , ( "cleanupGame_0", jm_cleanupGame_0 )
        , ( "loadResourceLoadingLevel_1", jm_loadResourceLoadingLevel_1 )
        , ( "loadResources_1", jm_loadResources_1 )
        , ( "updateColor_0", jm_updateColor_0 )
        , ( "buildGame_1", jm_buildGame_1 )
        , ( "buildGame2_0", jm_buildGame2_0 )
        , ( "addKeyInputListener_1", jm_addKeyInputListener_1 )
        , ( "setGameCanvasStartListener_1", jm_setGameCanvasStartListener_1 )
        , ( "loadState_0", jm_loadState_0 )
        , ( "getLoadStateHashtable_0", jm_getLoadStateHashtable_0 )
        , ( "setLoadStateHashtable_1", jm_setLoadStateHashtable_1 )
        , ( "getCurrentStateHashtable_0", jm_getCurrentStateHashtable_0 )
        , ( "paintGameOver_1", jm_paintGameOver_1 )
        , ( "draw_1", jm_draw_1 )
        , ( "clear_1", jm_clear_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "processEndLevelIntermissionGameState_0", jm_processEndLevelIntermissionGameState_0 )
        , ( "nonBotPaint_1", jm_nonBotPaint_1 )
        , ( "paintIntermission_1", jm_paintIntermission_1 )
        , ( "keyPressed_1", jm_keyPressed_1 )
        , ( "keyReleased_1", jm_keyReleased_1 )
        , ( "keyRepeated_1", jm_keyRepeated_1 )
        , ( "keyPressedByDevice_2", jm_keyPressedByDevice_2 )
        , ( "keyRepeatedByDevice_2", jm_keyRepeatedByDevice_2 )
        , ( "keyReleasedByDevice_2", jm_keyReleasedByDevice_2 )
        , ( "handleRawKey_3", jm_handleRawKey_3 )
        , ( "endProgress_1", jm_endProgress_1 )
        , ( "processPlayingGame_0", jm_processPlayingGame_0 )
        , ( "threadInit_0", jm_threadInit_0 )
        , ( "processGame_0", jm_processGame_0 )
        , ( "notifyDonePainting_0", jm_notifyDonePainting_0 )
        , ( "shouldWait_0", jm_shouldWait_0 )
        , ( "run_0", jm_run_0 )
        , ( "run2_0", jm_run2_0 )
        , ( "run3_0", jm_run3_0 )
        , ( "setRunning_1", jm_setRunning_1 )
        , ( "end_0", jm_end_0 )
        , ( "endGameThread_0", jm_endGameThread_0 )
        , ( "createHighScore_1", jm_createHighScore_1 )
        , ( "setHighScore_5", jm_setHighScore_5 )
        , ( "setHighScore2_5", jm_setHighScore2_5 )
        , ( "getGameStateTimeHelper_0", jm_getGameStateTimeHelper_0 )
        , ( "setInitialized_1", jm_setInitialized_1 )
        , ( "isInitialized_0", jm_isInitialized_0 )
        , ( "getSourceId_0", jm_getSourceId_0 )
        , ( "setProgressPaintable_1", jm_setProgressPaintable_1 )
        , ( "getStartIntermissionInterface_0", jm_getStartIntermissionInterface_0 )
        , ( "getEndLevelIntermissionInterface_0", jm_getEndLevelIntermissionInterface_0 )
        , ( "setTouchPaintableP_1", jm_setTouchPaintableP_1 )
        , ( "getTouchPaintableP_0", jm_getTouchPaintableP_0 )
        , ( "setEndGamePaintable_1", jm_setEndGamePaintable_1 )
        , ( "getEndGamePaintable_0", jm_getEndGamePaintable_0 )
        , ( "setIntermissionPaintable_1", jm_setIntermissionPaintable_1 )
        , ( "getIntermissionPaintable_0", jm_getIntermissionPaintable_0 )
        , ( "getEndGameInfoP_0", jm_getEndGameInfoP_0 )
        , ( "setHighScoresPaintable_1", jm_setHighScoresPaintable_1 )
        , ( "getHighScoresPaintable_0", jm_getHighScoresPaintable_0 )
        , ( "getRealHighScoresPaintable_0", jm_getRealHighScoresPaintable_0 )
        , ( "clearPlayerGameInputList_0", jm_clearPlayerGameInputList_0 )
        , ( "addPlayerGameInput_1", jm_addPlayerGameInput_1 )
        , ( "setMenuInputProcessor_1", jm_setMenuInputProcessor_1 )
        , ( "getMenuInputProcessor_0", jm_getMenuInputProcessor_0 )
        , ( "getMenuForm_0", jm_getMenuForm_0 )
        , ( "setMenuForm_1", jm_setMenuForm_1 )
        , ( "getStartLevel_0", jm_getStartLevel_0 )
        , ( "setStartLevel_1", jm_setStartLevel_1 )
        , ( "setTouchButtonsPaintable_1", jm_setTouchButtonsPaintable_1 )
        , ( "getTouchButtonsPaintable_0", jm_getTouchButtonsPaintable_0 )
        , ( "setGameInputProcessor_1", jm_setGameInputProcessor_1 )
        , ( "getGameInputProcessor_0", jm_getGameInputProcessor_0 )
        , ( "setEndGameProcessor_1", jm_setEndGameProcessor_1 )
        , ( "getEndGameProcessor_0", jm_getEndGameProcessor_0 )
        , ( "setEndGameStatePaintable_1", jm_setEndGameStatePaintable_1 )
        , ( "getEndGameStatePaintable_0", jm_getEndGameStatePaintable_0 )
        , ( "setNonBotPaintableP_1", jm_setNonBotPaintableP_1 )
        , ( "getNonBotPaintableP_0", jm_getNonBotPaintableP_0 )
        , ( "setStartIntermissionPaintable_1", jm_setStartIntermissionPaintable_1 )
        , ( "getStartIntermissionPaintable_0", jm_getStartIntermissionPaintable_0 )
        , ( "setMainStateProcessor_1", jm_setMainStateProcessor_1 )
        , ( "getMainStateProcessor_0", jm_getMainStateProcessor_0 )
        , ( "setProcessGameProcessor_1", jm_setProcessGameProcessor_1 )
        , ( "getProcessGameProcessor_0", jm_getProcessGameProcessor_0 )
        , ( "setOpenMenuPaintable_1", jm_setOpenMenuPaintable_1 )
        , ( "getOpenMenuPaintable_0", jm_getOpenMenuPaintable_0 )
        , ( "setPopupMenuInputProcessor_1", jm_setPopupMenuInputProcessor_1 )
        , ( "getPopupMenuInputProcessor_0", jm_getPopupMenuInputProcessor_0 )
        , ( "getSensorGameUpdateProcessor_0", jm_getSensorGameUpdateProcessor_0 )
        , ( "getRawGameInputProcessor_0", jm_getRawGameInputProcessor_0 )
        , ( "getRawInputProcessor_0", jm_getRawInputProcessor_0 )
        , ( "setInputProcessor_1", jm_setInputProcessor_1 )
        , ( "getInputProcessor_0", jm_getInputProcessor_0 )
        , ( "setMenuPaintable_1", jm_setMenuPaintable_1 )
        , ( "getMenuPaintable_0", jm_getMenuPaintable_0 )
        , ( "setFormPaintable_1", jm_setFormPaintable_1 )
        , ( "getFormPaintable_0", jm_getFormPaintable_0 )
        , ( "setGameSpecificPaintableP_1", jm_setGameSpecificPaintableP_1 )
        , ( "getGameSpecificPaintableP_0", jm_getGameSpecificPaintableP_0 )
        , ( "isSingleThread_0", jm_isSingleThread_0 )
        , ( "isRunningInAnotherThread_0", jm_isRunningInAnotherThread_0 )
        , ( "getType_0", jm_getType_0 )
        , ( "getTitle_0", jm_getTitle_0 )
        , ( "isPaused_0", jm_isPaused_0 ) ]
        RunnableCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryGameCanvas"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_getInGameMenuBehavior_0", jm_getInGameMenuBehavior_0 ), ( "jm_setCurrentThread_0", jm_setCurrentThread_0 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onDisplayChangeEvent_1", jm_onDisplayChangeEvent_1 ), ( "jm_updateMenuFromEvent_1", jm_updateMenuFromEvent_1 ), ( "jm_processSleep_0", jm_processSleep_0 ), ( "jm_initPopupMenu_0", jm_initPopupMenu_0 ), ( "jm_initMenu_0", jm_initMenu_0 ), ( "jm_initMenu2_0", jm_initMenu2_0 ), ( "jm_updateMenu_0", jm_updateMenu_0 ), ( "jm_updateMenu2_0", jm_updateMenu2_0 ), ( "jm_pause_0", jm_pause_0 ), ( "jm_unPause_0", jm_unPause_0 ), ( "jm_isPausable_0", jm_isPausable_0 ), ( "jm_popupMenu_0", jm_popupMenu_0 ), ( "jm_popupMenu2_0", jm_popupMenu2_0 ), ( "jm_toggleMenu_0", jm_toggleMenu_0 ), ( "jm_closeMenu_0", jm_closeMenu_0 ), ( "jm_closeMenu2_0", jm_closeMenu2_0 ), ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_processorInit_0", jm_processorInit_0 ), ( "jm_setProcessGameProcessorInit_0", jm_setProcessGameProcessorInit_0 ), ( "jm_initSpecialPaint_0", jm_initSpecialPaint_0 ), ( "jm_init_2", jm_init_2 ), ( "jm_notifyIntermission_1", jm_notifyIntermission_1 ), ( "jm_mediaInit_0", jm_mediaInit_0 ), ( "jm_initConfigurable_1", jm_initConfigurable_1 ), ( "jm_initApp_1", jm_initApp_1 ), ( "jm_initTouch_0", jm_initTouch_0 ), ( "jm_updateCurrentTouchInputFactory_1", jm_updateCurrentTouchInputFactory_1 ), ( "jm_updateTouch_0", jm_updateTouch_0 ), ( "jm_updateTouch2_0", jm_updateTouch2_0 ), ( "jm_postInitTouch_0", jm_postInitTouch_0 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_addCommands_0", jm_addCommands_0 ), ( "jm_itemStateChanged_1", jm_itemStateChanged_1 ), ( "jm_updateScreenButtonPaintable_0", jm_updateScreenButtonPaintable_0 ), ( "jm_updateScreenButtonPaintable2_0", jm_updateScreenButtonPaintable2_0 ), ( "jm_getLayerManager_0", jm_getLayerManager_0 ), ( "jm_setLayerManager_1", jm_setLayerManager_1 ), ( "jm_isGameOver_0", jm_isGameOver_0 ), ( "jm_setGameOver_1", jm_setGameOver_1 ), ( "jm_processGameOver_0", jm_processGameOver_0 ), ( "jm_isHighScoreSubmitted_0", jm_isHighScoreSubmitted_0 ), ( "jm_setHighScoreSubmitted_1", jm_setHighScoreSubmitted_1 ), ( "jm_getGameState_0", jm_getGameState_0 ), ( "jm_setGameState_1", jm_setGameState_1 ), ( "jm_updateGameState_0", jm_updateGameState_0 ), ( "jm_updateGameKeyEventProcessor_0", jm_updateGameKeyEventProcessor_0 ), ( "jm_removeAllGameKeyInputListenersOnBuild_0", jm_removeAllGameKeyInputListenersOnBuild_0 ), ( "jm_removeAllGameKeyInputListeners_0", jm_removeAllGameKeyInputListeners_0 ), ( "jm_removeAllGameKeyInputListeners2_0", jm_removeAllGameKeyInputListeners2_0 ), ( "jm_removeKeyInputListener_1", jm_removeKeyInputListener_1 ), ( "jm_updateEndGameProcessor_0", jm_updateEndGameProcessor_0 ), ( "jm_updateEndGameProcessor2_0", jm_updateEndGameProcessor2_0 ), ( "jm_buildGameInit_1", jm_buildGameInit_1 ), ( "jm_cleanupGame_0", jm_cleanupGame_0 ), ( "jm_loadResourceLoadingLevel_1", jm_loadResourceLoadingLevel_1 ), ( "jm_loadResources_1", jm_loadResources_1 ), ( "jm_updateColor_0", jm_updateColor_0 ), ( "jm_buildGame_1", jm_buildGame_1 ), ( "jm_buildGame2_0", jm_buildGame2_0 ), ( "jm_addKeyInputListener_1", jm_addKeyInputListener_1 ), ( "jm_setGameCanvasStartListener_1", jm_setGameCanvasStartListener_1 ), ( "jm_loadState_0", jm_loadState_0 ), ( "jm_getLoadStateHashtable_0", jm_getLoadStateHashtable_0 ), ( "jm_setLoadStateHashtable_1", jm_setLoadStateHashtable_1 ), ( "jm_getCurrentStateHashtable_0", jm_getCurrentStateHashtable_0 ), ( "jm_paintGameOver_1", jm_paintGameOver_1 ), ( "jm_draw_1", jm_draw_1 ), ( "jm_clear_1", jm_clear_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_processEndLevelIntermissionGameState_0", jm_processEndLevelIntermissionGameState_0 ), ( "jm_nonBotPaint_1", jm_nonBotPaint_1 ), ( "jm_paintIntermission_1", jm_paintIntermission_1 ), ( "jm_keyPressed_1", jm_keyPressed_1 ), ( "jm_keyReleased_1", jm_keyReleased_1 ), ( "jm_keyRepeated_1", jm_keyRepeated_1 ), ( "jm_keyPressedByDevice_2", jm_keyPressedByDevice_2 ), ( "jm_keyRepeatedByDevice_2", jm_keyRepeatedByDevice_2 ), ( "jm_keyReleasedByDevice_2", jm_keyReleasedByDevice_2 ), ( "jm_handleRawKey_3", jm_handleRawKey_3 ), ( "jm_endProgress_1", jm_endProgress_1 ), ( "jm_processPlayingGame_0", jm_processPlayingGame_0 ), ( "jm_threadInit_0", jm_threadInit_0 ), ( "jm_processGame_0", jm_processGame_0 ), ( "jm_notifyDonePainting_0", jm_notifyDonePainting_0 ), ( "jm_shouldWait_0", jm_shouldWait_0 ), ( "jm_run_0", jm_run_0 ), ( "jm_run2_0", jm_run2_0 ), ( "jm_run3_0", jm_run3_0 ), ( "jm_setRunning_1", jm_setRunning_1 ), ( "jm_end_0", jm_end_0 ), ( "jm_endGameThread_0", jm_endGameThread_0 ), ( "jm_createHighScore_1", jm_createHighScore_1 ), ( "jm_setHighScore_5", jm_setHighScore_5 ), ( "jm_setHighScore2_5", jm_setHighScore2_5 ), ( "jm_getGameStateTimeHelper_0", jm_getGameStateTimeHelper_0 ), ( "jm_setInitialized_1", jm_setInitialized_1 ), ( "jm_isInitialized_0", jm_isInitialized_0 ), ( "jm_getSourceId_0", jm_getSourceId_0 ), ( "jm_setProgressPaintable_1", jm_setProgressPaintable_1 ), ( "jm_getStartIntermissionInterface_0", jm_getStartIntermissionInterface_0 ), ( "jm_getEndLevelIntermissionInterface_0", jm_getEndLevelIntermissionInterface_0 ), ( "jm_setTouchPaintableP_1", jm_setTouchPaintableP_1 ), ( "jm_getTouchPaintableP_0", jm_getTouchPaintableP_0 ), ( "jm_setEndGamePaintable_1", jm_setEndGamePaintable_1 ), ( "jm_getEndGamePaintable_0", jm_getEndGamePaintable_0 ), ( "jm_setIntermissionPaintable_1", jm_setIntermissionPaintable_1 ), ( "jm_getIntermissionPaintable_0", jm_getIntermissionPaintable_0 ), ( "jm_getEndGameInfoP_0", jm_getEndGameInfoP_0 ), ( "jm_setHighScoresPaintable_1", jm_setHighScoresPaintable_1 ), ( "jm_getHighScoresPaintable_0", jm_getHighScoresPaintable_0 ), ( "jm_getRealHighScoresPaintable_0", jm_getRealHighScoresPaintable_0 ), ( "jm_clearPlayerGameInputList_0", jm_clearPlayerGameInputList_0 ), ( "jm_addPlayerGameInput_1", jm_addPlayerGameInput_1 ), ( "jm_setMenuInputProcessor_1", jm_setMenuInputProcessor_1 ), ( "jm_getMenuInputProcessor_0", jm_getMenuInputProcessor_0 ), ( "jm_getMenuForm_0", jm_getMenuForm_0 ), ( "jm_setMenuForm_1", jm_setMenuForm_1 ), ( "jm_getStartLevel_0", jm_getStartLevel_0 ), ( "jm_setStartLevel_1", jm_setStartLevel_1 ), ( "jm_setTouchButtonsPaintable_1", jm_setTouchButtonsPaintable_1 ), ( "jm_getTouchButtonsPaintable_0", jm_getTouchButtonsPaintable_0 ), ( "jm_setGameInputProcessor_1", jm_setGameInputProcessor_1 ), ( "jm_getGameInputProcessor_0", jm_getGameInputProcessor_0 ), ( "jm_setEndGameProcessor_1", jm_setEndGameProcessor_1 ), ( "jm_getEndGameProcessor_0", jm_getEndGameProcessor_0 ), ( "jm_setEndGameStatePaintable_1", jm_setEndGameStatePaintable_1 ), ( "jm_getEndGameStatePaintable_0", jm_getEndGameStatePaintable_0 ), ( "jm_setNonBotPaintableP_1", jm_setNonBotPaintableP_1 ), ( "jm_getNonBotPaintableP_0", jm_getNonBotPaintableP_0 ), ( "jm_setStartIntermissionPaintable_1", jm_setStartIntermissionPaintable_1 ), ( "jm_getStartIntermissionPaintable_0", jm_getStartIntermissionPaintable_0 ), ( "jm_setMainStateProcessor_1", jm_setMainStateProcessor_1 ), ( "jm_getMainStateProcessor_0", jm_getMainStateProcessor_0 ), ( "jm_setProcessGameProcessor_1", jm_setProcessGameProcessor_1 ), ( "jm_getProcessGameProcessor_0", jm_getProcessGameProcessor_0 ), ( "jm_setOpenMenuPaintable_1", jm_setOpenMenuPaintable_1 ), ( "jm_getOpenMenuPaintable_0", jm_getOpenMenuPaintable_0 ), ( "jm_setPopupMenuInputProcessor_1", jm_setPopupMenuInputProcessor_1 ), ( "jm_getPopupMenuInputProcessor_0", jm_getPopupMenuInputProcessor_0 ), ( "jm_getSensorGameUpdateProcessor_0", jm_getSensorGameUpdateProcessor_0 ), ( "jm_getRawGameInputProcessor_0", jm_getRawGameInputProcessor_0 ), ( "jm_getRawInputProcessor_0", jm_getRawInputProcessor_0 ), ( "jm_setInputProcessor_1", jm_setInputProcessor_1 ), ( "jm_getInputProcessor_0", jm_getInputProcessor_0 ), ( "jm_setMenuPaintable_1", jm_setMenuPaintable_1 ), ( "jm_getMenuPaintable_0", jm_getMenuPaintable_0 ), ( "jm_setFormPaintable_1", jm_setFormPaintable_1 ), ( "jm_getFormPaintable_0", jm_getFormPaintable_0 ), ( "jm_setGameSpecificPaintableP_1", jm_setGameSpecificPaintableP_1 ), ( "jm_getGameSpecificPaintableP_0", jm_getGameSpecificPaintableP_0 ), ( "jm_isSingleThread_0", jm_isSingleThread_0 ), ( "jm_isRunningInAnotherThread_0", jm_isRunningInAnotherThread_0 ), ( "jm_getType_0", jm_getType_0 ), ( "jm_getTitle_0", jm_getTitle_0 ), ( "jm_isPaused_0", jm_isPaused_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        [ ( "jstatic_id", jstatic_id ), ( "jstatic_TYPE", jstatic_TYPE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_id : JR.M
jstatic_id s =
    JR.static "AllBinaryGameCanvas" jclinit "id"
        (JR.int 0)
        s


jstatic_TYPE : JR.M
jstatic_TYPE s =
    JR.static "AllBinaryGameCanvas" jclinit "TYPE"
        (JR.int 2)
        s


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "gameLayerManager", "" ), ( "highScoresFactoryInterface", "" ), ( "gameInitializationInterfaceFactoryInterface", "" ), ( "buffered", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RunnableCanvas.jinit_3 JR.this [ (JR.local "commandListener"), (JR.field "EMPTY_CHILD_NAME_LIST" (JR.callStatic CanvasStrings.jm_getInstance_0 [])), (JR.bool True) ]),
                JR.exec (JR.setField "basicColorFactory" "" JR.this (JR.callStatic BasicColorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicSetColorUtil" "" JR.this (JR.callStatic BasicColorSetUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "touchFeatureFactory" "" JR.this (JR.callStatic TouchFeatureFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "openGLFeatureFactory" "" JR.this (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "touchButtonFactory" "" JR.this (JR.callStatic TouchButtonFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameAdStateFactory" "" JR.this (JR.callStatic GameAdStateFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameStrings" "" JR.this (JR.callStatic GameStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameInputStrings" "" JR.this (JR.callStatic GameInputStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameStateFactory" "" JR.this (JR.callStatic GameStateFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameTickTimeDelayHelper" "" JR.this (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameTickDisplayInfoSingleton" "" JR.this (JR.callStatic GameTickDisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameRunnable" "" JR.this (JR.new GameCanvasRunnable.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "gamePauseRunnable" "" JR.this (JR.new GameCanvasPauseRunnable.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "formUtil" "" JR.this (JR.callStatic FormUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "myFormUtil" "" JR.this (JR.callStatic MyFormUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "updateMyFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")),
                JR.exec (JR.setField "gameSpecificPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "sensorGameUpdateProcessor" "" JR.this (JR.new SingleSensorGameUpdateProcessor.jnew_0 [])),
                JR.exec (JR.setField "endGameInfo" "" JR.this (JR.new EndGameInfo.jnew_0 [])),
                JR.exec (JR.setField "startIntermissionInterface" "" JR.this (JR.new Intermission.jnew_0 [])),
                JR.exec (JR.setField "endLevelIntermissionInterface" "" JR.this (JR.new Intermission.jnew_0 [])),
                JR.exec (JR.setField "gameLayerManager" "" JR.this (JR.callStatic AllBinaryGameLayerManager.jm_getNullInstance_0 [])),
                JR.exec (JR.setField "gameState" "" JR.this (JR.field "NO_GAME_STATE" (JR.thisField "gameStateFactory"))),
                JR.exec (JR.setField "gameStateTimeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "realHighScoresPaintable" "" JR.this (JR.new HighScoresPaintable.jnew_0 [])),
                JR.exec (JR.setField "highScoresPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "localPlayerGameInputList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "hashtable" "" JR.this (JR.field "NULL_TABLE" (JR.thisField "stdUtil"))),
                JR.exec (JR.setField "gameInitializationInterfaceFactoryInterface" "" JR.this BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY),
                JR.exec (JR.setField "touchButtonsPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "touchPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "cheatProcessor" "" JR.this (JR.callStatic NoPlayerGameInput.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameInputProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "endGameProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "realEndGameProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "startIntermissionProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "realStartIntermissionProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "endGamePaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "endGameStatePaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "nonBotPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "intermissionPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "startIntermissionPaintable" "" JR.this (JR.callStatic NullInitUpdatePaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "mainStateProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "processGameProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "mainMenuInputProcessor" "" JR.this (JR.callStatic NoMenuInputProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "popupMenuInputProcessor" "" JR.this (JR.callStatic NoMenuInputProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "menuInputProcessor" "" JR.this (JR.callStatic NoMenuInputProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "menuForm" "" JR.this (JR.callStatic ScrollSelectionForm.jm_getNullScrollSelectionForm_0 [])),
                JR.exec (JR.setField "formPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "openMenuPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "menuPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "currentTouchInputFactory" "" JR.this (JR.callStatic NoButtonsTouchInputFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "colorFillPaintable" "" JR.this (JR.invoke "getInstance_2" (JR.callStatic ColorFillPaintableFactory.jm_getInstance_0 []) [ (JR.field "BLACK" (JR.thisField "basicColorFactory")), (JR.bool True) ])),
                JR.exec (JR.setField "baseGameStatistics" "" JR.this (JR.callStatic GameStatisticsFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "primaryPlayerQueue" "" JR.this (JR.callStatic PrimaryPlayerQueueFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "secondaryPlayerQueue" "" JR.this (JR.callStatic SecondaryPlayerQueueFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "BUILD_GAME" "" JR.this (JR.str "buildGame")),
                JR.exec (JR.setField "gameTypeFactory" "" JR.this (JR.callStatic GameTypeFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "screenCapture" "" JR.this (JR.callStatic ScreenCaptureFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicMotionGesturesHandler" "" JR.this (JR.callStatic BasicMotionGesturesHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameKeyEventHandler" "" JR.this (JR.callStatic GameKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "progressPaintable" "" JR.this (JR.callStatic ProgressCanvasFactory.jm_getLazyInstance_0 [])),
                JR.exec (JR.setField "gameCanvasStartListener" "" JR.this NullDemoPaintable.jstatic_NULL_DEMO_PAINTABLE),
                JR.exec (JR.setField "rawGameInputProcessor" "" JR.this (JR.new GameCanvasInputProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "rawInputProcessor" "" JR.this (JR.new FormInputProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "inputProcessor" "" JR.this (JR.invoke "getRawGameInputProcessor_0" JR.this [])),
                JR.exec (JR.setField "YIELD_SLEEP" "J" JR.this (JR.long 100)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "highScoresHelper" "" JR.this (JR.invoke "createHighScoresHelper_0" (JR.local "highScoresFactoryInterface") [])), 
                    JR.exec (JR.setField "gameInitializationInterfaceFactoryInterface" "" JR.this (JR.local "gameInitializationInterfaceFactoryInterface")), 
                    JR.exec (JR.invoke "init_2" JR.this [ (JR.local "gameLayerManager"), (JR.local "buffered") ]), 
                    JR.exec (JR.setField "highScoresFactoryInterface" "" JR.this (JR.local "highScoresFactoryInterface")), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.invoke "getGameType_0" (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []) []) (JR.field "BOT" (JR.thisField "gameTypeFactory"))) (JR.map2 JR.equals (JR.invoke "getGameType_0" (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []) []) (JR.field "NONE" (JR.thisField "gameTypeFactory")))) (JR.run [ 
                        JR.exec (JR.setField "gameBehavior" "" JR.this (JR.callStatic DemoGameBehavior.jm_getInstance_0 [])), 
                        JR.exec (JR.setField "menuBehavior" "" JR.this (JR.callStatic BaseMenuBehavior.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.setField "gameBehavior" "" JR.this (JR.callStatic BaseGameBehavior.jm_getInstance_0 [])), 
                        JR.exec (JR.setField "menuBehavior" "" JR.this (JR.invoke "getInGameMenuBehavior_0" JR.this [])) ]), 
                    JR.exec (JR.invoke "initPopupMenu_0" JR.this []), 
                    JR.exec (JR.invoke "initMenu_0" JR.this []), 
                    JR.exec (JR.invoke "initSpecialPaint_0" JR.this []), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic DisplayChangeEventHandler.jm_getInstance_0 []) [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.thisField "commonStrings")) ]) [ (JR.field "FD_WIDTH" (JR.thisField "canvasStrings")) ]) [ (JR.callStatic MyFontProcessor.jm_defaultCharWidth_1 [ (JR.local "font") ]) ]) [ (JR.field "FD_HEIGHT" (JR.thisField "canvasStrings")) ]) [ (JR.invoke "getHeight_0" (JR.local "font") []) ]) []), JR.this, (JR.field "UPDATE_MEASUREMENT" (JR.thisField "canvasStrings")) ]), 
                        JR.exec (JR.setField "fontHeightP" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                        JR.exec (JR.invoke "updateMeasurement_1" (JR.thisField "myFormUtil") [ (JR.local "graphics") ]), 
                        JR.declare "popupMenuRectangle" "" (JR.invoke "getPopupMenuRectangle_0" (JR.thisField "myFormUtil") []), 
                        JR.declare "basicPopupMenuPaintable" "" ((JR.invoke "getOpenMenuPaintable_0" JR.this [])), 
                        JR.exec (JR.invoke "init_1" (JR.local "basicPopupMenuPaintable") [ (JR.local "popupMenuRectangle") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getPopupMenuInputProcessor_0" JR.this []) (JR.callStatic NoMenuInputProcessor.jm_getInstance_0 [])) (JR.run [ 
                            JR.declare "popupMenuInputProcessor" "" ((JR.invoke "getPopupMenuInputProcessor_0" JR.this [])), 
                            JR.exec (JR.invoke "init_1" (JR.local "popupMenuInputProcessor") [ (JR.local "popupMenuRectangle") ]) ]) identity, 
                        JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ON_DISPLAY_CHANGE_EVENT" (JR.thisField "canvasStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInGameMenuBehavior_0 : JR.Method
jm_getInGameMenuBehavior_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic InGameMenuBehavior.jm_getInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_setCurrentThread_0 : JR.Method
jm_setCurrentThread_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.callStatic J2MEUtil.jm_isHTML_0 []) (JR.run [ 
                        JR.exec (JR.callVia RunnableCanvas.jvtable "setCurrentThreadFake_0" JR.this []) ]) (JR.run [ 
                        JR.exec (JR.callVia RunnableCanvas.jvtable "setCurrentThread_0" JR.this []) ]) ])
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


jm_onDisplayChangeEvent_1 : JR.Method
jm_onDisplayChangeEvent_1 jheap jthis jargs =
    JR.method [ ( "displayChangeEvent", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.thisField "commonStrings")) ]) [ (JR.invoke "toString_0" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []) []) ]) []), JR.this, (JR.field "UPDATE_MEASUREMENT" (JR.thisField "canvasStrings")) ]), 
                        JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")), 
                        JR.exec (JR.invoke "onDisplayChangeEvent_2" (JR.thisField "menuBehavior") [ JR.this, (JR.local "displayChangeEvent") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ON_DISPLAY_CHANGE_EVENT" (JR.thisField "canvasStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateMenuFromEvent_1 : JR.Method
jm_updateMenuFromEvent_1 jheap jthis jargs =
    JR.method [ ( "displayChangeEvent", "" ) ] ""
        (JR.run [ 
                    JR.declare "formType" "" (JR.invoke "getFormType_0" (JR.callStatic FormTypeFactory.jm_getInstance_0 []) []), 
                    JR.declare "rectangle" "" (JR.invoke "createFormRectangle_0" (JR.thisField "formUtil") []), 
                    JR.exec (JR.invoke "init_2" (JR.thisField "menuForm") [ (JR.local "rectangle"), (JR.local "formType") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "currentTouchInputFactory") (JR.callStatic NoButtonsTouchInputFactory.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.invoke "toggle_2" (JR.thisField "touchButtonFactory") [ (JR.invoke "isPaused_0" JR.this []), (JR.invoke "getList_0" (JR.thisField "currentTouchInputFactory") []) ]) ]) identity, 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_processSleep_0 : JR.Method
jm_processSleep_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia RunnableCanvas.jvtable "processSleep_0" JR.this []), 
                    JR.ifElse (JR.callStatic AllBinaryMediaManager.jm_update_0 []) (JR.run [ 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "process_0" (JR.thisField "primaryPlayerQueue") [])) (JR.run [ 
                            JR.exec (JR.invoke "process_0" (JR.thisField "secondaryPlayerQueue") []) ]) identity ]) identity, 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "processInputList_0" (JR.thisField "menuInputProcessor") []) (JR.map JR.neg (JR.int 1))) (JR.run [ 
                        JR.exec (JR.invoke "process_0" (JR.thisField "runnableCanvasRefreshHelper") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_initPopupMenu_0 : JR.Method
jm_initPopupMenu_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "popupMenuInputProcessor") (JR.callStatic NoMenuInputProcessor.jm_getInstance_0 [])) (JR.run [ 
                        JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                        JR.declare "popupMenuRectangle" "" (JR.invoke "getPopupMenuRectangle_0" (JR.thisField "myFormUtil") []), 
                        JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "TOUCH_ENABLED" (JR.thisField "touchFeatureFactory")) ]) (JR.run [ 
                            JR.exec (JR.invoke "setOpenMenuPaintable_1" JR.this [ (JR.new BasicPopupMenuPaintable.jnew_3 [ (JR.local "popupMenuRectangle"), (JR.invoke "getBackgroundBasicColor_0" (JR.thisField "gameLayerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.thisField "gameLayerManager") []) ]) ]), 
                            JR.exec (JR.invoke "setPopupMenuInputProcessor_1" JR.this [ (JR.new PopupMenuInputProcessor.jnew_4 [ (JR.new BasicArrayListD.jnew_0 []), (JR.map JR.neg (JR.int 1)), JR.this, (JR.local "popupMenuRectangle") ]) ]) ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_initMenu_0 : JR.Method
jm_initMenu_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "initMenu_1" (JR.thisField "menuBehavior") [ JR.this ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "initMenu"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_initMenu2_0 : JR.Method
jm_initMenu2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "closeMenu_0" JR.this []), 
                    JR.declare "formType" "" (JR.invoke "getFormType_0" (JR.callStatic FormTypeFactory.jm_getInstance_0 []) []), 
                    JR.declare "gameLimitedCommandTextItemArrayFactory" "" (JR.callStatic GameLimitedCommandTextItemArrayFactory.jm_getInstance_0 []), 
                    JR.declare "commandTextItemArrayFactory" "" (JR.invoke "getCommandTextItemArrayFactory_0" (JR.local "gameLimitedCommandTextItemArrayFactory") []), 
                    JR.declare "items" "" (JR.invoke "getInstance_3" (JR.local "commandTextItemArrayFactory") [ (JR.invoke "getCommandStack_0" JR.this []), (JR.invoke "getBackgroundBasicColor_0" (JR.thisField "gameLayerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.thisField "gameLayerManager") []) ]), 
                    JR.declare "rectangle" "" (JR.invoke "createFormRectangle_0" (JR.thisField "formUtil") []), 
                    JR.exec (JR.invoke "setMenuForm_1" JR.this [ (JR.callStatic CommandCurrentSelectionFormFactory.jm_getInstance_8 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.local "items"), (JR.local "rectangle"), (JR.local "formType"), (JR.int 25), (JR.bool False), (JR.invoke "getBackgroundBasicColor_0" (JR.thisField "gameLayerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.thisField "gameLayerManager") []) ]) ]), 
                    JR.declare "scrollSelectionForm" "" (JR.invoke "getMenuForm_0" JR.this []), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "TOUCH_ENABLED" (JR.thisField "touchFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.setField "mainMenuInputProcessor" "" JR.this (JR.new PopupCommandFormInputProcessor.jnew_5 [ (JR.new BasicArrayListD.jnew_0 []), (JR.map JR.neg (JR.int 1)), JR.this, (JR.local "scrollSelectionForm"), (JR.invoke "getPopupMenuInputProcessor_0" JR.this []) ])) ]) identity, 
                    JR.exec (JR.invoke "setMenuInputProcessor_1" JR.this [ (JR.invoke "getPopupMenuInputProcessor_0" JR.this []) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "scrollSelectionForm") (JR.callStatic ScrollSelectionFormNoneFactory.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.invoke "setFormPaintable_1" JR.this [ (JR.new FormPaintable.jnew_1 [ (JR.local "scrollSelectionForm") ]) ]) ]) identity, 
                    JR.exec (JR.invoke "closeMenu_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_updateMenu_0 : JR.Method
jm_updateMenu_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "updateMenu_1" (JR.thisField "menuBehavior") [ JR.this ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "initMenu"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateMenu2_0 : JR.Method
jm_updateMenu2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "scrollSelectionForm" "" (JR.invoke "getMenuForm_0" JR.this []), 
                    JR.exec (JR.invoke "deleteAll_0" (JR.local "scrollSelectionForm") []), 
                    JR.declare "gameLimitedCommandTextItemArrayFactory" "" (JR.callStatic GameLimitedCommandTextItemArrayFactory.jm_getInstance_0 []), 
                    JR.declare "commandTextItemArrayFactory" "" (JR.invoke "getCommandTextItemArrayFactory_0" (JR.local "gameLimitedCommandTextItemArrayFactory") []), 
                    JR.declare "items" "" (JR.invoke "getInstance_3" (JR.local "commandTextItemArrayFactory") [ (JR.invoke "getCommandStack_0" JR.this []), (JR.invoke "getBackgroundBasicColor_0" (JR.thisField "gameLayerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.thisField "gameLayerManager") []) ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "items")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN94699 -> (JR.setLocal "index" "I" (JR.lit jwN94699))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "scrollSelectionForm") [ (JR.aget (JR.local "items") (JR.local "index")) ]) ]) ], 
                    JR.declare "formType" "" (JR.invoke "getFormType_0" (JR.callStatic FormTypeFactory.jm_getInstance_0 []) []), 
                    JR.declare "rectangle" "" (JR.invoke "createFormRectangle_0" (JR.thisField "formUtil") []), 
                    JR.exec (JR.invoke "init_2" (JR.local "scrollSelectionForm") [ (JR.local "rectangle"), (JR.local "formType") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_pause_0 : JR.Method
jm_pause_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "pause_1" (JR.thisField "gameBehavior") [ JR.this ]), 
                    JR.exec (JR.invoke "closeMenu_0" JR.this []), 
                    JR.exec (JR.callVia RunnableCanvas.jvtable "pause_0" JR.this []), 
                    JR.exec (JR.invoke "toggle_2" (JR.thisField "touchButtonFactory") [ (JR.invoke "isPaused_0" JR.this []), (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) []) ]), 
                    JR.exec (JR.invoke "gc_0" (JR.thisField "tsUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_unPause_0 : JR.Method
jm_unPause_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "UNPAUSE" (JR.thisField "gameStrings")) ]), 
                    JR.exec (JR.invoke "closeMenu_0" JR.this []), 
                    JR.exec (JR.invoke "gc_0" (JR.thisField "tsUtil") []), 
                    JR.exec (JR.callVia RunnableCanvas.jvtable "unPause_0" JR.this []), 
                    JR.exec (JR.invoke "toggle_2" (JR.thisField "touchButtonFactory") [ (JR.invoke "isPaused_0" JR.this []), (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) []) ]), 
                    JR.exec (JR.invoke "unPause_1" (JR.thisField "gameBehavior") [ JR.this ]) ])
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


jm_popupMenu_0 : JR.Method
jm_popupMenu_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "popupMenu_1" (JR.thisField "menuBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_popupMenu2_0 : JR.Method
jm_popupMenu2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "primaryPlayerQueue") [ (JR.callStatic SelectSound.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "setMenuPaintable_1" JR.this [ (JR.invoke "getFormPaintable_0" JR.this []) ]), 
                    JR.exec (JR.invoke "setMenuInputProcessor_1" JR.this [ (JR.thisField "mainMenuInputProcessor") ]), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.thisField "basicMotionGesturesHandler") [ (JR.thisField "mainMenuInputProcessor") ]), 
                    JR.exec (JR.invoke "addListener_1" (JR.thisField "gameKeyEventHandler") [ (JR.thisField "mainMenuInputProcessor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toggleMenu_0 : JR.Method
jm_toggleMenu_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "TOGGLE_MENU" (JR.thisField "gameStrings")) ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getMenuPaintable_0" JR.this []) (JR.invoke "getOpenMenuPaintable_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.invoke "pause_0" JR.this []), 
                        JR.exec (JR.invoke "updateMenu_0" JR.this []), 
                        JR.exec (JR.invoke "popupMenu_0" JR.this []) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getMenuPaintable_0" JR.this []) (JR.invoke "getFormPaintable_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "primaryPlayerQueue") [ (JR.callStatic SelectSound.jm_getInstance_0 []) ]), 
                        JR.exec (JR.invoke "unPause_0" JR.this []) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_closeMenu_0 : JR.Method
jm_closeMenu_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "closeMenu_1" (JR.thisField "menuBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_closeMenu2_0 : JR.Method
jm_closeMenu2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setMenuPaintable_1" JR.this [ (JR.invoke "getOpenMenuPaintable_0" JR.this []) ]), 
                    JR.exec (JR.invoke "removeListener_1" (JR.thisField "basicMotionGesturesHandler") [ (JR.thisField "mainMenuInputProcessor") ]), 
                    JR.exec (JR.invoke "removeListener_1" (JR.thisField "gameKeyEventHandler") [ (JR.thisField "mainMenuInputProcessor") ]), 
                    JR.exec (JR.invoke "setMenuInputProcessor_1" JR.this [ (JR.invoke "getPopupMenuInputProcessor_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.thisField "basicMotionGesturesHandler") [ (JR.thisField "menuInputProcessor") ]), 
                    JR.exec (JR.invoke "addListener_1" (JR.thisField "gameKeyEventHandler") [ (JR.thisField "menuInputProcessor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeListener_1" (JR.thisField "basicMotionGesturesHandler") [ (JR.thisField "menuInputProcessor") ]), 
                    JR.exec (JR.invoke "removeListener_1" (JR.thisField "gameKeyEventHandler") [ (JR.thisField "menuInputProcessor") ]), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "primaryPlayerQueue") []), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "secondaryPlayerQueue") []) ])
        (jregister jheap)
        jthis
        jargs


jm_processorInit_0 : JR.Method
jm_processorInit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setMainStateProcessor_1" JR.this [ (JR.callStatic Processor.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "setProcessGameProcessorInit_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setProcessGameProcessorInit_0 : JR.Method
jm_setProcessGameProcessorInit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setProcessGameProcessor_1" JR.this [ (JR.new GameProcessor.jnew_1 [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initSpecialPaint_0 : JR.Method
jm_initSpecialPaint_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "initSpecialPaint_1" (JR.thisField "menuBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "gameLayerManager", "" ), ( "buffered", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setStartTimeTNT_0" (JR.thisField "gameStateTimeHelper") []), 
                    JR.exec (JR.invoke "setHighScoreSubmitted_1" JR.this [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "setLayerManager_1" JR.this [ (JR.local "gameLayerManager") ]), 
                    JR.ifElse (JR.map JR.not_ (JR.local "buffered")) (JR.run [ 
                        JR.declare "BUFF_MESSAGE" "" (JR.str "XXX Not Buffering Causes Concurrency Issues XXX"), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.local "BUFF_MESSAGE"), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Buffering is disabled") ]) ]), 
                    JR.exec (JR.invoke "setGameInputProcessor_1" JR.this [ (JR.callStatic Processor.jm_getInstance_0 []) ]), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "CHEATING" (JR.callStatic GameFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.setField "isCheating" "Z" JR.this (JR.bool True)), 
                        JR.exec (JR.setField "cheatProcessor" "" JR.this (JR.new CheatGameInputProcessor.jnew_1 [ JR.this ])), 
                        JR.exec (JR.invoke "addListener_1" (JR.thisField "gameKeyEventHandler") [ (JR.thisField "cheatProcessor") ]) ]) (JR.run [ 
                        JR.exec (JR.setField "isCheating" "Z" JR.this (JR.bool False)), 
                        JR.exec (JR.setField "cheatProcessor" "" JR.this (JR.callStatic NoPlayerGameInput.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.setField "realEndGameProcessor" "" JR.this (JR.new EndGameProcessor.jnew_1 [ JR.this ])), 
                    JR.exec (JR.invoke "setEndGameProcessor_1" JR.this [ (JR.callStatic Processor.jm_getInstance_0 []) ]), 
                    JR.exec (JR.setField "realStartIntermissionProcessor" "" JR.this (JR.new StartIntermissionProcessor.jnew_1 [ JR.this ])), 
                    JR.exec (JR.setField "startIntermissionProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])), 
                    JR.exec (JR.invoke "setEndGameStatePaintable_1" JR.this [ (JR.new EndGamePaintable.jnew_1 [ JR.this ]) ]), 
                    JR.exec (JR.invoke "setEndGamePaintable_1" JR.this [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "setIntermissionPaintable_1" JR.this [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "setListener_1" (JR.invoke "getStartIntermissionInterface_0" JR.this []) [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_notifyIntermission_1 : JR.Method
jm_notifyIntermission_1 jheap jthis jargs =
    JR.method [ ( "enable", "Z" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.local "enable") (JR.run [ 
                        JR.exec (JR.setField "startIntermissionProcessor" "" JR.this (JR.thisField "realStartIntermissionProcessor")) ]) (JR.run [ 
                        JR.exec (JR.setField "startIntermissionProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])) ]), 
                    JR.ifElse (JR.local "enable") (JR.run [ 
                        JR.exec (JR.invoke "setIntermissionPaintable_1" JR.this [ (JR.invoke "getStartIntermissionPaintable_0" JR.this []) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setIntermissionPaintable_1" JR.this [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_mediaInit_0 : JR.Method
jm_mediaInit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initConfigurable_1 : JR.Method
jm_initConfigurable_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 50), (JR.str "Setting Configurables") ]), 
                    JR.exec (JR.invoke "initGame_3" (JR.callStatic GameInitializationUtil.jm_getInstance_0 []) [ (JR.local "abeClientInformation"), JR.this, (JR.thisField "gameInitializationInterfaceFactoryInterface") ]), 
                    JR.declare "gameFeatureFactory" "" (JR.callStatic GameFeatureFactory.jm_getInstance_0 []), 
                    JR.declare "changedGameFeatureListener" "" (JR.callStatic ChangedGameFeatureListener.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isChangedFeature_1" (JR.local "changedGameFeatureListener") [ (JR.field "SOUND" (JR.local "gameFeatureFactory")) ]) (JR.run [ 
                        JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendboolean_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Sound Changing To: ") ]) [ (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "SOUND" (JR.local "gameFeatureFactory")) ]) ]) []), JR.this, (JR.str "initConfigurable") ]), 
                        JR.exec (JR.invoke "mediaInit_0" JR.this []), 
                        JR.exec (JR.invoke "remove_1" (JR.local "changedGameFeatureListener") [ (JR.field "SOUND" (JR.local "gameFeatureFactory")) ]) ]) identity, 
                    JR.declare "sensorFeatureFactory" "" (JR.callStatic SensorFeatureFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.or (JR.or (JR.invoke "isChangedFeature_1" (JR.local "changedGameFeatureListener") [ (JR.field "ORIENTATION_SENSORS" (JR.local "sensorFeatureFactory")) ]) (JR.invoke "isChangedFeature_1" (JR.local "changedGameFeatureListener") [ (JR.field "NO_ORIENTATION" (JR.local "sensorFeatureFactory")) ])) (JR.invoke "isChangedFeature_1" (JR.local "changedGameFeatureListener") [ (JR.field "SIMULATED_ORIENTATION_SENSORS" (JR.local "sensorFeatureFactory")) ])) (JR.run [ 
                        JR.exec (JR.invoke "remove_1" (JR.local "changedGameFeatureListener") [ (JR.field "NO_ORIENTATION" (JR.local "sensorFeatureFactory")) ]), 
                        JR.exec (JR.invoke "remove_1" (JR.local "changedGameFeatureListener") [ (JR.field "ORIENTATION_SENSORS" (JR.local "sensorFeatureFactory")) ]), 
                        JR.exec (JR.invoke "remove_1" (JR.local "changedGameFeatureListener") [ (JR.field "SIMULATED_ORIENTATION_SENSORS" (JR.local "sensorFeatureFactory")) ]) ]) identity, 
                    JR.declare "resourceLoadingLevelFactory" "" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "loadResourceLoadingLevel_1" JR.this [ (JR.field "LOAD_GAME" (JR.local "resourceLoadingLevelFactory")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initApp_1 : JR.Method
jm_initApp_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "initConfigurable_1" JR.this [ (JR.local "abeClientInformation") ]), 
                    JR.exec (JR.invoke "processorInit_0" JR.this []), 
                    JR.exec (JR.invoke "process_1" (JR.thisField "sensorGameUpdateProcessor") [ (JR.thisField "gameLayerManager") ]), 
                    JR.exec (JR.invoke "sendNotifications_1" (JR.thisField "sensorGameUpdateProcessor") [ (JR.thisField "gameLayerManager") ]), 
                    JR.exec (JR.invoke "initTouch_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_initTouch_0 : JR.Method
jm_initTouch_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "gameInitializedEvent" "" (JR.field "EVENT" (JR.callStatic GameInitializationUtil.jm_getInstance_0 [])), 
                    JR.declare "resourceLoadingLevelFactory" "" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "setResourceLoadingLevel_1" (JR.local "gameInitializedEvent") [ (JR.field "LOAD_TOUCH" (JR.local "resourceLoadingLevelFactory")) ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameInitializedEventHandler.jm_getInstance_0 []) [ (JR.local "gameInitializedEvent") ]), 
                    JR.exec (JR.invoke "defaultList_0" (JR.thisField "touchButtonFactory") []), 
                    JR.exec (JR.invoke "updateTouch_0" JR.this []), 
                    JR.exec (JR.invoke "postInitTouch_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_updateCurrentTouchInputFactory_1 : JR.Method
jm_updateCurrentTouchInputFactory_1 jheap jthis jargs =
    JR.method [ ( "nextTouchInput", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "nextTouchInput") (JR.thisField "currentTouchInputFactory")) (JR.run [ 
                        JR.exec (JR.setField "currentTouchInputFactory" "" JR.this (JR.local "nextTouchInput")), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.thisField "currentTouchInputFactory") []), JR.this, (JR.field "UDPATE_CURRENT_TOUCH_INPUT_FACTORY" (JR.thisField "gameInputStrings")) ]), 
                        JR.exec (JR.invoke "toggle_2" (JR.thisField "touchButtonFactory") [ (JR.invoke "isPaused_0" JR.this []), (JR.invoke "getList_0" (JR.thisField "currentTouchInputFactory") []) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateTouch_0 : JR.Method
jm_updateTouch_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateTouch_1" (JR.thisField "gameBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateTouch2_0 : JR.Method
jm_updateTouch2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "AUTO_HIDE_SHOW_SCREEN_BUTTONS" (JR.thisField "touchFeatureFactory")) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.map2 JR.sub (JR.invoke "getCurrentLevel_0" (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []) []) (JR.invoke "getStartLevel_0" JR.this [])) (JR.int 1)) (JR.run [ 
                            JR.exec (JR.invoke "setTouchPaintableP_1" JR.this [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]) ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_postInitTouch_0 : JR.Method
jm_postInitTouch_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setTouchButtonsPaintable_1" JR.this [ (JR.callStatic TouchButtonsPaintableFactory.jm_getInstance_1 [ (JR.invoke "getForegroundBasicColor_0" (JR.thisField "gameLayerManager") []) ]) ]), 
                    JR.exec (JR.invoke "updateScreenButtonPaintable_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "addCommands_0" JR.this []), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addCommands_0 : JR.Method
jm_addCommands_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "gameCommandsFactory" "" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []), 
                    JR.declare "myCommandsFactory" "" (JR.callStatic MyCommandsFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.callStatic DebugFactory.jm_getInstance_0 []) (JR.callStatic NoDebug.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "START_TRACE" (JR.local "gameCommandsFactory")) ]) ]) identity, 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "RESTART_COMMAND" (JR.local "gameCommandsFactory")) ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "PAUSE_COMMAND" (JR.local "myCommandsFactory")) ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "QUIT_COMMAND" (JR.local "gameCommandsFactory")) ]), 
                    JR.declare "isOverScan" "Z" (JR.invoke "isOverScan_0" (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic OperatingSystemFactory.jm_getInstance_0 []) []) []), 
                    JR.ifElse (JR.callStatic J2MEUtil.jm_isHTML_0 []) identity (JR.run [ 
                    JR.ifElse SWTUtil.jstatic_isSWT identity (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.local "isOverScan")) (JR.run [ 
                        JR.ifElse (JR.and (JR.invoke "isTouch_0" (JR.callStatic TouchScreenFactory.jm_getInstance_0 []) []) (JR.invoke "isAny_0" (JR.new InGameFeatures.jnew_0 []) [])) (JR.run [ 
                            JR.exec (JR.invoke "addCommand_1" JR.this [ InGameOptionsForm.jstatic_DISPLAY ]) ]) identity, 
                        JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "SAVE" (JR.local "gameCommandsFactory")) ]), 
                        JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "DISPLAY_LOAD_FORM" (JR.local "gameCommandsFactory")) ]) ]) identity ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_itemStateChanged_1 : JR.Method
jm_itemStateChanged_1 jheap jthis jargs =
    JR.method [ ( "item", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "itemLabel" "" (JR.invoke "getLabel_0" (JR.local "item") []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "ITEM_LABEL" (JR.thisField "commonLabels")) ]) [ (JR.local "itemLabel") ]) []), JR.this, (JR.str "itemStateChanged") ]), 
                        JR.ifElse (JR.instanceOf "ChoiceGroup" (JR.local "item")) (JR.run [ 
                            JR.declare "gameFeatureUtil" "" (JR.callStatic GameFeatureUtil.jm_getInstance_0 []), 
                            JR.ifElse (JR.invoke "isExclusive_1" (JR.local "gameFeatureUtil") [ (JR.local "itemLabel") ]) (JR.run [ 
                                JR.exec (JR.invoke "updateExclusiveForChoiceGroup_1" (JR.local "gameFeatureUtil") [ (JR.local "item") ]) ]) (JR.run [ 
                                JR.exec (JR.invoke "updateMultiple_1" (JR.local "gameFeatureUtil") [ (JR.local "item") ]) ]) ]) identity, 
                        JR.exec (JR.invoke "process_1" (JR.thisField "sensorGameUpdateProcessor") [ (JR.thisField "gameLayerManager") ]), 
                        JR.exec (JR.invoke "updateTouch_0" JR.this []), 
                        JR.exec (JR.invoke "updateScreenButtonPaintable_0" JR.this []), 
                        JR.exec (JR.invoke "sendNotifications_1" (JR.thisField "sensorGameUpdateProcessor") [ (JR.thisField "gameLayerManager") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "itemStateChanged"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateScreenButtonPaintable_0 : JR.Method
jm_updateScreenButtonPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateScreenButtonPaintable_1" (JR.thisField "gameBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateScreenButtonPaintable2_0 : JR.Method
jm_updateScreenButtonPaintable2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "AUTO_HIDE_SHOW_SCREEN_BUTTONS" (JR.thisField "touchFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.invoke "setTouchPaintableP_1" JR.this [ (JR.invoke "getTouchButtonsPaintable_0" JR.this []) ]), 
                        JR.exec (JR.invoke "setStartLevel_1" JR.this [ (JR.invoke "getCurrentLevel_0" (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []) []) ]) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "SHOW_SCREEN_BUTTONS" (JR.thisField "touchFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.invoke "setTouchPaintableP_1" JR.this [ (JR.invoke "getTouchButtonsPaintable_0" JR.this []) ]) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "HIDE_SCREEN_BUTTONS" (JR.thisField "touchFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.invoke "setTouchPaintableP_1" JR.this [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setTouchPaintableP_1" JR.this [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getLayerManager_0 : JR.Method
jm_getLayerManager_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameLayerManager") ])
        (jregister jheap)
        jthis
        jargs


jm_setLayerManager_1 : JR.Method
jm_setLayerManager_1 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameLayerManager" "" JR.this (JR.local "layerManager")) ])
        (jregister jheap)
        jthis
        jargs


jm_isGameOver_0 : JR.Method
jm_isGameOver_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "gameOver") ])
        (jregister jheap)
        jthis
        jargs


jm_setGameOver_1 : JR.Method
jm_setGameOver_1 jheap jthis jargs =
    JR.method [ ( "gameOver", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameOver" "Z" JR.this (JR.local "gameOver")) ])
        (jregister jheap)
        jthis
        jargs


jm_processGameOver_0 : JR.Method
jm_processGameOver_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "SET_GAME_OVER" (JR.thisField "gameStrings")) ]), 
                    JR.exec (JR.invoke "setGameOver_1" JR.this [ (JR.bool True) ]), 
                    JR.exec (JR.invoke "removePauseCommand_0" JR.this []), 
                    JR.exec (JR.invoke "setGameState_1" JR.this [ (JR.field "SHOW_END_RESULT_GAME_STATE" (JR.thisField "gameStateFactory")) ]), 
                    JR.exec (JR.invoke "setEndGamePaintable_1" JR.this [ (JR.invoke "getEndGameStatePaintable_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isHighScoreSubmitted_0 : JR.Method
jm_isHighScoreSubmitted_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "highScoreSubmitted") ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScoreSubmitted_1 : JR.Method
jm_setHighScoreSubmitted_1 jheap jthis jargs =
    JR.method [ ( "highScoreSubmitted", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "highScoreSubmitted" "Z" JR.this (JR.local "highScoreSubmitted")), 
                    JR.ifElse (JR.local "highScoreSubmitted") (JR.run [ 
                        JR.exec (JR.invoke "setSelectedHighScores_1" (JR.thisField "highScoresHelper") [ (JR.callStatic NullHighScoresSingletonFactory.jm_getInstance_0 []) ]) ]) identity, 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendboolean_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "isHighScoreSubmitted: ") ]) [ (JR.local "highScoreSubmitted") ]) []), JR.this, (JR.str "setHighScoreSubmitted") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameState_0 : JR.Method
jm_getGameState_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameState") ])
        (jregister jheap)
        jthis
        jargs


jm_setGameState_1 : JR.Method
jm_setGameState_1 jheap jthis jargs =
    JR.method [ ( "gameState", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "GAME_STATE" (JR.thisField "gameStrings")) ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "gameState") ]) ]) []), JR.this, (JR.field "SET_GAME_STATE" (JR.thisField "gameStrings")) ]), 
                    JR.exec (JR.setField "gameState" "" JR.this (JR.local "gameState")), 
                    JR.exec (JR.invoke "setStartTimeTNT_0" (JR.thisField "gameStateTimeHelper") []), 
                    JR.exec (JR.invoke "updateEndGameProcessor_0" JR.this []), 
                    JR.exec (JR.invoke "updateGameKeyEventProcessor_0" JR.this []), 
                    JR.exec (JR.invoke "setGameState_1" (JR.thisField "gameBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateGameState_0 : JR.Method
jm_updateGameState_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.thisField "gameAdStateFactory") []), 
                    JR.exec (JR.invoke "processAdState_2" (JR.local "gameAdState") [ (JR.thisField "gameState"), (JR.invoke "getGameType_0" (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []) []) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "gameState") (JR.field "PLAYING_GAME_STATE" (JR.thisField "gameStateFactory"))) (JR.run [ 
                        JR.exec (JR.invoke "processPageAdState_0" (JR.local "gameAdState") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateGameKeyEventProcessor_0 : JR.Method
jm_updateGameKeyEventProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.invoke "getGameState_0" JR.this []) (JR.field "PLAYING_GAME_STATE" (JR.thisField "gameStateFactory"))) (JR.thisField "isCheating")) identity identity ])
        (jregister jheap)
        jthis
        jargs


jm_removeAllGameKeyInputListenersOnBuild_0 : JR.Method
jm_removeAllGameKeyInputListenersOnBuild_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllGameKeyInputListeners_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAllGameKeyInputListeners_0 : JR.Method
jm_removeAllGameKeyInputListeners_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllGameKeyInputListeners_1" (JR.thisField "gameBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAllGameKeyInputListeners2_0 : JR.Method
jm_removeAllGameKeyInputListeners2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Remove PlayerInput Listeners"), JR.this, (JR.str "removeAllGameKeyInputListeners") ]), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.thisField "localPlayerGameInputList") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN103632 -> (JR.setLocal "index" "I" (JR.lit jwN103632))) JR.decrement) ]) (JR.run [ 
                        JR.declare "playerGameInput" "" (JR.invoke "get_1" (JR.thisField "localPlayerGameInputList") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "removeKeyInputListener_1" JR.this [ (JR.local "playerGameInput") ]), 
                        JR.exec (JR.invoke "removeNonAIInputGameKeyEvents_0" (JR.local "playerGameInput") []) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_removeKeyInputListener_1 : JR.Method
jm_removeKeyInputListener_1 jheap jthis jargs =
    JR.method [ ( "playerGameInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeListener_1" (JR.thisField "gameKeyEventHandler") [ (JR.local "playerGameInput") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateEndGameProcessor_0 : JR.Method
jm_updateEndGameProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateEndGameProcessor_1" (JR.thisField "gameBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateEndGameProcessor2_0 : JR.Method
jm_updateEndGameProcessor2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.invoke "getGameState_0" JR.this []) (JR.field "SHOW_END_RESULT_GAME_STATE" (JR.thisField "gameStateFactory"))) (JR.map2 JR.equals (JR.invoke "getGameState_0" JR.this []) (JR.field "SHOW_HIGH_SCORE_GAME_STATE" (JR.thisField "gameStateFactory")))) (JR.run [ 
                        JR.exec (JR.invoke "setEndGameProcessor_1" JR.this [ (JR.thisField "realEndGameProcessor") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setEndGameProcessor_1" JR.this [ (JR.callStatic Processor.jm_getInstance_0 []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_buildGameInit_1 : JR.Method
jm_buildGameInit_1 jheap jthis jargs =
    JR.method [ ( "isPortion", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_cleanupGame_0 : JR.Method
jm_cleanupGame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CLEANUP" (JR.thisField "commonStrings")) ]), 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 10), (JR.str "Cleaning Up") ]), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "primaryPlayerQueue") []), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "secondaryPlayerQueue") []), 
                    JR.exec (JR.invoke "clear_0" (JR.callStatic GameLevelDisplayChangeEventListenersFactory.jm_getInstance_0 []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_loadResourceLoadingLevel_1 : JR.Method
jm_loadResourceLoadingLevel_1 jheap jthis jargs =
    JR.method [ ( "resourceLoadingLevel", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameInitializedEvent" "" (JR.field "EVENT" (JR.callStatic GameInitializationUtil.jm_getInstance_0 [])), 
                    JR.exec (JR.invoke "setResourceLoadingLevel_1" (JR.local "gameInitializedEvent") [ (JR.local "resourceLoadingLevel") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameInitializedEventHandler.jm_getInstance_0 []) [ (JR.local "gameInitializedEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_loadResources_1 : JR.Method
jm_loadResources_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.declare "gameInitializedEvent" "" (JR.field "EVENT" (JR.callStatic GameInitializationUtil.jm_getInstance_0 [])), 
                    JR.exec (JR.invoke "setLevel_1" (JR.local "gameInitializedEvent") [ (JR.local "level") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameInitializedEventHandler.jm_getInstance_0 []) [ (JR.local "gameInitializedEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateColor_0 : JR.Method
jm_updateColor_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_buildGame_1 : JR.Method
jm_buildGame_1 jheap jthis jargs =
    JR.method [ ( "portion", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "endRecording_0" (JR.thisField "screenCapture") []), 
                    JR.exec (JR.invoke "startRecording_0" (JR.thisField "screenCapture") []), 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.str "Generic Build") ]), 
                    JR.exec (JR.invoke "removeAllGameKeyInputListenersOnBuild_0" JR.this []), 
                    JR.exec (JR.invoke "updateTouch_0" JR.this []), 
                    JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.str "High Scores") ]), 
                    JR.exec (JR.invoke "fetchHighScores_2" (JR.thisField "highScoresFactoryInterface") [ (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []), (JR.thisField "highScoresHelper") ]), 
                    JR.exec (JR.invoke "setHighScoresPaintable_1" JR.this [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.str "Finishing.") ]), 
                    JR.exec (JR.invoke "update_2" (JR.invoke "getEndGameInfoP_0" JR.this []) [ (JR.invoke "getGameInfo_0" (JR.invoke "getLayerManager_0" JR.this []) []), JR.this ]), 
                    JR.exec (JR.setField "isSingleKeyRepeatableProcessing" "Z" JR.this (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "SINGLE_KEY_REPEAT_PRESS" (JR.callStatic InputFeatureFactory.jm_getInstance_0 [])) ])), 
                    JR.exec (JR.invoke "setGameOver_1" JR.this [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.str "Finishing..") ]), 
                    JR.exec (JR.invoke "updateColor_0" JR.this []), 
                    JR.exec (JR.invoke "update_0" (JR.invoke "getStartIntermissionPaintable_0" JR.this []) []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isRunningInAnotherThread_0" JR.this [])) (JR.run [ 
                        JR.returnVoid ]) identity, 
                    JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.local "portion"), (JR.str "Finishing...") ]), 
                    JR.ifElse (JR.or (JR.invoke "isMainCanvas_0" JR.this []) (JR.map JR.not_ (JR.invoke "isInitialized_0" JR.this []))) (JR.run [ 
                        JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "LOAD_ONDEMAND" (JR.callStatic MainFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getCustomCommandListener_0" JR.this []) JR.null) (JR.run [ 
                                JR.exec (JR.invoke "end_0" (JR.local "progressCanvas") []) ]) identity ]) (JR.run [ 
                            JR.exec (JR.invoke "end_0" (JR.local "progressCanvas") []) ]), 
                        JR.exec (JR.invoke "setInitialized_1" JR.this [ (JR.bool True) ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getCustomCommandListener_0" JR.this []) NullCommandListener.jstatic_NULL_COMMAND_LISTENER) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Show Game Paintable in DemoCanvas Thread"), JR.this, (JR.thisField "BUILD_GAME") ]), 
                        JR.exec (JR.invoke "showGamePaintable_0" (JR.thisField "gameCanvasStartListener") []) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "No GameCanvasStartListener"), JR.this, (JR.thisField "BUILD_GAME") ]) ]), 
                    JR.exec (JR.invoke "setBasicColorP_1" (JR.thisField "colorFillPaintable") [ (JR.invoke "getBackgroundBasicColor_0" (JR.thisField "gameLayerManager") []) ]), 
                    JR.exec (JR.invoke "buildGame_1" (JR.thisField "gameBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_buildGame2_0 : JR.Method
jm_buildGame2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "ENABLE_PLAYER_GAME_INPUTS" (JR.thisField "gameInputStrings")) ]) [ (JR.invoke "size_0" (JR.thisField "localPlayerGameInputList") []) ]) []), JR.this, (JR.thisField "BUILD_GAME") ]), 
                    JR.declare "playerGameInput" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.thisField "localPlayerGameInputList") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN106332 -> (JR.setLocal "index" "I" (JR.lit jwN106332))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "playerGameInput" "" (JR.invoke "get_1" (JR.thisField "localPlayerGameInputList") [ (JR.local "index") ])), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "ENABLE_PLAYER_GAME_INPUT" (JR.thisField "gameInputStrings")) ]) [ (JR.invoke "toString_0" (JR.local "playerGameInput") []) ]) []), JR.this, (JR.thisField "BUILD_GAME") ]), 
                        JR.exec (JR.invoke "removeNonAIInputGameKeyEvents_0" (JR.local "playerGameInput") []), 
                        JR.exec (JR.invoke "addKeyInputListener_1" JR.this [ (JR.local "playerGameInput") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_addKeyInputListener_1 : JR.Method
jm_addKeyInputListener_1 jheap jthis jargs =
    JR.method [ ( "playerGameInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addListenerForPlayer_2" (JR.callStatic GameKeyEventHandler.jm_getInstance_0 []) [ (JR.local "playerGameInput"), (JR.invoke "getPlayerInputId_0" (JR.local "playerGameInput") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setGameCanvasStartListener_1 : JR.Method
jm_setGameCanvasStartListener_1 jheap jthis jargs =
    JR.method [ ( "gameCanvasStartListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameCanvasStartListener" "" JR.this (JR.local "gameCanvasStartListener")) ])
        (jregister jheap)
        jthis
        jargs


jm_loadState_0 : JR.Method
jm_loadState_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")) ]), 
                    JR.declare "hashtable" "" (JR.invoke "getLoadStateHashtable_0" JR.this []), 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.local "hashtable") JR.null) (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "hashtable") []) (JR.int 0))) (JR.run [ 
                        JR.declare "levelAsString" "" (JR.invoke "get_1" (JR.local "hashtable") [ GameInfo.jstatic_LEVEL_NAME ]), 
                        JR.declare "level" "I" (JR.invoke "intValue_0" (JR.callStatic JInteger.jm_valueOf_1 [ (JR.local "levelAsString") ]) []), 
                        JR.declare "gameInfo" "" (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []), 
                        JR.exec (JR.invoke "setCurrentLevel_1" (JR.local "gameInfo") [ (JR.local "level") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getLoadStateHashtable_0 : JR.Method
jm_getLoadStateHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.thisField "commonLabels")) ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "hashtable") ]) ]) []), JR.this, (JR.str "getLoadStateHashtable") ]), 
                    JR.return (JR.thisField "hashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_setLoadStateHashtable_1 : JR.Method
jm_setLoadStateHashtable_1 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.thisField "commonLabels")) ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "hashtable") ]) ]) []), JR.this, (JR.str "setLoadStateHashtable") ]), 
                    JR.exec (JR.setField "hashtable" "" JR.this (JR.local "hashtable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentStateHashtable_0 : JR.Method
jm_getCurrentStateHashtable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "hashtable" "" (JR.invoke "createHashtable_0" (JR.thisField "stdUtil") []), 
                    JR.declare "level" "I" (JR.invoke "getCurrentLevel_0" (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []) []), 
                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.invoke "toString_0" GameInfo.jstatic_LEVEL_NAME []), (JR.callStatic JInteger.jm_toString_1 [ (JR.local "level") ]) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "End: ") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "hashtable") ]) ]) []), JR.this, (JR.str "getCurrentStateHashtable") ]), 
                    JR.return (JR.local "hashtable") ])
        (jregister jheap)
        jthis
        jargs


jm_paintGameOver_1 : JR.Method
jm_paintGameOver_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_draw_1 : JR.Method
jm_draw_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "colorFillPaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getForegroundBasicColor_0" (JR.thisField "gameLayerManager") []) ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "gameSpecificPaintable") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_clear_1 : JR.Method
jm_clear_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "colorFillPaintable") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "nextRefresh_0" (JR.thisField "baseGameStatistics") []), 
                    JR.exec (JR.invoke "draw_1" JR.this [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "menuPaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "progressPaintable") [ (JR.local "graphics") ]) ])
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


jm_processEndLevelIntermissionGameState_0 : JR.Method
jm_processEndLevelIntermissionGameState_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_nonBotPaint_1 : JR.Method
jm_nonBotPaint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "endGamePaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "intermissionPaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paintIntermission_1" JR.this [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "touchPaintable") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintIntermission_1 : JR.Method
jm_paintIntermission_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
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
                    JR.exec (JR.invoke "keyPressedByDevice_2" (JR.thisField "inputProcessor") [ (JR.local "keyCode"), (JR.local "deviceId") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyRepeatedByDevice_2 : JR.Method
jm_keyRepeatedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.thisField "isSingleKeyRepeatableProcessing") (JR.run [ 
                        JR.exec (JR.invoke "keyPressedByDevice_2" (JR.thisField "inputProcessor") [ (JR.local "keyCode"), (JR.local "deviceId") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_keyReleasedByDevice_2 : JR.Method
jm_keyReleasedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "keyReleasedByDevice_3" (JR.thisField "inputProcessor") [ JR.this, (JR.local "keyCode"), (JR.local "deviceId") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_handleRawKey_3 : JR.Method
jm_handleRawKey_3 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ), ( "repeated", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_endProgress_1 : JR.Method
jm_endProgress_1 jheap jthis jargs =
    JR.method [ ( "isProgress", "Z" ) ] "I"
        (JR.run [ 
                    JR.declare "portion" "I" (JR.int 30), 
                    JR.ifElse (JR.and (JR.local "isProgress") (JR.invoke "isMainCanvas_0" JR.this [])) (JR.run [ 
                        JR.declare "myCommandsFactory" "" (JR.callStatic MyCommandsFactory.jm_getInstance_0 []), 
                        JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "start_0" (JR.local "progressCanvas") []), 
                        JR.exec (JR.invoke "commandAction_2" (JR.invoke "getCustomCommandListener_0" JR.this []) [ (JR.field "SET_DISPLAYABLE" (JR.local "myCommandsFactory")), (JR.local "progressCanvas") ]), 
                        JR.exec (JR.setLocal "portion" "I" (JR.int 4)) ]) identity, 
                    JR.return (JR.local "portion") ])
        (jregister jheap)
        jthis
        jargs


jm_processPlayingGame_0 : JR.Method
jm_processPlayingGame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "update_0" (JR.thisField "cheatProcessor") []), 
                    JR.exec (JR.invoke "update_0" (JR.invoke "getInputSensor_0" (JR.thisField "sensorGameUpdateProcessor") []) []), 
                    JR.exec (JR.invoke "process_0" (JR.thisField "gameInputProcessor") []), 
                    JR.exec (JR.invoke "process_0" (JR.thisField "gameLayerManager") []), 
                    JR.exec (JR.invoke "process_0" (JR.thisField "startIntermissionProcessor") []) ])
        (jregister jheap)
        jthis
        jargs


jm_threadInit_0 : JR.Method
jm_threadInit_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processGame_0 : JR.Method
jm_processGame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia RunnableCanvas.jvtable "process_0" JR.this []), 
                    JR.ifElse (JR.callStatic AllBinaryMediaManager.jm_update_0 []) (JR.run [ 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "process_0" (JR.thisField "primaryPlayerQueue") [])) (JR.run [ 
                            JR.exec (JR.invoke "process_0" (JR.thisField "secondaryPlayerQueue") []) ]) identity ]) identity, 
                    JR.exec (JR.invoke "process_0" (JR.thisField "mainStateProcessor") []), 
                    JR.exec (JR.invoke "processInputList_0" (JR.thisField "menuInputProcessor") []), 
                    JR.exec (JR.invoke "process_0" (JR.thisField "endGameProcessor") []), 
                    JR.exec (JR.invoke "nextFrame_0" (JR.thisField "baseGameStatistics") []) ])
        (jregister jheap)
        jthis
        jargs


jm_notifyDonePainting_0 : JR.Method
jm_notifyDonePainting_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.exec (JR.invoke "notifyObject_1" (JR.thisField "threadObjectUtil") [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_shouldWait_0 : JR.Method
jm_shouldWait_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.callStatic AndroidUtil.jm_isAndroid_0 []) identity (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "OPENGL_2D" (JR.thisField "openGLFeatureFactory")) ]) identity (JR.run [ 
                        JR.ifElse (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL" (JR.thisField "openGLFeatureFactory")) ]) (JR.run [ 
                            JR.declare "openGLImageSpecificFactory" "" (JR.callStatic OpenGLImageSpecificFactory.jm_getInstance_0 []), 
                            JR.while (JR.field "updating" (JR.local "openGLImageSpecificFactory")) (JR.run [ 
                                JR.exec (JR.callStatic JThread.jm_sleep_1 [ (JR.thisField "YIELD_SLEEP") ]) ]) ]) identity ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                        JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "addNormalPortion_2" (JR.local "progressCanvas") [ (JR.int 50), (JR.str "Game Thread") ]), 
                        JR.exec (JR.invoke "setCurrentThread_0" JR.this []), 
                        JR.exec (JR.invoke "setRunning_1" JR.this [ (JR.bool True) ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "getCustomCommandListener_0" JR.this []) NullCommandListener.jstatic_NULL_COMMAND_LISTENER) (JR.run [ 
                            JR.exec (JR.callStatic JThread.jm_sleep_1 [ (JR.thisField "YIELD_SLEEP") ]) ]) identity, 
                        JR.exec (JR.invoke "shouldWait_0" JR.this []), 
                        JR.exec (JR.invoke "threadInit_0" JR.this []), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "getCustomCommandListener_0" JR.this []) NullCommandListener.jstatic_NULL_COMMAND_LISTENER) (JR.run [ 
                            JR.exec (JR.callStatic JThread.jm_sleep_1 [ (JR.thisField "YIELD_SLEEP") ]) ]) identity, 
                        JR.exec (JR.invoke "open_0" JR.this []), 
                        JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.thisField "gameAdStateFactory") []), 
                        JR.exec (JR.invoke "init_0" (JR.local "gameAdState") []), 
                        JR.exec (JR.invoke "setGameIsReady_1" (JR.local "gameAdState") [ (JR.bool True) ]), 
                        JR.exec (JR.invoke "run_1" (JR.thisField "gameBehavior") [ JR.this ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_run2_0 : JR.Method
jm_run2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.or (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL_AS_GAME_THREAD" (JR.thisField "openGLFeatureFactory")) ]) (JR.callStatic J2MEUtil.jm_isHTML_0 [])) (JR.run [ 
                        JR.ifElse (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL_AS_GAME_THREAD" (JR.thisField "openGLFeatureFactory")) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "getName_0" (JR.field "OPENGL_AS_GAME_THREAD" (JR.thisField "openGLFeatureFactory")) []), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]) ]) identity, 
                        JR.ifElse (JR.callStatic J2MEUtil.jm_isHTML_0 []) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "HTML" (JR.callStatic GraphicsStrings.jm_getInstance_0 [])), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]) ]) identity, 
                        JR.declare "currentDisplayableFactory" "" (JR.callStatic CurrentDisplayableFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "setRunnable_1" (JR.local "currentDisplayableFactory") [ (JR.thisField "gameRunnable") ]), 
                        JR.exec (JR.invoke "setDisplayable_1" (JR.local "currentDisplayableFactory") [ JR.this ]), 
                        JR.exec (JR.invoke "onResume_0" (JR.callStatic OpenGLThreadUtil.jm_getInstance_0 []) []) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS" (JR.thisField "openGLFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "getName_0" (JR.field "OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS" (JR.thisField "openGLFeatureFactory")) []), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "onResume_0" (JR.callStatic OpenGLThreadUtil.jm_getInstance_0 []) []), 
                        JR.while (JR.invoke "isRunning_0" JR.this []) (JR.run [ 
                            JR.exec (JR.invoke "run3_0" JR.this []) ]), 
                        JR.exec (JR.invoke "end_0" JR.this []) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "this thread"), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                        JR.while (JR.invoke "isRunning_0" JR.this []) (JR.run [ 
                            JR.exec (JR.invoke "run3_0" JR.this []) ]), 
                        JR.exec (JR.invoke "end_0" JR.this []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_run3_0 : JR.Method
jm_run3_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setStartTime_1" (JR.thisField "loopTimeHelper") [ (JR.invoke "setStartTime_0" (JR.thisField "gameTickTimeDelayHelper") []) ]), 
                    JR.exec (JR.invoke "update_0" (JR.thisField "gameTickDisplayInfoSingleton") []), 
                    JR.exec (JR.invoke "processGame_0" JR.this []), 
                    JR.exec (JR.invoke "processLoopSleep_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setRunning_1 : JR.Method
jm_setRunning_1 jheap jthis jargs =
    JR.method [ ( "running", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia RunnableCanvas.jvtable "setRunning_1" JR.this [ (JR.local "running") ]), 
                    JR.try (JR.run [ 
                        JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                        JR.ifElse (JR.local "running") identity (JR.run [ 
                            JR.ifElse (JR.or (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL" (JR.thisField "openGLFeatureFactory")) ]) SWTUtil.jstatic_isSWT) (JR.run [ 
                                JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getGameType_0" (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []) []) (JR.field "BOT" (JR.thisField "gameTypeFactory"))) (JR.run [ 
                                    JR.declare "currentDisplayableFactory" "" (JR.callStatic CurrentDisplayableFactory.jm_getInstance_0 []), 
                                    JR.exec (JR.invoke "clearRunnable_0" (JR.local "currentDisplayableFactory") []) ]) identity, 
                                JR.exec (JR.invoke "end_0" JR.this []) ]) identity ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.thisField "SET_RUNNING"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_end_0 : JR.Method
jm_end_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "endRecording_0" (JR.thisField "screenCapture") []), 
                    JR.exec (JR.invoke "add_1" (JR.thisField "baseGameStatistics") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.invoke "toString_0" (JR.thisField "baseGameStatistics") []) ]) [ (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) []) ]), 
                    JR.exec (JR.invoke "init_0" (JR.thisField "baseGameStatistics") []), 
                    JR.exec (JR.invoke "removeListener_1" (JR.thisField "gameKeyEventHandler") [ (JR.thisField "cheatProcessor") ]), 
                    JR.exec (JR.invoke "close_0" JR.this []), 
                    JR.exec (JR.invoke "removeAllGameKeyInputListeners_0" JR.this []), 
                    JR.exec (JR.invoke "endGameThread_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_endGameThread_0 : JR.Method
jm_endGameThread_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeListener_1" (JR.callStatic DisplayChangeEventHandler.jm_getInstance_0 []) [ JR.this ]), 
                    JR.exec (JR.invoke "clear_0" (JR.callStatic GameLevelDisplayChangeEventListenersFactory.jm_getInstance_0 []) []), 
                    JR.declare "gameAdState" "" (JR.invoke "getCurrentInstance_0" (JR.thisField "gameAdStateFactory") []), 
                    JR.exec (JR.invoke "notPlayingAdState_0" (JR.local "gameAdState") []) ])
        (jregister jheap)
        jthis
        jargs


jm_createHighScore_1 : JR.Method
jm_createHighScore_1 jheap jthis jargs =
    JR.method [ ( "score", "J" ) ] ""
        (JR.run [ 
                    JR.declare "gameInfo" "" (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []), 
                    JR.return (JR.new HighScore.jnew_4 [ (JR.int 0), (JR.str "NONE"), (JR.new GameInfo.jnew_5 [ (JR.invoke "getGameType_0" (JR.local "gameInfo") []), (JR.invoke "getGameMode_0" (JR.local "gameInfo") []), (JR.field "PLAYER_TYPE_ONE" (JR.callStatic PlayerTypesFactory.jm_getInstance_0 [])), (JR.int 0), (JR.int 0) ]), (JR.local "score") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScore_5 : JR.Method
jm_setHighScore_5 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "name", "" ), ( "score", "J" ), ( "autoSubmit", "Z" ), ( "isLast", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setHighScore_6" (JR.thisField "gameBehavior") [ (JR.local "abeClientInformation"), JR.this, (JR.local "name"), (JR.local "score"), (JR.local "autoSubmit"), (JR.local "isLast") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScore2_5 : JR.Method
jm_setHighScore2_5 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "name", "" ), ( "score", "J" ), ( "autoSubmit", "Z" ), ( "isLast", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "highScore" "" (JR.invoke "createHighScore_1" JR.this [ (JR.local "score") ]), 
                    JR.declare "textBox" "" (JR.new HighScoreTextBox.jnew_9 [ (JR.thisField "highScoresFactoryInterface"), (JR.thisField "highScoresHelper"), (JR.local "abeClientInformation"), (JR.invoke "getGameInfo_0" (JR.thisField "gameLayerManager") []), (JR.invoke "getCustomCommandListener_0" JR.this []), (JR.local "name"), (JR.local "highScore"), (JR.invoke "getBackgroundBasicColor_0" (JR.thisField "gameLayerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.thisField "gameLayerManager") []) ]), 
                    JR.ifElse (JR.local "isLast") (JR.run [ 
                        JR.exec (JR.invoke "commandAction_2" (JR.invoke "getCustomCommandListener_0" JR.this []) [ (JR.field "SET_MENU_DISPLAYABLE" (JR.callStatic GameCommandsFactory.jm_getInstance_0 [])), (JR.local "textBox") ]) ]) identity, 
                    JR.ifElse (JR.local "autoSubmit") (JR.run [ 
                        JR.exec (JR.invoke "runTask_1" (JR.callStatic SecondaryThreadPool.jm_getInstance_0 []) [ (JR.new SaveHighScoreRunnable.jnew_2 [ (JR.local "isLast"), (JR.local "textBox") ]) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getGameStateTimeHelper_0 : JR.Method
jm_getGameStateTimeHelper_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameStateTimeHelper") ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialized_1 : JR.Method
jm_setInitialized_1 jheap jthis jargs =
    JR.method [ ( "initialized", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "initialized" "Z" JR.this (JR.local "initialized")) ])
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


jm_getSourceId_0 : JR.Method
jm_getSourceId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return jstatic_id ])
        (jregister jheap)
        jthis
        jargs


jm_setProgressPaintable_1 : JR.Method
jm_setProgressPaintable_1 jheap jthis jargs =
    JR.method [ ( "paintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "progressPaintable" "" JR.this (JR.local "paintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getStartIntermissionInterface_0 : JR.Method
jm_getStartIntermissionInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "startIntermissionInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_getEndLevelIntermissionInterface_0 : JR.Method
jm_getEndLevelIntermissionInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "endLevelIntermissionInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setTouchPaintableP_1 : JR.Method
jm_setTouchPaintableP_1 jheap jthis jargs =
    JR.method [ ( "paintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "touchPaintable" "" JR.this (JR.local "paintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getTouchPaintableP_0 : JR.Method
jm_getTouchPaintableP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "touchPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setEndGamePaintable_1 : JR.Method
jm_setEndGamePaintable_1 jheap jthis jargs =
    JR.method [ ( "endGamePaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "endGamePaintable" "" JR.this (JR.local "endGamePaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getEndGamePaintable_0 : JR.Method
jm_getEndGamePaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "endGamePaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setIntermissionPaintable_1 : JR.Method
jm_setIntermissionPaintable_1 jheap jthis jargs =
    JR.method [ ( "intermissionPaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "intermissionPaintable" "" JR.this (JR.local "intermissionPaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getIntermissionPaintable_0 : JR.Method
jm_getIntermissionPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "intermissionPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_getEndGameInfoP_0 : JR.Method
jm_getEndGameInfoP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "endGameInfo") ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScoresPaintable_1 : JR.Method
jm_setHighScoresPaintable_1 jheap jthis jargs =
    JR.method [ ( "highScoresPaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "highScoresPaintable" "" JR.this (JR.local "highScoresPaintable")) ])
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


jm_getRealHighScoresPaintable_0 : JR.Method
jm_getRealHighScoresPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "realHighScoresPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_clearPlayerGameInputList_0 : JR.Method
jm_clearPlayerGameInputList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "playerGameInput" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.thisField "localPlayerGameInputList") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN115605 -> (JR.setLocal "index" "I" (JR.lit jwN115605))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "playerGameInput" "" (JR.invoke "get_1" (JR.thisField "localPlayerGameInputList") [ (JR.local "index") ])), 
                        JR.exec (JR.invoke "removeListener_1" (JR.thisField "gameKeyEventHandler") [ (JR.local "playerGameInput") ]) ]) ], 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "localPlayerGameInputList") []) ])
        (jregister jheap)
        jthis
        jargs


jm_addPlayerGameInput_1 : JR.Method
jm_addPlayerGameInput_1 jheap jthis jargs =
    JR.method [ ( "playerGameInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "localPlayerGameInputList") [ (JR.local "playerGameInput") ]) ])
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


jm_getStartLevel_0 : JR.Method
jm_getStartLevel_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "startLevel") ])
        (jregister jheap)
        jthis
        jargs


jm_setStartLevel_1 : JR.Method
jm_setStartLevel_1 jheap jthis jargs =
    JR.method [ ( "startLevel", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "startLevel" "I" JR.this (JR.local "startLevel")) ])
        (jregister jheap)
        jthis
        jargs


jm_setTouchButtonsPaintable_1 : JR.Method
jm_setTouchButtonsPaintable_1 jheap jthis jargs =
    JR.method [ ( "touchButtonsPaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "touchButtonsPaintable" "" JR.this (JR.local "touchButtonsPaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getTouchButtonsPaintable_0 : JR.Method
jm_getTouchButtonsPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "touchButtonsPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setGameInputProcessor_1 : JR.Method
jm_setGameInputProcessor_1 jheap jthis jargs =
    JR.method [ ( "gameInputProcessor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameInputProcessor" "" JR.this (JR.local "gameInputProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameInputProcessor_0 : JR.Method
jm_getGameInputProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameInputProcessor") ])
        (jregister jheap)
        jthis
        jargs


jm_setEndGameProcessor_1 : JR.Method
jm_setEndGameProcessor_1 jheap jthis jargs =
    JR.method [ ( "endGameProcessor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "endGameProcessor" "" JR.this (JR.local "endGameProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getEndGameProcessor_0 : JR.Method
jm_getEndGameProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "endGameProcessor") ])
        (jregister jheap)
        jthis
        jargs


jm_setEndGameStatePaintable_1 : JR.Method
jm_setEndGameStatePaintable_1 jheap jthis jargs =
    JR.method [ ( "endGameStatePaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "endGameStatePaintable" "" JR.this (JR.local "endGameStatePaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getEndGameStatePaintable_0 : JR.Method
jm_getEndGameStatePaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "endGameStatePaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setNonBotPaintableP_1 : JR.Method
jm_setNonBotPaintableP_1 jheap jthis jargs =
    JR.method [ ( "nonBotPaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "nonBotPaintable" "" JR.this (JR.local "nonBotPaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getNonBotPaintableP_0 : JR.Method
jm_getNonBotPaintableP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "nonBotPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setStartIntermissionPaintable_1 : JR.Method
jm_setStartIntermissionPaintable_1 jheap jthis jargs =
    JR.method [ ( "startIntermissionPaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "startIntermissionPaintable" "" JR.this (JR.local "startIntermissionPaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getStartIntermissionPaintable_0 : JR.Method
jm_getStartIntermissionPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "startIntermissionPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setMainStateProcessor_1 : JR.Method
jm_setMainStateProcessor_1 jheap jthis jargs =
    JR.method [ ( "mainStateProcessor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "mainStateProcessor" "" JR.this (JR.local "mainStateProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMainStateProcessor_0 : JR.Method
jm_getMainStateProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "mainStateProcessor") ])
        (jregister jheap)
        jthis
        jargs


jm_setProcessGameProcessor_1 : JR.Method
jm_setProcessGameProcessor_1 jheap jthis jargs =
    JR.method [ ( "processGameProcessor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "processGameProcessor" "" JR.this (JR.local "processGameProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getProcessGameProcessor_0 : JR.Method
jm_getProcessGameProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "processGameProcessor") ])
        (jregister jheap)
        jthis
        jargs


jm_setOpenMenuPaintable_1 : JR.Method
jm_setOpenMenuPaintable_1 jheap jthis jargs =
    JR.method [ ( "openMenuPaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "openMenuPaintable" "" JR.this (JR.local "openMenuPaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getOpenMenuPaintable_0 : JR.Method
jm_getOpenMenuPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "openMenuPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setPopupMenuInputProcessor_1 : JR.Method
jm_setPopupMenuInputProcessor_1 jheap jthis jargs =
    JR.method [ ( "popupMenuInputProcessor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "popupMenuInputProcessor" "" JR.this (JR.local "popupMenuInputProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getPopupMenuInputProcessor_0 : JR.Method
jm_getPopupMenuInputProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "popupMenuInputProcessor") ])
        (jregister jheap)
        jthis
        jargs


jm_getSensorGameUpdateProcessor_0 : JR.Method
jm_getSensorGameUpdateProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "sensorGameUpdateProcessor") ])
        (jregister jheap)
        jthis
        jargs


jm_getRawGameInputProcessor_0 : JR.Method
jm_getRawGameInputProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "rawGameInputProcessor") ])
        (jregister jheap)
        jthis
        jargs


jm_getRawInputProcessor_0 : JR.Method
jm_getRawInputProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "rawInputProcessor") ])
        (jregister jheap)
        jthis
        jargs


jm_setInputProcessor_1 : JR.Method
jm_setInputProcessor_1 jheap jthis jargs =
    JR.method [ ( "inputProcessor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "inputProcessor" "" JR.this (JR.local "inputProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getInputProcessor_0 : JR.Method
jm_getInputProcessor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "inputProcessor") ])
        (jregister jheap)
        jthis
        jargs


jm_setMenuPaintable_1 : JR.Method
jm_setMenuPaintable_1 jheap jthis jargs =
    JR.method [ ( "menuPaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "menuPaintable" "" JR.this (JR.local "menuPaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMenuPaintable_0 : JR.Method
jm_getMenuPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "menuPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setFormPaintable_1 : JR.Method
jm_setFormPaintable_1 jheap jthis jargs =
    JR.method [ ( "formPaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "formPaintable" "" JR.this (JR.local "formPaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getFormPaintable_0 : JR.Method
jm_getFormPaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "formPaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_setGameSpecificPaintableP_1 : JR.Method
jm_setGameSpecificPaintableP_1 jheap jthis jargs =
    JR.method [ ( "gameSpecificPaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameSpecificPaintable" "" JR.this (JR.local "gameSpecificPaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameSpecificPaintableP_0 : JR.Method
jm_getGameSpecificPaintableP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameSpecificPaintable") ])
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


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return jstatic_TYPE ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

