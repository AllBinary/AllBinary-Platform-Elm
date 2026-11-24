module Org.Allbinary.Game.Displayable.Canvas.CommandFormInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.BasicMenuInputProcessor as BasicMenuInputProcessor
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Game.Displayable.Canvas.CommandRunnable as CommandRunnable
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Input.Event.GameKeyEventFactory as GameKeyEventFactory
import Org.Allbinary.Game.Configuration.Feature.InputFeatureFactory as InputFeatureFactory
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Media.Audio.PrimaryPlayerQueueFactory as PrimaryPlayerQueueFactory
import Org.Allbinary.Thread.PrimaryThreadPool as PrimaryThreadPool
import Org.Allbinary.Game.Layer.SWTUtil as SWTUtil
import Org.Allbinary.Media.Audio.SelectSound as SelectSound
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory


jclass : String
jclass =
    "CommandFormInputProcessor"


jchain : List String
jchain =
    [ "CommandFormInputProcessor" ]
        ++ BasicMenuInputProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicMenuInputProcessor.jfields ++ [ ( "MOTION_GESTURE_SOURCE_ID", JR.defaultOf "I" ), ( "CLICK_DELAY", JR.defaultOf "I" ), ( "clickTimeHelper", JR.defaultOf "" ), ( "DOUBLE_CLICK_DELAY", JR.defaultOf "I" ), ( "doubleClickTimeHelper", JR.defaultOf "" ), ( "isSingleKeyProcessing", JR.defaultOf "Z" ), ( "form", JR.defaultOf "" ), ( "hasPressed", JR.defaultOf "Z" ), ( "PROCESS_COMMAND", JR.defaultOf "" ), ( "NAME_LABEL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processInput_1", jm_processInput_1 )
        , ( "processCommand_0", jm_processCommand_0 )
        , ( "processInputList_0", jm_processInputList_0 )
        , ( "processMotionInputs_0", jm_processMotionInputs_0 )
        , ( "processMotionInput_1", jm_processMotionInput_1 )
        , ( "toString_0", jm_toString_0 ) ]
        BasicMenuInputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommandFormInputProcessor"
        [ ( "jm_processInput_1", jm_processInput_1 ), ( "jm_processCommand_0", jm_processCommand_0 ), ( "jm_processInputList_0", jm_processInputList_0 ), ( "jm_processMotionInputs_0", jm_processMotionInputs_0 ), ( "jm_processMotionInput_1", jm_processMotionInput_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "gameKeyEventList", "" ), ( "playerInputId", "I" ), ( "gameCanvas", "" ), ( "form", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicMenuInputProcessor.jinit_3 JR.this [ (JR.local "gameKeyEventList"), (JR.local "playerInputId"), (JR.local "gameCanvas") ]),
                JR.exec (JR.setField "MOTION_GESTURE_SOURCE_ID" "I" JR.this (JR.field "MOTION_GESTURE_SOURCE_ID" (JR.callStatic GameKeyEventFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "CLICK_DELAY" "I" JR.this (JR.int 150)),
                JR.exec (JR.setField "clickTimeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.thisField "CLICK_DELAY") ])),
                JR.exec (JR.setField "DOUBLE_CLICK_DELAY" "I" JR.this (JR.int 1200)),
                JR.exec (JR.setField "doubleClickTimeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.thisField "DOUBLE_CLICK_DELAY") ])),
                JR.exec (JR.setField "isSingleKeyProcessing" "Z" JR.this (JR.invoke "isSingleKeyProcessing_0" (JR.callStatic InputFeatureFactory.jm_getInstance_0 []) [])),
                JR.exec (JR.setField "hasPressed" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "PROCESS_COMMAND" "" JR.this (JR.str "processCommand")),
                JR.exec (JR.setField "NAME_LABEL" "" JR.this (JR.str " ScrollSelectionForm: ")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "form" "" JR.this (JR.local "form")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_processInput_1 : JR.Method
jm_processInput_1 jheap jthis jargs =
    JR.method [ ( "key", "I" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.or (JR.or (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_LEFT) (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_RIGHT)) (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_UP)) (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_DOWN)) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.callStatic PrimaryPlayerQueueFactory.jm_getInstance_0 []) [ (JR.callStatic SelectSound.jm_getInstance_0 []) ]), 
                        JR.exec (JR.invoke "processInputKey_1" (JR.thisField "form") [ (JR.local "key") ]), 
                        JR.return (JR.int 1) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_FIRE) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.callStatic PrimaryPlayerQueueFactory.jm_getInstance_0 []) [ (JR.callStatic SelectSound.jm_getInstance_0 []) ]), 
                        JR.return (JR.invoke "processCommand_0" JR.this []) ]) identity ]), 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_processCommand_0 : JR.Method
jm_processCommand_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "commandCurrentSelectionForm" "" (JR.thisField "form"), 
                    JR.declare "command" "" (JR.invoke "getSelectedCommand_0" (JR.local "commandCurrentSelectionForm") []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "command") []), JR.this, (JR.thisField "PROCESS_COMMAND") ]), 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "openGLFeatureFactory" "" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.and (JR.and SWTUtil.jstatic_isSWT (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "OPENGL" (JR.local "openGLFeatureFactory")) ])) (JR.map2 JR.notEquals (JR.local "command") (JR.field "EXIT_COMMAND" (JR.callStatic GameCommandsFactory.jm_getInstance_0 [])))) (JR.run [ 
                        JR.exec (JR.invoke "run_0" (JR.new CommandRunnable.jnew_2 [ JR.this, (JR.local "command") ]) []) ]) (JR.run [ 
                        JR.exec (JR.invoke "runTask_1" (JR.callStatic PrimaryThreadPool.jm_getInstance_0 []) [ (JR.new CommandRunnable.jnew_2 [ JR.this, (JR.local "command") ]) ]) ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.field "QUIT_COMMAND" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []))) (JR.run [ 
                        JR.return (JR.map JR.neg (JR.int 1)) ]) (JR.run [ 
                        JR.return (JR.int 1) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processInputList_0 : JR.Method
jm_processInputList_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "motionInputsIndex" "I" (JR.invoke "processMotionInputs_0" JR.this []), 
                        JR.declare "list" "" (JR.invoke "getGameKeyEventList_0" JR.this []), 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                        JR.declare "key" "I" (JR.int 0), 
                        JR.declare "gameKeyEvent" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN73635 -> (JR.setLocal "index" "I" (JR.lit jwN73635))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "gameKeyEvent" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                            JR.exec (JR.setLocal "key" "I" (JR.invoke "getKey_0" (JR.local "gameKeyEvent") [])), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getSourceId_0" (JR.local "gameKeyEvent") []) (JR.thisField "MOTION_GESTURE_SOURCE_ID")) (JR.run [ 
                                JR.ifElse (JR.map2 JR.equals (JR.invoke "processInput_1" JR.this [ (JR.local "key") ]) (JR.int 1)) (JR.run [ 
                                    JR.break ]) identity ]) identity ]) ], 
                        JR.exec (JR.invoke "clear_0" JR.this []), 
                        JR.ifElse (JR.or (JR.map2 JR.greater (JR.local "size") (JR.int 0)) (JR.map2 JR.greaterEquals (JR.local "motionInputsIndex") (JR.int 0))) (JR.run [ 
                            JR.return (JR.int 1) ]) (JR.run [ 
                            JR.return (JR.map JR.neg (JR.int 1)) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "PROCESS_INPUT" (JR.thisField "gameInputStrings")), (JR.local "e") ]), 
                        JR.return (JR.map JR.neg (JR.int 1)) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_processMotionInputs_0 : JR.Method
jm_processMotionInputs_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "lastIndex" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.thisField "motionGestureEventList") []) (JR.int 1)), 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "lastIndex") (JR.int 0)) (JR.run [ 
                        JR.declare "motionGestureEvent" "" (JR.aget (JR.field "objectArray" (JR.thisField "motionGestureEventList")) (JR.local "lastIndex")), 
                        JR.exec (JR.invoke "processMotionInput_1" JR.this [ (JR.local "motionGestureEvent") ]) ]) identity, 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "motionGestureEventList") []), 
                    JR.return (JR.local "lastIndex") ])
        (jregister jheap)
        jthis
        jargs


jm_processMotionInput_1 : JR.Method
jm_processMotionInput_1 jheap jthis jargs =
    JR.method [ ( "motionGestureEvent", "" ) ] ""
        (JR.run [ 
                    JR.declare "touchMotionGestureFactory" "" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []), 
                    JR.declare "motionGestureInput" "" (JR.invoke "getMotionGesture_0" (JR.local "motionGestureEvent") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "motionGestureInput") (JR.field "RELEASED" (JR.local "touchMotionGestureFactory"))) (JR.run [ 
                        JR.declare "point" "" (JR.invoke "getCurrentPoint_0" (JR.local "motionGestureEvent") []), 
                        JR.ifElse (JR.invoke "isInForm_1" (JR.thisField "form") [ (JR.local "point") ]) (JR.run [ 
                            JR.declare "index" "I" (JR.invoke "getSelectedIndexForPoint_1" (JR.thisField "form") [ (JR.local "point") ]), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "index") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.callStatic PrimaryPlayerQueueFactory.jm_getInstance_0 []) [ (JR.callStatic SelectSound.jm_getInstance_0 []) ]), 
                                JR.ifElse (JR.map2 JR.equals (JR.local "index") (JR.invoke "getSelectedIndex_0" (JR.thisField "form") [])) (JR.run [ 
                                    JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "clickTimeHelper") []) (JR.run [ 
                                        JR.exec (JR.invoke "processCommand_0" JR.this []) ]) identity ]) (JR.run [ 
                                    JR.exec (JR.invoke "setSelectedIndex_1" (JR.thisField "form") [ (JR.local "index") ]) ]) ]) identity ]) identity, 
                        JR.ifElse (JR.thisField "hasPressed") (JR.run [ 
                            JR.ifElse (JR.map JR.not_ (JR.invoke "isTimeTNT_0" (JR.thisField "doubleClickTimeHelper") [])) (JR.run [ 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Double Press"), JR.this, (JR.field "PROCESS_MOTION_INPUT" (JR.thisField "gameInputStrings")) ]), 
                                JR.exec (JR.invoke "processCommand_0" JR.this []) ]) identity, 
                            JR.exec (JR.andThen (JR.thisField "doubleClickTimeHelper") (\jtN74918 -> (JR.setField "delay" "I" (JR.lit jtN74918) (JR.thisField "DOUBLE_CLICK_DELAY")))), 
                            JR.exec (JR.invoke "setStartTimeTNT_0" (JR.thisField "doubleClickTimeHelper") []) ]) identity, 
                        JR.exec (JR.setField "hasPressed" "Z" JR.this (JR.bool False)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "motionGestureInput") (JR.field "PRESSED" (JR.local "touchMotionGestureFactory"))) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "doubleClickTimeHelper") (\jtN74362 -> (JR.setField "delay" "I" (JR.lit jtN74362) (JR.int 0)))), 
                        JR.exec (JR.setField "hasPressed" "Z" JR.this (JR.bool True)) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.callVia BasicMenuInputProcessor.jvtable "toString_0" JR.this []) ]) [ (JR.thisField "NAME_LABEL") ]) [ (JR.invoke "toString_0" (JR.thisField "form") []) ]) []) ])
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

