module Org.Allbinary.Input.Motion.OnlyTouchButtonRecognizer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion
-}

import JR
import Org.Allbinary.Input.Motion.MotionRecognizer as MotionRecognizer
import Org.Allbinary.Input.Motion.Button.TouchButtonRecognizer as TouchButtonRecognizer


jclass : String
jclass =
    "OnlyTouchButtonRecognizer"


jchain : List String
jchain =
    [ "OnlyTouchButtonRecognizer" ]
        ++ MotionRecognizer.jchain


jfields : List ( String, JR.JValue )
jfields =
    MotionRecognizer.jfields ++ [ ( "touchButtonRecognizer", JR.defaultOf "" ), ( "touchButtonProcessing", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "processStartMotionEvent_4", jm_processStartMotionEvent_4 )
        , ( "processEndMotionEvent_4", jm_processEndMotionEvent_4 )
        , ( "processDraggedMotionEvent_4", jm_processDraggedMotionEvent_4 ) ]
        MotionRecognizer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OnlyTouchButtonRecognizer"
        [ ( "jm_processStartMotionEvent_4", jm_processStartMotionEvent_4 ), ( "jm_processEndMotionEvent_4", jm_processEndMotionEvent_4 ), ( "jm_processDraggedMotionEvent_4", jm_processDraggedMotionEvent_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect MotionRecognizer.jinit_0 JR.this []),
                JR.exec (JR.setField "touchButtonProcessing" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "touchButtonRecognizer" "" JR.this (JR.new TouchButtonRecognizer.jnew_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_processStartMotionEvent_4 : JR.Method
jm_processStartMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "pressTouchButtonInput_3" (JR.thisField "touchButtonRecognizer") [ (JR.local "x"), (JR.local "y"), (JR.local "deviceId") ]) (JR.run [ 
                        JR.exec (JR.setField "touchButtonProcessing" "Z" JR.this (JR.bool True)) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_processEndMotionEvent_4 : JR.Method
jm_processEndMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.thisField "touchButtonProcessing") (JR.run [ 
                        JR.exec (JR.setField "touchButtonProcessing" "Z" JR.this (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.invoke "releaseTouchButtonInput_3" (JR.thisField "touchButtonRecognizer") [ (JR.local "x"), (JR.local "y"), (JR.local "deviceId") ]) (JR.run [ 
                        JR.returnVoid ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_processDraggedMotionEvent_4 : JR.Method
jm_processDraggedMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.thisField "touchButtonProcessing") (JR.run [ 
                        JR.exec (JR.invoke "pressTouchButtonInput_3" (JR.thisField "touchButtonRecognizer") [ (JR.local "x"), (JR.local "y"), (JR.local "deviceId") ]) ]) identity ])
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

