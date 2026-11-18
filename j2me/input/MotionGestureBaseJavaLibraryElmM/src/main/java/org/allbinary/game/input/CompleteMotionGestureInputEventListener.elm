module Org.Allbinary.Game.Input.CompleteMotionGestureInputEventListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Input.CompleteMotionGestureInputEventListenerInterface as CompleteMotionGestureInputEventListenerInterface


jclass : String
jclass =
    "CompleteMotionGestureInputEventListener"


jchain : List String
jchain =
    [ "CompleteMotionGestureInputEventListener" ]
        ++ CompleteMotionGestureInputEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onCompleteMotionGestureInputEvent_1", jm_onCompleteMotionGestureInputEvent_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CompleteMotionGestureInputEventListener"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onCompleteMotionGestureInputEvent_1", jm_onCompleteMotionGestureInputEvent_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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
        identity
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

