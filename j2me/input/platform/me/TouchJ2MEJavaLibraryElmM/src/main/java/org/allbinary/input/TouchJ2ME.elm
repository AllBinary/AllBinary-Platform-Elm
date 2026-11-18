module Org.Allbinary.Input.TouchJ2ME exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input
-}

import JR
import Org.Allbinary.Input.Motion.AllMotionRecognizer as AllMotionRecognizer
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Input.Motion.Gesture.Observer.GameMotionGestureListener as GameMotionGestureListener
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Input.Motion.Gesture.Observer.MotionGestureReceiveInterfaceFactory as MotionGestureReceiveInterfaceFactory


jclass : String
jclass =
    "TouchJ2ME"


jchain : List String
jchain =
    [ "TouchJ2ME" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "DEVICE_ID", JR.defaultOf "I" ), ( "motionRecognizer", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "pointerDragged_2", jm_pointerDragged_2 )
        , ( "pointerPressed_2", jm_pointerPressed_2 )
        , ( "pointerReleased_2", jm_pointerReleased_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchJ2ME"
        [ ( "jm_pointerDragged_2", jm_pointerDragged_2 ), ( "jm_pointerPressed_2", jm_pointerPressed_2 ), ( "jm_pointerReleased_2", jm_pointerReleased_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "DEVICE_ID" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "motionRecognizer" "" JR.this (JR.new AllMotionRecognizer.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "motionGesturesHandler" "" (JR.invoke "getMotionGesturesHandler_0" (JR.invoke "getMotionGestureRecognizer_0" (JR.thisField "motionRecognizer") []) []), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.local "motionGesturesHandler") [ (JR.new GameMotionGestureListener.jnew_1 [ (JR.callStatic MotionGestureReceiveInterfaceFactory.jm_getInstance_0 []) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_pointerDragged_2 : JR.Method
jm_pointerDragged_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "processDraggedMotionEvent_4" (JR.thisField "motionRecognizer") [ (JR.local "x"), (JR.local "y"), (JR.thisField "DEVICE_ID"), (JR.int 0) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "pointerDragged"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_pointerPressed_2 : JR.Method
jm_pointerPressed_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "processStartMotionEvent_4" (JR.thisField "motionRecognizer") [ (JR.local "x"), (JR.local "y"), (JR.thisField "DEVICE_ID"), (JR.int 0) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "pointerPressed"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_pointerReleased_2 : JR.Method
jm_pointerReleased_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "processEndMotionEvent_4" (JR.thisField "motionRecognizer") [ (JR.local "x"), (JR.local "y"), (JR.thisField "DEVICE_ID"), (JR.int 0) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "pointerReleased"), (JR.local "e") ]) ]) ) ] identity ])
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

