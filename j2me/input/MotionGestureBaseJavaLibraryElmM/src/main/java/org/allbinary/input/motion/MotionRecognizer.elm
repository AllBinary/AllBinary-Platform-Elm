module Org.Allbinary.Input.Motion.MotionRecognizer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion
-}

import JR



jclass : String
jclass =
    "MotionRecognizer"


jchain : List String
jchain =
    [ "MotionRecognizer" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "processStartMotionEvent_4", jm_processStartMotionEvent_4 )
        , ( "processEndMotionEvent_4", jm_processEndMotionEvent_4 )
        , ( "processDraggedMotionEvent_4", jm_processDraggedMotionEvent_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionRecognizer"
        [ ( "jm_processStartMotionEvent_4", jm_processStartMotionEvent_4 ), ( "jm_processEndMotionEvent_4", jm_processEndMotionEvent_4 ), ( "jm_processDraggedMotionEvent_4", jm_processDraggedMotionEvent_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_processStartMotionEvent_4 : JR.Method
jm_processStartMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processEndMotionEvent_4 : JR.Method
jm_processEndMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processDraggedMotionEvent_4 : JR.Method
jm_processDraggedMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
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

