module Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.canvas.transition.progress
-}

import JR
import Org.Allbinary.Graphics.Form.Item.ABCustomGaugeItem as ABCustomGaugeItem
import Org.Allbinary.Midlet.AllBinaryMidlet as AllBinaryMidlet
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Javax.Microedition.Lcdui.NullCanvas as NullCanvas
import Javax.Microedition.Lcdui.NullCommandListener as NullCommandListener
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Graphics.Paint.PaintableInterface as PaintableInterface
import Org.Allbinary.Thread.PathFindingThreadPool as PathFindingThreadPool
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Canvas.Processor as Processor
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressEndListener as ProgressEndListener
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressPaintable as ProgressPaintable
import Org.Allbinary.Canvas.RunnableCanvas as RunnableCanvas
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "ProgressCanvas"


jchain : List String
jchain =
    [ "ProgressCanvas" ]
        ++ RunnableCanvas.jchain
        ++ PaintableInterface.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    RunnableCanvas.jfields ++ [ ( "hasPainted", JR.defaultOf "Z" ), ( "backgroundBasicColor", JR.defaultOf "" ), ( "GAUGE_PAINTABLE", JR.defaultOf "" ), ( "maxValue", JR.defaultOf "F" ), ( "gauge", JR.defaultOf "" ), ( "TEXT", JR.defaultOf "" ), ( "updateMyFontProcessor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "allbinaryMidlet", JR.defaultOf "" ), ( "value", JR.defaultOf "F" ), ( "text", JR.defaultOf "" ), ( "background", JR.defaultOf "Z" ), ( "paintable", JR.defaultOf "" ), ( "inProgress", JR.defaultOf "Z" ), ( "IN_GAME_PROCESSOR", JR.defaultOf "" ), ( "inGameProcessor", JR.defaultOf "" ), ( "progressEndListener", JR.defaultOf "" ), ( "backgroundLabel", JR.defaultOf "" ), ( "START_BACKGROUND", JR.defaultOf "" ), ( "ADD_PORTION", JR.defaultOf "" ), ( "ADD_EARLY_PORTION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "init_1", jm_init_1 )
        , ( "update_1", jm_update_1 )
        , ( "initCommands_1", jm_initCommands_1 )
        , ( "getMaxValue_0", jm_getMaxValue_0 )
        , ( "start_0", jm_start_0 )
        , ( "startBackground_1", jm_startBackground_1 )
        , ( "endActual_0", jm_endActual_0 )
        , ( "inGame_0", jm_inGame_0 )
        , ( "end_0", jm_end_0 )
        , ( "endFromInitialLazyLoadingComplete_0", jm_endFromInitialLazyLoadingComplete_0 )
        , ( "isInGame_0", jm_isInGame_0 )
        , ( "endIfPaintedSinceStart_0", jm_endIfPaintedSinceStart_0 )
        , ( "addEarlyPortion_3", jm_addEarlyPortion_3 )
        , ( "addPortion_3", jm_addPortion_3 )
        , ( "addNormalPortion_2", jm_addNormalPortion_2 )
        , ( "setValue_1", jm_setValue_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "paint2_1", jm_paint2_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "getValue_0", jm_getValue_0 )
        , ( "setText_1", jm_setText_1 )
        , ( "getText_0", jm_getText_0 )
        , ( "setBackground_1", jm_setBackground_1 )
        , ( "isBackground_0", jm_isBackground_0 ) ]
        RunnableCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ProgressCanvas"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_init_1", jm_init_1 ), ( "jm_update_1", jm_update_1 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_getMaxValue_0", jm_getMaxValue_0 ), ( "jm_start_0", jm_start_0 ), ( "jm_startBackground_1", jm_startBackground_1 ), ( "jm_endActual_0", jm_endActual_0 ), ( "jm_inGame_0", jm_inGame_0 ), ( "jm_end_0", jm_end_0 ), ( "jm_endFromInitialLazyLoadingComplete_0", jm_endFromInitialLazyLoadingComplete_0 ), ( "jm_isInGame_0", jm_isInGame_0 ), ( "jm_endIfPaintedSinceStart_0", jm_endIfPaintedSinceStart_0 ), ( "jm_addEarlyPortion_3", jm_addEarlyPortion_3 ), ( "jm_addPortion_3", jm_addPortion_3 ), ( "jm_addNormalPortion_2", jm_addNormalPortion_2 ), ( "jm_setValue_1", jm_setValue_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paint2_1", jm_paint2_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_getValue_0", jm_getValue_0 ), ( "jm_setText_1", jm_setText_1 ), ( "jm_getText_0", jm_getText_0 ), ( "jm_setBackground_1", jm_setBackground_1 ), ( "jm_isBackground_0", jm_isBackground_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RunnableCanvas.jinit_3 JR.this [ NullCommandListener.jstatic_NULL_COMMAND_LISTENER, (JR.field "EMPTY_CHILD_NAME_LIST" (JR.callStatic CanvasStrings.jm_getInstance_0 [])), (JR.bool False) ]),
                JR.exec (JR.setField "GAUGE_PAINTABLE" "" JR.this (JR.new ProgressPaintable.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "maxValue" "F" JR.this (JR.float 100.0)),
                JR.exec (JR.setField "TEXT" "" JR.this (JR.field "LOADING" (JR.thisField "commonStrings"))),
                JR.exec (JR.setField "updateMyFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")),
                JR.exec (JR.setField "allbinaryMidlet" "" JR.this (JR.callStatic AllBinaryMidlet.jm_getNullInstance_0 [])),
                JR.exec (JR.setField "text" "" JR.this (JR.thisField "TEXT")),
                JR.exec (JR.setField "background" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "paintable" "" JR.this (JR.thisField "GAUGE_PAINTABLE")),
                JR.exec (JR.setField "inProgress" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "IN_GAME_PROCESSOR" "" JR.this (JR.anonymous "ProgressCanvas$1" Processor.jchain Processor.jvtable Processor.jfields Processor.jinit_0 [ ( "process_0", janon1_jm_process_0 ) ] [ ( "pathFindingThreadPool", "", (JR.callStatic PathFindingThreadPool.jm_getInstance_0 []) ) ] [])),
                JR.exec (JR.setField "inGameProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "progressEndListener" "" JR.this ProgressEndListener.jstatic_instance),
                JR.exec (JR.setField "backgroundLabel" "" JR.this (JR.str "Background AI Game Loading...")),
                JR.exec (JR.setField "START_BACKGROUND" "" JR.this (JR.str "startBackground")),
                JR.exec (JR.setField "ADD_PORTION" "" JR.this (JR.str "addPortion")),
                JR.exec (JR.setField "ADD_EARLY_PORTION" "" JR.this (JR.str "addEarlyPortion")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "backgroundBasicColor" "" JR.this (JR.local "backgroundBasicColor")), 
                    JR.exec (JR.setField "gauge" "" JR.this (JR.new ABCustomGaugeItem.jnew_5 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.cast "I" (JR.thisField "maxValue")), (JR.int 0), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.invoke "setHeight_1" (JR.thisField "gauge") [ (JR.map2 JR.add (JR.invoke "getHeight_0" (JR.local "font") []) (JR.int 2)) ]), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "gameMidlet", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "allbinaryMidlet" "" JR.this (JR.local "gameMidlet")) ])
        (jregister jheap)
        jthis
        jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
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


jm_getMaxValue_0 : JR.Method
jm_getMaxValue_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.thisField "maxValue") ])
        (jregister jheap)
        jthis
        jargs


jm_start_0 : JR.Method
jm_start_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "START_METHOD_NAME" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "setBackground_1" JR.this [ (JR.bool True) ]), 
                    JR.exec (JR.invoke "setHeight_1" (JR.thisField "gauge") [ (JR.int 30) ]), 
                    JR.exec (JR.invoke "setLabel_1" (JR.thisField "gauge") [ (JR.field "PLEASE_WAIT" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "setText_1" JR.this [ (JR.thisField "TEXT") ]), 
                    JR.exec (JR.invoke "setValue_1" JR.this [ (JR.int 0) ]), 
                    JR.exec (JR.setField "inGameProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])), 
                    JR.exec (JR.setField "paintable" "" JR.this (JR.thisField "GAUGE_PAINTABLE")), 
                    JR.exec (JR.setField "inProgress" "Z" JR.this (JR.bool True)) ])
        (jregister jheap)
        jthis
        jargs


jm_startBackground_1 : JR.Method
jm_startBackground_1 jheap jthis jargs =
    JR.method [ ( "background", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.thisField "START_BACKGROUND") ]), 
                    JR.exec (JR.invoke "setBackground_1" JR.this [ (JR.local "background") ]), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")), 
                    JR.exec (JR.invoke "setLabel_1" (JR.thisField "gauge") [ (JR.thisField "backgroundLabel") ]), 
                    JR.exec (JR.invoke "setText_1" JR.this [ (JR.thisField "TEXT") ]), 
                    JR.exec (JR.invoke "setValue_1" JR.this [ (JR.int 0) ]), 
                    JR.exec (JR.setField "inGameProcessor" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])), 
                    JR.exec (JR.setField "paintable" "" JR.this (JR.thisField "GAUGE_PAINTABLE")) ])
        (jregister jheap)
        jthis
        jargs


jm_endActual_0 : JR.Method
jm_endActual_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "commandAction_2" (JR.thisField "allbinaryMidlet") [ (JR.field "SHOW_GAME_CANVAS" (JR.callStatic GameCommandsFactory.jm_getInstance_0 [])), NullCanvas.jstatic_NULL_CANVAS ]), 
                    JR.exec (JR.setField "inProgress" "Z" JR.this (JR.bool False)), 
                    JR.exec (JR.invoke "inGame_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_inGame_0 : JR.Method
jm_inGame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onEndEvent_0" (JR.thisField "progressEndListener") []), 
                    JR.exec (JR.setField "inGameProcessor" "" JR.this (JR.thisField "IN_GAME_PROCESSOR")) ])
        (jregister jheap)
        jthis
        jargs


jm_end_0 : JR.Method
jm_end_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "END_METHOD_NAME" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "setValue_1" (JR.thisField "gauge") [ (JR.invoke "getMaxValue_0" JR.this []) ]), 
                    JR.exec (JR.invoke "endActual_0" JR.this []), 
                    JR.exec (JR.setField "paintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_endFromInitialLazyLoadingComplete_0 : JR.Method
jm_endFromInitialLazyLoadingComplete_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onEndEvent_0" (JR.thisField "progressEndListener") []), 
                    JR.exec (JR.invoke "setValue_1" (JR.thisField "gauge") [ (JR.invoke "getMaxValue_0" JR.this []) ]), 
                    JR.exec (JR.setField "inGameProcessor" "" JR.this (JR.thisField "IN_GAME_PROCESSOR")) ])
        (jregister jheap)
        jthis
        jargs


jm_isInGame_0 : JR.Method
jm_isInGame_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "inGameProcessor") (JR.thisField "IN_GAME_PROCESSOR")) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_endIfPaintedSinceStart_0 : JR.Method
jm_endIfPaintedSinceStart_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_addEarlyPortion_3 : JR.Method
jm_addEarlyPortion_3 jheap jthis jargs =
    JR.method [ ( "value", "I" ), ( "text", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setText_1" JR.this [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "text") ]) [ (JR.invoke "toString_0" (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.local "index") ]) []) ]) []) ]), 
                    JR.exec (JR.invoke "setValue_1" (JR.thisField "gauge") [ (JR.plus (JR.invoke "getValue_0" (JR.thisField "gauge") []) (JR.map2 JR.div (JR.invoke "getMaxValue_0" JR.this []) (JR.cast "F" (JR.local "value")))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addPortion_3 : JR.Method
jm_addPortion_3 jheap jthis jargs =
    JR.method [ ( "value", "I" ), ( "text", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setText_1" JR.this [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "text") ]) [ (JR.invoke "toString_0" (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.local "index") ]) []) ]) []) ]), 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.thisField "text"), JR.this, (JR.thisField "ADD_PORTION") ]), 
                    JR.exec (JR.invoke "setValue_1" (JR.thisField "gauge") [ (JR.plus (JR.invoke "getValue_0" (JR.thisField "gauge") []) (JR.map2 JR.div (JR.invoke "getMaxValue_0" JR.this []) (JR.cast "F" (JR.local "value")))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addNormalPortion_2 : JR.Method
jm_addNormalPortion_2 jheap jthis jargs =
    JR.method [ ( "value", "I" ), ( "text", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "text") (JR.local "text")) (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.local "text"), JR.this, (JR.thisField "ADD_PORTION") ]) ]) identity, 
                    JR.exec (JR.invoke "setText_1" JR.this [ (JR.local "text") ]), 
                    JR.exec (JR.invoke "setValue_1" (JR.thisField "gauge") [ (JR.plus (JR.invoke "getValue_0" (JR.thisField "gauge") []) (JR.map2 JR.div (JR.invoke "getMaxValue_0" JR.this []) (JR.cast "F" (JR.local "value")))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setValue_1 : JR.Method
jm_setValue_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "value" "F" JR.this (JR.cast "F" (JR.local "value"))), 
                    JR.exec (JR.invoke "setValue_1" (JR.thisField "gauge") [ (JR.cast "F" (JR.local "value")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "paintable") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint2_1 : JR.Method
jm_paint2_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.thisField "backgroundBasicColor") []) ]), 
                    JR.exec (JR.invoke "fillRect_4" (JR.local "graphics") [ (JR.int 0), (JR.int 0), (JR.invoke "getLastWidth_0" (JR.thisField "displayInfo") []), (JR.invoke "getLastHeight_0" (JR.thisField "displayInfo") []) ]), 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "gauge") [ (JR.local "graphics"), (JR.int 0), (JR.int 0) ]), 
                    JR.exec (JR.setField "hasPainted" "Z" JR.this (JR.bool True)) ])
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


jm_getValue_0 : JR.Method
jm_getValue_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.thisField "value") ])
        (jregister jheap)
        jthis
        jargs


jm_setText_1 : JR.Method
jm_setText_1 jheap jthis jargs =
    JR.method [ ( "text", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "text" "" JR.this (JR.local "text")) ])
        (jregister jheap)
        jthis
        jargs


jm_getText_0 : JR.Method
jm_getText_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "text") ])
        (jregister jheap)
        jthis
        jargs


jm_setBackground_1 : JR.Method
jm_setBackground_1 jheap jthis jargs =
    JR.method [ ( "background", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "background" "Z" JR.this (JR.local "background")) ])
        (jregister jheap)
        jthis
        jargs


jm_isBackground_0 : JR.Method
jm_isBackground_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "background") ])
        (jregister jheap)
        jthis
        jargs


janon1_jm_process_0 : JR.Method
janon1_jm_process_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                        JR.exec (JR.invoke "runAPriorityTask_0" (JR.thisField "pathFindingThreadPool") []) ])
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

