module Org.Allbinary.Input.Motion.Button.TouchButtonsPaintableComposite exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.CompleteMotionGestureInputEventHandler as CompleteMotionGestureInputEventHandler
import Org.Allbinary.Game.Input.CompleteMotionGestureInputEventListenerInterface as CompleteMotionGestureInputEventListenerInterface
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Paint.ProcessPaintable as ProcessPaintable
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Input.Motion.Button.TouchButtonsMappingPaintable as TouchButtonsMappingPaintable
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory


jclass : String
jclass =
    "TouchButtonsPaintableComposite"


jchain : List String
jchain =
    [ "TouchButtonsPaintableComposite" ]
        ++ ProcessPaintable.jchain
        ++ CompleteMotionGestureInputEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    ProcessPaintable.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "inputMappingInterface", JR.defaultOf "" ), ( "touchButtonsPaintable", JR.defaultOf "" ), ( "timeHelper", JR.defaultOf "" ), ( "released", JR.defaultOf "Z" ), ( "METHOD_NAME", JR.defaultOf "" ), ( "RELEASE", JR.defaultOf "" ), ( "FAST_REPEAT", JR.defaultOf "" ), ( "IGNORE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onCompleteMotionGestureInputEvent_1", jm_onCompleteMotionGestureInputEvent_1 )
        , ( "process_0", jm_process_0 ) ]
        ProcessPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonsPaintableComposite"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onCompleteMotionGestureInputEvent_1", jm_onCompleteMotionGestureInputEvent_1 ), ( "jm_process_0", jm_process_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "inputMappingInterface", "" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ProcessPaintable.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "timeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 250) ])),
                JR.exec (JR.setField "released" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "METHOD_NAME" "" JR.this (JR.str "onCompleteMotionGestureInputEvent")),
                JR.exec (JR.setField "RELEASE" "" JR.this (JR.str "Ignoring: MotionGestureInput Release")),
                JR.exec (JR.setField "FAST_REPEAT" "" JR.this (JR.str "Ignoring: MotionGestureInput Repeated To Quickly")),
                JR.exec (JR.setField "IGNORE" "" JR.this (JR.str "Ignoring: Until Released")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "inputMappingInterface" "" JR.this (JR.local "inputMappingInterface")), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic CompleteMotionGestureInputEventHandler.jm_getInstance_0 []) [ JR.this ]), 
                    JR.exec (JR.setField "touchButtonsPaintable" "" JR.this (JR.new TouchButtonsMappingPaintable.jnew_1 [ (JR.local "basicColor") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onCompleteMotionGestureInputEvent_1 : JR.Method
jm_onCompleteMotionGestureInputEvent_1 jheap jthis jargs =
    JR.method [ ( "completeMotionGestureInputEvent", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "onCompleteMotionGestureInputEvent") ]), 
                        JR.declare "touchMotionGestureFactory" "" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []), 
                        JR.declare "gameKeyCompleteMotionGestureInputEvent" "" (JR.local "completeMotionGestureInputEvent"), 
                        JR.declare "gameKey" "" (JR.invoke "getGameKey_0" (JR.local "gameKeyCompleteMotionGestureInputEvent") []), 
                        JR.declare "motionGestureInput" "" (JR.invoke "getMotionGestureInput_0" (JR.local "completeMotionGestureInputEvent") []), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "motionGestureInput") (JR.field "RELEASED" (JR.local "touchMotionGestureFactory"))) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.thisField "RELEASE"), JR.this, (JR.thisField "METHOD_NAME") ]), 
                            JR.exec (JR.setField "released" "Z" JR.this (JR.bool True)), 
                            JR.returnVoid ]) identity, 
                        JR.ifElse (JR.and (JR.map2 JR.equals (JR.local "motionGestureInput") (JR.field "NO_MOTION" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []))) (JR.map JR.not_ (JR.invoke "isTimeTNT_0" (JR.thisField "timeHelper") []))) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.thisField "FAST_REPEAT"), JR.this, (JR.thisField "METHOD_NAME") ]), 
                            JR.returnVoid ]) identity, 
                        JR.ifElse (JR.map JR.not_ (JR.thisField "released")) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.thisField "IGNORE"), JR.this, (JR.thisField "METHOD_NAME") ]), 
                            JR.returnVoid ]) identity, 
                        JR.exec (JR.setField "released" "Z" JR.this (JR.bool False)), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "GameKey: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "gameKey") ]) ]) [ (JR.str " MotionGestureInput: ") ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "motionGestureInput") ]) ]) []), JR.this, (JR.thisField "METHOD_NAME") ]), 
                        JR.exec (JR.invoke "processInputMapping_2" (JR.thisField "inputMappingInterface") [ (JR.local "gameKey"), (JR.local "motionGestureInput") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.thisField "METHOD_NAME"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeListener_1" (JR.callStatic CompleteMotionGestureInputEventHandler.jm_getInstance_0 []) [ JR.this ]) ])
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

