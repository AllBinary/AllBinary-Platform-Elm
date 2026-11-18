module Org.Allbinary.Game.Input.Mapping.MotionInputMappingEventListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.mapping
-}

import JR
import Org.Allbinary.Input.Motion.Button.BasicTouchInputFactory as BasicTouchInputFactory
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Input.Motion.Action.GameKeyCompleteMotionGestureInputEventFactory as GameKeyCompleteMotionGestureInputEventFactory
import Org.Allbinary.Game.Input.Mapping.Event.InputMappingEventListenerInterface as InputMappingEventListenerInterface


jclass : String
jclass =
    "MotionInputMappingEventListener"


jchain : List String
jchain =
    [ "MotionInputMappingEventListener" ]
        ++ InputMappingEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onInputMappingEvent_1", jm_onInputMappingEvent_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionInputMappingEventListener"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onInputMappingEvent_1", jm_onInputMappingEvent_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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


jm_onInputMappingEvent_1 : JR.Method
jm_onInputMappingEvent_1 jheap jthis jargs =
    JR.method [ ( "inputMappingEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateAll_0" (JR.callStatic GameKeyCompleteMotionGestureInputEventFactory.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "updateAll_1" (JR.callStatic BasicTouchInputFactory.jm_getInstance_0 []) [ (JR.invoke "getInputToGameKeyMapping_0" (JR.local "inputMappingEvent") []) ]) ])
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

