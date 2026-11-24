module Org.Allbinary.Input.Motion.AllMotionRecognizer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion
-}

import JR



jclass : String
jclass =
    "AllMotionRecognizer"


jchain : List String
jchain =
    [ "AllMotionRecognizer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "id", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processStartMotionEvent_4", jm_processStartMotionEvent_4 )
        , ( "processEndMotionEvent_4", jm_processEndMotionEvent_4 )
        , ( "processDraggedMotionEvent_4", jm_processDraggedMotionEvent_4 )
        , ( "processMovedMotionEvent_4", jm_processMovedMotionEvent_4 )
        , ( "processScrolledMotionEvent_4", jm_processScrolledMotionEvent_4 )
        , ( "getId_0", jm_getId_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllMotionRecognizer"
        [ ( "jm_processStartMotionEvent_4", jm_processStartMotionEvent_4 ), ( "jm_processEndMotionEvent_4", jm_processEndMotionEvent_4 ), ( "jm_processDraggedMotionEvent_4", jm_processDraggedMotionEvent_4 ), ( "jm_processMovedMotionEvent_4", jm_processMovedMotionEvent_4 ), ( "jm_processScrolledMotionEvent_4", jm_processScrolledMotionEvent_4 ), ( "jm_getId_0", jm_getId_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_index", jstatic_index ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_index : JR.M
jstatic_index s =
    JR.static "AllMotionRecognizer" jclinit "index"
        (JR.int 0)
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "id" "I" JR.this (JR.postUpdate jstatic_index (\jwN66073 -> (JR.setStatic "AllMotionRecognizer.index" "I" (JR.lit jwN66073))) JR.increment)) ]) ])
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


jm_processMovedMotionEvent_4 : JR.Method
jm_processMovedMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processScrolledMotionEvent_4 : JR.Method
jm_processScrolledMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getId_0 : JR.Method
jm_getId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "id") ])
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

