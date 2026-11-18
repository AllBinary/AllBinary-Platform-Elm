module Org.Allbinary.Game.Displayable.Canvas.GameCommandCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Form.Item.Validation.AllCommandsVisitor as AllCommandsVisitor
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Input.Motion.Gesture.Observer.BasicMotionGesturesHandler as BasicMotionGesturesHandler
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.Graphics.Form.CommandCurrentSelectionFormFactory as CommandCurrentSelectionFormFactory
import Org.Allbinary.Graphics.Form.Item.CommandTextItemArrayFactory as CommandTextItemArrayFactory
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Graphics.Displayable.Event.DisplayChangeEventHandler as DisplayChangeEventHandler
import Org.Allbinary.Graphics.Displayable.Event.DisplayChangeEventListener as DisplayChangeEventListener
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Game.Input.Event.DownGameKeyEventHandler as DownGameKeyEventHandler
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Graphics.Form.FormPaintable as FormPaintable
import Org.Allbinary.Graphics.Form.FormTypeFactory as FormTypeFactory
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Input.GameInputStrings as GameInputStrings
import Org.Allbinary.Game.Input.Event.GameKeyEventFactory as GameKeyEventFactory
import Org.Allbinary.Game.Input.Event.GameKeyEventHandler as GameKeyEventHandler
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Displayable.Canvas.ImmediateCommandFormInputProcessor as ImmediateCommandFormInputProcessor
import Org.Allbinary.Game.Configuration.Feature.InputFeatureFactory as InputFeatureFactory
import Org.Allbinary.Game.Displayable.Canvas.MenuListener as MenuListener
import Org.Allbinary.Graphics.Displayable.MyCanvas as MyCanvas
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Game.Displayable.Canvas.NoMenuInputProcessor as NoMenuInputProcessor
import Javax.Microedition.Lcdui.NullCommandListener as NullCommandListener
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Graphics.Form.PaintableForm as PaintableForm
import Org.Allbinary.Game.Input.PlatformInputMappingFactory as PlatformInputMappingFactory
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle
import Org.Allbinary.Game.Displayable.RepaintBehavior as RepaintBehavior
import Org.Allbinary.Graphics.Displayable.Screen.ScreenRepaintProcessorFactory as ScreenRepaintProcessorFactory
import Org.Allbinary.Graphics.Form.ScrollSelectionFormNoneFactory as ScrollSelectionFormNoneFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Game.Input.Event.UpGameKeyEventHandler as UpGameKeyEventHandler
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "GameCommandCanvas"


jchain : List String
jchain =
    [ "GameCommandCanvas" ]
        ++ MyCanvas.jchain
        ++ MenuListener.jchain
        ++ DisplayChangeEventListener.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    MyCanvas.jfields ++ [ ( "repaintProcessor", JR.defaultOf "" ), ( "gameInputStrings", JR.defaultOf "" ), ( "foregroundBasicColor", JR.defaultOf "" ), ( "backgroundBasicColor", JR.defaultOf "" ), ( "inputToGameKeyMapping", JR.defaultOf "" ), ( "gameKeyFactory", JR.defaultOf "" ), ( "gameKeyEventFactory", JR.defaultOf "" ), ( "downGameKeyEventHandler", JR.defaultOf "" ), ( "upGameKeyEventHandler", JR.defaultOf "" ), ( "repaintBehavior", JR.defaultOf "" ), ( "updateMyFontProcessor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "foregroundColor", JR.defaultOf "I" ), ( "backgroundColor", JR.defaultOf "I" ), ( "menuInputProcessor", JR.defaultOf "" ), ( "menuPaintable", JR.defaultOf "" ), ( "menuForm", JR.defaultOf "" ), ( "isSingleKeyRepeatableProcessing", JR.defaultOf "Z" ), ( "fontHeight", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "onDisplayChangeEvent_1", jm_onDisplayChangeEvent_1 )
        , ( "initCommands_1", jm_initCommands_1 )
        , ( "initMenu_0", jm_initMenu_0 )
        , ( "createForm_0", jm_createForm_0 )
        , ( "createRectangle_1", jm_createRectangle_1 )
        , ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "update_0", jm_update_0 )
        , ( "getSourceId_0", jm_getSourceId_0 )
        , ( "keyPressed_1", jm_keyPressed_1 )
        , ( "keyReleased_1", jm_keyReleased_1 )
        , ( "keyRepeated_1", jm_keyRepeated_1 )
        , ( "keyPressedByDevice_2", jm_keyPressedByDevice_2 )
        , ( "keyReleasedByDevice_2", jm_keyReleasedByDevice_2 )
        , ( "keyRepeatedByDevice_2", jm_keyRepeatedByDevice_2 )
        , ( "addGameKeyEvent_3", jm_addGameKeyEvent_3 )
        , ( "removeGameKeyEvent_3", jm_removeGameKeyEvent_3 )
        , ( "paint_1", jm_paint_1 )
        , ( "setMenuInputProcessor_1", jm_setMenuInputProcessor_1 )
        , ( "getMenuInputProcessor_0", jm_getMenuInputProcessor_0 ) ]
        MyCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameCommandCanvas"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onDisplayChangeEvent_1", jm_onDisplayChangeEvent_1 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_initMenu_0", jm_initMenu_0 ), ( "jm_createForm_0", jm_createForm_0 ), ( "jm_createRectangle_1", jm_createRectangle_1 ), ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_getSourceId_0", jm_getSourceId_0 ), ( "jm_keyPressed_1", jm_keyPressed_1 ), ( "jm_keyReleased_1", jm_keyReleased_1 ), ( "jm_keyRepeated_1", jm_keyRepeated_1 ), ( "jm_keyPressedByDevice_2", jm_keyPressedByDevice_2 ), ( "jm_keyReleasedByDevice_2", jm_keyReleasedByDevice_2 ), ( "jm_keyRepeatedByDevice_2", jm_keyRepeatedByDevice_2 ), ( "jm_addGameKeyEvent_3", jm_addGameKeyEvent_3 ), ( "jm_removeGameKeyEvent_3", jm_removeGameKeyEvent_3 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_setMenuInputProcessor_1", jm_setMenuInputProcessor_1 ), ( "jm_getMenuInputProcessor_0", jm_getMenuInputProcessor_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_id", jstatic_id ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_id : JR.M
jstatic_id s =
    JR.static "GameCommandCanvas" jclinit "id"
        (JR.int 0)
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ), ( "name", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect MyCanvas.jinit_2 JR.this [ (JR.local "name"), (JR.field "EMPTY_CHILD_NAME_LIST" (JR.callStatic CanvasStrings.jm_getInstance_0 [])) ]),
                JR.exec (JR.setField "repaintProcessor" "" JR.this (JR.invoke "create_1" (JR.callStatic ScreenRepaintProcessorFactory.jm_getInstance_0 []) [ JR.this ])),
                JR.exec (JR.setField "gameInputStrings" "" JR.this (JR.callStatic GameInputStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "inputToGameKeyMapping" "" JR.this (JR.invoke "getInputMapping_0" (JR.invoke "getPersistentInputMappingInstance_0" (JR.callStatic PlatformInputMappingFactory.jm_getInstance_0 []) []) [])),
                JR.exec (JR.setField "gameKeyFactory" "" JR.this (JR.callStatic GameKeyFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameKeyEventFactory" "" JR.this (JR.callStatic GameKeyEventFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "downGameKeyEventHandler" "" JR.this (JR.callStatic DownGameKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "upGameKeyEventHandler" "" JR.this (JR.callStatic UpGameKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "updateMyFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")),
                JR.exec (JR.setField "menuInputProcessor" "" JR.this (JR.callStatic NoMenuInputProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "menuPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "menuForm" "" JR.this (JR.callStatic PaintableForm.jm_getNullPaintableForm_0 [])),
                JR.exec (JR.setField "isSingleKeyRepeatableProcessing" "Z" JR.this (JR.invoke "isFeature_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.field "SINGLE_KEY_REPEAT_PRESS" (JR.callStatic InputFeatureFactory.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "fontHeight" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "repaintBehavior" "" JR.this (JR.callStatic RepaintBehavior.jm_getInstance_0 [])), 
                    JR.exec (JR.setField "foregroundBasicColor" "" JR.this (JR.local "foregroundBasicColor")), 
                    JR.exec (JR.setField "backgroundBasicColor" "" JR.this (JR.local "backgroundBasicColor")), 
                    JR.exec (JR.setField "foregroundColor" "I" JR.this (JR.invoke "intValue_0" (JR.thisField "foregroundBasicColor") [])), 
                    JR.exec (JR.setField "backgroundColor" "I" JR.this (JR.invoke "intValue_0" (JR.thisField "backgroundBasicColor") [])), 
                    JR.exec (JR.invoke "initCommands_1" JR.this [ (JR.local "cmdListener") ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "cmdListener") NullCommandListener.jstatic_NULL_COMMAND_LISTENER) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.exec (JR.invoke "initMenu_0" JR.this []), 
                            JR.exec (JR.invoke "process_0" (JR.thisField "repaintProcessor") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) ) ] identity ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.thisField "commonStrings")) ]) [ (JR.field "FD_WIDTH" (JR.thisField "canvasStrings")) ]) [ (JR.callStatic MyFontProcessor.jm_defaultCharWidth_1 [ (JR.local "font") ]) ]) [ (JR.field "FD_HEIGHT" (JR.thisField "canvasStrings")) ]) [ (JR.invoke "getHeight_0" (JR.local "font") []) ]) []), JR.this, (JR.field "UPDATE_MEASUREMENT" (JR.thisField "canvasStrings")) ]), 
                        JR.exec (JR.setField "fontHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                        JR.declare "rectangle" "" (JR.invoke "createRectangle_1" JR.this [ (JR.invoke "size_0" (JR.thisField "menuForm") []) ]), 
                        JR.exec (JR.invoke "init_2" (JR.thisField "menuForm") [ (JR.local "rectangle"), (JR.field "VERTICAL_CENTER_FORM" (JR.callStatic FormTypeFactory.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "update_0" JR.this []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ON_DISPLAY_CHANGE_EVENT" (JR.thisField "canvasStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
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
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.thisField "commonStrings")) ]) [ (JR.invoke "toString_0" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []) []) ]) []), JR.this, (JR.field "ON_DISPLAY_CHANGE_EVENT" (JR.thisField "canvasStrings")) ]), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


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


jm_initMenu_0 : JR.Method
jm_initMenu_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "form" "" (JR.invoke "createForm_0" JR.this []), 
                    JR.exec (JR.setField "menuForm" "" JR.this (JR.local "form")), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "form") (JR.callStatic ScrollSelectionFormNoneFactory.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.invoke "setMenuInputProcessor_1" JR.this [ (JR.new ImmediateCommandFormInputProcessor.jnew_4 [ (JR.new BasicArrayListD.jnew_0 []), (JR.map JR.neg (JR.int 1)), JR.this, (JR.local "form") ]) ]), 
                        JR.exec (JR.setField "menuPaintable" "" JR.this (JR.new FormPaintable.jnew_1 [ (JR.local "form") ])) ]) identity, 
                    JR.exec (JR.invoke "onChangeRepaint_1" (JR.thisField "repaintBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createForm_0 : JR.Method
jm_createForm_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "items" "" (JR.invoke "getInstance_3" (JR.new CommandTextItemArrayFactory.jnew_1 [ (JR.new AllCommandsVisitor.jnew_0 []) ]) [ (JR.invoke "getCommandStack_0" JR.this []), (JR.thisField "backgroundBasicColor"), (JR.thisField "foregroundBasicColor") ]), 
                    JR.declare "rectangle" "" (JR.invoke "createRectangle_1" JR.this [ (JR.alength (JR.local "items")) ]), 
                    JR.return (JR.callStatic CommandCurrentSelectionFormFactory.jm_getInstance_8 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.local "items"), (JR.local "rectangle"), (JR.field "VERTICAL_CENTER_FORM" (JR.callStatic FormTypeFactory.jm_getInstance_0 [])), (JR.int 15), (JR.bool False), (JR.thisField "backgroundBasicColor"), (JR.thisField "foregroundBasicColor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createRectangle_1 : JR.Method
jm_createRectangle_1 jheap jthis jargs =
    JR.method [ ( "size", "I" ) ] ""
        (JR.run [ 
                    JR.declare "height" "I" (JR.map2 JR.mul (JR.local "size") (JR.thisField "fontHeight")), 
                    JR.declare "startY" "I" (JR.map2 JR.sub ((JR.map2 JR.div (JR.map2 JR.mul (JR.invoke "getLastHeight_0" (JR.thisField "displayInfo") []) (JR.int 2)) (JR.int 3))) (JR.local "height")), 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.declare "rectangle" "" (JR.new Rectangle.jnew_3 [ (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.int 30), (JR.local "startY") ]), (JR.map2 JR.sub (JR.invoke "getLastWidth_0" (JR.thisField "displayInfo") []) (JR.int 30)), (JR.local "startY") ]), 
                    JR.return (JR.local "rectangle") ])
        (jregister jheap)
        jthis
        jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "open") ]), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic BasicMotionGesturesHandler.jm_getInstance_0 []) [ (JR.invoke "getMenuInputProcessor_0" JR.this []) ]), 
                    JR.exec (JR.invoke "addListener_1" (JR.callStatic GameKeyEventHandler.jm_getInstance_0 []) [ (JR.invoke "getMenuInputProcessor_0" JR.this []) ]), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic DisplayChangeEventHandler.jm_getInstance_0 []) [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CLOSE" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "removeListener_1" (JR.callStatic BasicMotionGesturesHandler.jm_getInstance_0 []) [ (JR.invoke "getMenuInputProcessor_0" JR.this []) ]), 
                    JR.exec (JR.invoke "removeListener_1" (JR.callStatic GameKeyEventHandler.jm_getInstance_0 []) [ (JR.invoke "getMenuInputProcessor_0" JR.this []) ]), 
                    JR.exec (JR.invoke "removeListener_1" (JR.callStatic DisplayChangeEventHandler.jm_getInstance_0 []) [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_0" (JR.thisField "repaintProcessor") []) ])
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
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.local "keyCode") ]) []), JR.this, (JR.field "KEY_PRESSED" (JR.thisField "gameInputStrings")) ]), 
                    JR.exec (JR.invoke "addGameKeyEvent_3" JR.this [ (JR.local "keyCode"), (JR.int 0), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyReleasedByDevice_2 : JR.Method
jm_keyReleasedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeGameKeyEvent_3" JR.this [ (JR.local "keyCode"), (JR.local "deviceId"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyRepeatedByDevice_2 : JR.Method
jm_keyRepeatedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.thisField "isSingleKeyRepeatableProcessing") (JR.run [ 
                        JR.exec (JR.invoke "addGameKeyEvent_3" JR.this [ (JR.local "keyCode"), (JR.local "deviceId"), (JR.bool True) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_addGameKeyEvent_3 : JR.Method
jm_addGameKeyEvent_3 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ), ( "repeated", "Z" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "gameKey" "" (JR.invoke "getInstanceForCanvas_2" (JR.thisField "inputToGameKeyMapping") [ JR.this, (JR.local "keyCode") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "gameKey") (JR.field "NONE" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                            JR.declare "gameKeyEvent" "" (JR.invoke "getInstanceForInput_2" (JR.thisField "gameKeyEventFactory") [ JR.this, (JR.local "gameKey") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.thisField "downGameKeyEventHandler") [ (JR.local "gameKeyEvent") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.invoke "getInstanceForDevice_1" (JR.thisField "downGameKeyEventHandler") [ (JR.local "deviceId") ]) [ (JR.local "gameKeyEvent") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NO_KEY" (JR.thisField "gameInputStrings")) ]) [ (JR.local "keyCode") ]) []), JR.this, (JR.field "ADD_KEY_EVENT" (JR.thisField "gameInputStrings")) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Key Event Error"), JR.this, (JR.field "ADD_KEY_EVENT" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_removeGameKeyEvent_3 : JR.Method
jm_removeGameKeyEvent_3 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ), ( "repeated", "Z" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "gameKey" "" (JR.invoke "getInstanceForCanvas_2" (JR.thisField "inputToGameKeyMapping") [ JR.this, (JR.local "keyCode") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "gameKey") (JR.field "NONE" (JR.thisField "gameKeyFactory"))) (JR.run [ 
                            JR.declare "gameKeyEvent" "" (JR.invoke "getInstanceForInput_2" (JR.thisField "gameKeyEventFactory") [ JR.this, (JR.local "gameKey") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "gameKeyEvent") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.invoke "getInstanceForDevice_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "deviceId") ]) [ (JR.local "gameKeyEvent") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NO_KEY" (JR.thisField "gameInputStrings")) ]) [ (JR.local "keyCode") ]) []), JR.this, (JR.field "REMOVE_KEY_EVENT" (JR.thisField "gameInputStrings")) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Key Event Error"), JR.this, (JR.field "REMOVE_KEY_EVENT" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "menuPaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "repaint_1" (JR.thisField "repaintBehavior") [ JR.this ]) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

