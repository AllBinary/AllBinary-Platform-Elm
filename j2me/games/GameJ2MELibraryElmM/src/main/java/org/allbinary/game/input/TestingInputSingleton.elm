module Org.Allbinary.Game.Input.TestingInputSingleton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Layer.AllBinaryGameLayer as AllBinaryGameLayer
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Game.Input.GameInputInterface as GameInputInterface
import Org.Allbinary.Game.Input.GameInputProcessor as GameInputProcessor
import Org.Allbinary.Game.Input.GameInputProcessorUtil as GameInputProcessorUtil
import Org.Allbinary.Game.Input.Event.GameKeyEvent as GameKeyEvent
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Graphics.RectangleFactory as RectangleFactory
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.View.ViewPosition as ViewPosition


jclass : String
jclass =
    "TestingInputSingleton"


jchain : List String
jchain =
    [ "TestingInputSingleton" ]
        ++ AllBinaryGameLayer.jchain
        ++ GameInputInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryGameLayer.jfields ++ [ ( "inputProcessorArray", JR.defaultOf "" ), ( "testInputPaintable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "initInputProcessors_0", jm_initInputProcessors_0 )
        , ( "initInputProcessorsForTestInput_1", jm_initInputProcessorsForTestInput_1 )
        , ( "processInputList_2", jm_processInputList_2 )
        , ( "processInput_1", jm_processInput_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "implmentsGameInputInterface_0", jm_implmentsGameInputInterface_0 ) ]
        AllBinaryGameLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TestingInputSingleton"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_initInputProcessors_0", jm_initInputProcessors_0 ), ( "jm_initInputProcessorsForTestInput_1", jm_initInputProcessorsForTestInput_1 ), ( "jm_processInputList_2", jm_processInputList_2 ), ( "jm_processInput_1", jm_processInput_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_implmentsGameInputInterface_0", jm_implmentsGameInputInterface_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TestingInputSingleton" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryGameLayer.jinit_3 JR.this [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), RectangleFactory.jstatic_SINGLETON, (JR.callStatic ViewPosition.jm_getInstanceD_0 []) ]),
                JR.exec (JR.setField "inputProcessorArray" "" JR.this (JR.newArray "" [ (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "testInputPaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.callStatic GameInputProcessorUtil.jm_init_1 [ (JR.thisField "inputProcessorArray") ]) ]) ])
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


jm_initInputProcessors_0 : JR.Method
jm_initInputProcessors_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_initInputProcessorsForTestInput_1 : JR.Method
jm_initInputProcessorsForTestInput_1 jheap jthis jargs =
    JR.method [ ( "aTestInputInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "testInputInterface" "" (JR.local "aTestInputInterface"), 
                    JR.exec (JR.setField "testInputPaintable" "" JR.this (JR.local "testInputInterface")), 
                    JR.exec (JR.andThen (JR.thisField "inputProcessorArray") (\jaN69475 -> JR.andThen Canvas.jstatic_UP (\jiN69475 -> (JR.aset (JR.lit jaN69475) (JR.lit jiN69475) (JR.anonymous "TestingInputSingleton$1" GameInputProcessor.jchain GameInputProcessor.jvtable GameInputProcessor.jfields GameInputProcessor.jinit_0 [ ( "processEvent_2", janon1_jm_processEvent_2 ) ] [] []))))), 
                    JR.exec (JR.andThen (JR.thisField "inputProcessorArray") (\jaN69623 -> JR.andThen Canvas.jstatic_DOWN (\jiN69623 -> (JR.aset (JR.lit jaN69623) (JR.lit jiN69623) (JR.anonymous "TestingInputSingleton$2" GameInputProcessor.jchain GameInputProcessor.jvtable GameInputProcessor.jfields GameInputProcessor.jinit_0 [ ( "processEvent_2", janon2_jm_processEvent_2 ) ] [] []))))), 
                    JR.exec (JR.andThen (JR.thisField "inputProcessorArray") (\jaN69771 -> JR.andThen Canvas.jstatic_LEFT (\jiN69771 -> (JR.aset (JR.lit jaN69771) (JR.lit jiN69771) (JR.anonymous "TestingInputSingleton$3" GameInputProcessor.jchain GameInputProcessor.jvtable GameInputProcessor.jfields GameInputProcessor.jinit_0 [ ( "processEvent_2", janon3_jm_processEvent_2 ) ] [] []))))), 
                    JR.exec (JR.andThen (JR.thisField "inputProcessorArray") (\jaN69919 -> JR.andThen Canvas.jstatic_RIGHT (\jiN69919 -> (JR.aset (JR.lit jaN69919) (JR.lit jiN69919) (JR.anonymous "TestingInputSingleton$4" GameInputProcessor.jchain GameInputProcessor.jvtable GameInputProcessor.jfields GameInputProcessor.jinit_0 [ ( "processEvent_2", janon4_jm_processEvent_2 ) ] [] []))))), 
                    JR.exec (JR.andThen (JR.thisField "inputProcessorArray") (\jaN70067 -> JR.andThen Canvas.jstatic_KEY_NUM7 (\jiN70067 -> (JR.aset (JR.lit jaN70067) (JR.lit jiN70067) (JR.anonymous "TestingInputSingleton$5" GameInputProcessor.jchain GameInputProcessor.jvtable GameInputProcessor.jfields GameInputProcessor.jinit_0 [ ( "processEvent_2", janon5_jm_processEvent_2 ) ] [] []))))), 
                    JR.exec (JR.andThen (JR.thisField "inputProcessorArray") (\jaN70215 -> JR.andThen Canvas.jstatic_KEY_NUM9 (\jiN70215 -> (JR.aset (JR.lit jaN70215) (JR.lit jiN70215) (JR.anonymous "TestingInputSingleton$6" GameInputProcessor.jchain GameInputProcessor.jvtable GameInputProcessor.jfields GameInputProcessor.jinit_0 [ ( "processEvent_2", janon6_jm_processEvent_2 ) ] [] []))))), 
                    JR.exec (JR.callStatic GameInputProcessorUtil.jm_init_1 [ (JR.thisField "inputProcessorArray") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processInputList_2 : JR.Method
jm_processInputList_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "list", "" ) ] ""
        (JR.run [ 
                    JR.declare "key" "I" (JR.int 0), 
                    JR.declare "gameKeyEvent" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70754 -> (JR.setLocal "index" "I" (JR.lit jwN70754))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "gameKeyEvent" "" ((JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")))), 
                        JR.exec (JR.setLocal "key" "I" (JR.invoke "getKey_0" (JR.local "gameKeyEvent") [])), 
                        JR.exec (JR.invoke "processEvent_2" (JR.aget (JR.thisField "inputProcessorArray") (JR.local "key")) [ (JR.local "allbinaryLayerManager"), GameKeyEvent.jstatic_NONE ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_processInput_1 : JR.Method
jm_processInput_1 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "processInputList_2" JR.this [ (JR.local "allbinaryLayerManager"), (JR.invoke "getGameKeyEventList_0" JR.this []) ]), 
                    JR.exec (JR.invoke "clear_0" (JR.invoke "getGameKeyEventList_0" JR.this []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "testInputPaintable") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_implmentsGameInputInterface_0 : JR.Method
jm_implmentsGameInputInterface_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


janon1_jm_processEvent_2 : JR.Method
janon1_jm_processEvent_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                            JR.exec (JR.invoke "up_0" (JR.local "testInputInterface") []) ])
        (jregister jheap)
        jthis
        jargs


janon2_jm_processEvent_2 : JR.Method
janon2_jm_processEvent_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                            JR.exec (JR.invoke "down_0" (JR.local "testInputInterface") []) ])
        (jregister jheap)
        jthis
        jargs


janon3_jm_processEvent_2 : JR.Method
janon3_jm_processEvent_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                            JR.exec (JR.invoke "left_0" (JR.local "testInputInterface") []) ])
        (jregister jheap)
        jthis
        jargs


janon4_jm_processEvent_2 : JR.Method
janon4_jm_processEvent_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                            JR.exec (JR.invoke "right_0" (JR.local "testInputInterface") []) ])
        (jregister jheap)
        jthis
        jargs


janon5_jm_processEvent_2 : JR.Method
janon5_jm_processEvent_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                            JR.exec (JR.invoke "strafeLeft_0" (JR.local "testInputInterface") []) ])
        (jregister jheap)
        jthis
        jargs


janon6_jm_processEvent_2 : JR.Method
janon6_jm_processEvent_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                            JR.exec (JR.invoke "strafeRight_0" (JR.local "testInputInterface") []) ])
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

