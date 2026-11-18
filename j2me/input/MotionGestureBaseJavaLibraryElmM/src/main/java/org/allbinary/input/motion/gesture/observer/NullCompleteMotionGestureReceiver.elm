module Org.Allbinary.Input.Motion.Gesture.Observer.NullCompleteMotionGestureReceiver exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture.observer
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Input.Motion.Gesture.Observer.CompleteMotionGestureListenerInterface as CompleteMotionGestureListenerInterface
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "NullCompleteMotionGestureReceiver"


jchain : List String
jchain =
    [ "NullCompleteMotionGestureReceiver" ]
        ++ CompleteMotionGestureListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onMotionGestureCompleted_1", jm_onMotionGestureCompleted_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullCompleteMotionGestureReceiver"
        [ ( "jm_onMotionGestureCompleted_1", jm_onMotionGestureCompleted_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Null Gesture Reciever"), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_onMotionGestureCompleted_1 : JR.Method
jm_onMotionGestureCompleted_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] ""
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

