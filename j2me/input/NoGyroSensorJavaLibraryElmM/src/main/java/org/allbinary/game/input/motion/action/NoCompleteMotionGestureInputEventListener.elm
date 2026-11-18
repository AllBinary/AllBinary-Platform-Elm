module Org.Allbinary.Game.Input.Motion.Action.NoCompleteMotionGestureInputEventListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.motion.action
-}

import JR
import Org.Allbinary.Game.Input.CompleteMotionGestureInputEventListenerInterface as CompleteMotionGestureInputEventListenerInterface
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil


jclass : String
jclass =
    "NoCompleteMotionGestureInputEventListener"


jchain : List String
jchain =
    [ "NoCompleteMotionGestureInputEventListener" ]
        ++ CompleteMotionGestureInputEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onCompleteMotionGestureInputEvent_1", jm_onCompleteMotionGestureInputEvent_1 )
        , ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoCompleteMotionGestureInputEventListener"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onCompleteMotionGestureInputEvent_1", jm_onCompleteMotionGestureInputEvent_1 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NoCompleteMotionGestureInputEventListener" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


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
        identity
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
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

