module Org.Allbinary.Input.Motion.GestureOnlyMotionRecognizer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion
-}

import JR
import Org.Allbinary.Graphics.GPointCircularPool as GPointCircularPool
import Org.Allbinary.Input.Motion.Gesture.MotionGestureRecognizer as MotionGestureRecognizer
import Org.Allbinary.Input.Motion.MotionRecognizer as MotionRecognizer


jclass : String
jclass =
    "GestureOnlyMotionRecognizer"


jchain : List String
jchain =
    [ "GestureOnlyMotionRecognizer" ]
        ++ MotionRecognizer.jchain


jfields : List ( String, JR.JValue )
jfields =
    MotionRecognizer.jfields ++ [ ( "motionGestureRecognizer", JR.defaultOf "" ), ( "id", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processStartMotionEvent_4", jm_processStartMotionEvent_4 )
        , ( "processEndMotionEvent_4", jm_processEndMotionEvent_4 )
        , ( "processDraggedMotionEvent_4", jm_processDraggedMotionEvent_4 ) ]
        MotionRecognizer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GestureOnlyMotionRecognizer"
        [ ( "jm_processStartMotionEvent_4", jm_processStartMotionEvent_4 ), ( "jm_processEndMotionEvent_4", jm_processEndMotionEvent_4 ), ( "jm_processDraggedMotionEvent_4", jm_processDraggedMotionEvent_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_index", jstatic_index ), ( "jstatic_pointCircularPool", jstatic_pointCircularPool ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_index : JR.M
jstatic_index s =
    JR.static "GestureOnlyMotionRecognizer" jclinit "index"
        (JR.int 0)
        s


jstatic_pointCircularPool : JR.M
jstatic_pointCircularPool s =
    JR.static "GestureOnlyMotionRecognizer" jclinit "pointCircularPool"
        (JR.new GPointCircularPool.jnew_1 [ (JR.int 40) ])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect MotionRecognizer.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "id" "I" JR.this (JR.postUpdate jstatic_index (\jwN66696 -> (JR.setStatic "GestureOnlyMotionRecognizer.index" "I" (JR.lit jwN66696))) JR.increment)), 
                    JR.exec (JR.setField "motionGestureRecognizer" "" JR.this (JR.new MotionGestureRecognizer.jnew_1 [ (JR.thisField "id") ])) ]) ])
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
                    JR.declare "point" "" (JR.invoke "getNextInstance_0" jstatic_pointCircularPool []), 
                    JR.exec (JR.invoke "setX_1" (JR.local "point") [ (JR.local "x") ]), 
                    JR.exec (JR.invoke "setY_1" (JR.local "point") [ (JR.local "y") ]), 
                    JR.exec (JR.invoke "processPressedMotionEvent_3" (JR.thisField "motionGestureRecognizer") [ (JR.local "point"), (JR.local "deviceId"), (JR.local "modifiers") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processEndMotionEvent_4 : JR.Method
jm_processEndMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        (JR.run [ 
                    JR.declare "point" "" (JR.invoke "getNextInstance_0" jstatic_pointCircularPool []), 
                    JR.exec (JR.invoke "setX_1" (JR.local "point") [ (JR.local "x") ]), 
                    JR.exec (JR.invoke "setY_1" (JR.local "point") [ (JR.local "y") ]), 
                    JR.exec (JR.invoke "processReleasedMotionEvent_3" (JR.thisField "motionGestureRecognizer") [ (JR.local "point"), (JR.local "deviceId"), (JR.local "modifiers") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processDraggedMotionEvent_4 : JR.Method
jm_processDraggedMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        (JR.run [ 
                    JR.declare "point" "" (JR.invoke "getNextInstance_0" jstatic_pointCircularPool []), 
                    JR.exec (JR.invoke "setX_1" (JR.local "point") [ (JR.local "x") ]), 
                    JR.exec (JR.invoke "setY_1" (JR.local "point") [ (JR.local "y") ]), 
                    JR.exec (JR.invoke "processDraggedMotionEvent_3" (JR.thisField "motionGestureRecognizer") [ (JR.local "point"), (JR.local "deviceId"), (JR.local "modifiers") ]) ])
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

