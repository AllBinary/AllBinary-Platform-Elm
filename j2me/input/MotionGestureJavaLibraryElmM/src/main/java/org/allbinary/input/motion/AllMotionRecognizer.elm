module Org.Allbinary.Input.Motion.AllMotionRecognizer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion
-}

import JR
import Org.Allbinary.Graphics.GPointCircularPool as GPointCircularPool
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Input.Motion.Gesture.MotionGestureRecognizer as MotionGestureRecognizer
import Org.Allbinary.Input.Motion.MotionRecognizer as MotionRecognizer
import Org.Allbinary.Input.Motion.Button.TouchButtonRecognizer as TouchButtonRecognizer


jclass : String
jclass =
    "AllMotionRecognizer"


jchain : List String
jchain =
    [ "AllMotionRecognizer" ]
        ++ MotionRecognizer.jchain


jfields : List ( String, JR.JValue )
jfields =
    MotionRecognizer.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "motionGestureRecognizer", JR.defaultOf "" ), ( "touchButtonProcessing", JR.defaultOf "Z" ), ( "touchButtonRecognizer", JR.defaultOf "" ), ( "id", JR.defaultOf "I" ), ( "lastX", JR.defaultOf "I" ), ( "lastY", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processStartMotionEvent_4", jm_processStartMotionEvent_4 )
        , ( "processEndMotionEvent_4", jm_processEndMotionEvent_4 )
        , ( "processDraggedMotionEvent_4", jm_processDraggedMotionEvent_4 )
        , ( "processMovedMotionEvent_4", jm_processMovedMotionEvent_4 )
        , ( "processScrolledMotionEvent_4", jm_processScrolledMotionEvent_4 )
        , ( "getMotionGestureRecognizer_0", jm_getMotionGestureRecognizer_0 ) ]
        MotionRecognizer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllMotionRecognizer"
        [ ( "jm_processStartMotionEvent_4", jm_processStartMotionEvent_4 ), ( "jm_processEndMotionEvent_4", jm_processEndMotionEvent_4 ), ( "jm_processDraggedMotionEvent_4", jm_processDraggedMotionEvent_4 ), ( "jm_processMovedMotionEvent_4", jm_processMovedMotionEvent_4 ), ( "jm_processScrolledMotionEvent_4", jm_processScrolledMotionEvent_4 ), ( "jm_getMotionGestureRecognizer_0", jm_getMotionGestureRecognizer_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_index", jstatic_index ), ( "jstatic_pointCircularPool", jstatic_pointCircularPool ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_index : JR.M
jstatic_index s =
    JR.static "AllMotionRecognizer" jclinit "index"
        (JR.int 0)
        s


jstatic_pointCircularPool : JR.M
jstatic_pointCircularPool s =
    JR.static "AllMotionRecognizer" jclinit "pointCircularPool"
        (JR.new GPointCircularPool.jnew_1 [ (JR.int 40) ])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect MotionRecognizer.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "touchButtonProcessing" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "id" "I" JR.this (JR.postUpdate jstatic_index (\jwN67612 -> (JR.setStatic "AllMotionRecognizer.index" "I" (JR.lit jwN67612))) JR.increment)), 
                    JR.exec (JR.setField "motionGestureRecognizer" "" JR.this (JR.new MotionGestureRecognizer.jnew_1 [ (JR.thisField "id") ])), 
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
                        JR.exec (JR.setField "touchButtonProcessing" "Z" JR.this (JR.bool True)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.thisField "touchButtonProcessing")) (JR.run [ 
                        JR.declare "point" "" (JR.invoke "getNextInstance_0" jstatic_pointCircularPool []), 
                        JR.exec (JR.invoke "setX_1" (JR.local "point") [ (JR.local "x") ]), 
                        JR.exec (JR.invoke "setY_1" (JR.local "point") [ (JR.local "y") ]), 
                        JR.exec (JR.invoke "processPressedMotionEvent_3" (JR.thisField "motionGestureRecognizer") [ (JR.local "point"), (JR.local "deviceId"), (JR.local "modifiers") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_processEndMotionEvent_4 : JR.Method
jm_processEndMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "releaseTouchButtonInput_3" (JR.thisField "touchButtonRecognizer") [ (JR.local "x"), (JR.local "y"), (JR.local "deviceId") ]) identity identity, 
                    JR.ifElse (JR.map JR.not_ (JR.thisField "touchButtonProcessing")) (JR.run [ 
                        JR.declare "point" "" (JR.invoke "getNextInstance_0" jstatic_pointCircularPool []), 
                        JR.exec (JR.invoke "setX_1" (JR.local "point") [ (JR.local "x") ]), 
                        JR.exec (JR.invoke "setY_1" (JR.local "point") [ (JR.local "y") ]), 
                        JR.exec (JR.invoke "processReleasedMotionEvent_3" (JR.thisField "motionGestureRecognizer") [ (JR.local "point"), (JR.local "deviceId"), (JR.local "modifiers") ]) ]) identity, 
                    JR.ifElse (JR.thisField "touchButtonProcessing") (JR.run [ 
                        JR.exec (JR.setField "touchButtonProcessing" "Z" JR.this (JR.bool False)) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_processDraggedMotionEvent_4 : JR.Method
jm_processDraggedMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.thisField "touchButtonProcessing") (JR.run [ 
                        JR.exec (JR.invoke "pressTouchButtonInput_3" (JR.thisField "touchButtonRecognizer") [ (JR.local "x"), (JR.local "y"), (JR.local "deviceId") ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.thisField "touchButtonProcessing")) (JR.run [ 
                        JR.declare "point" "" (JR.invoke "getNextInstance_0" jstatic_pointCircularPool []), 
                        JR.exec (JR.invoke "setX_1" (JR.local "point") [ (JR.local "x") ]), 
                        JR.exec (JR.invoke "setY_1" (JR.local "point") [ (JR.local "y") ]), 
                        JR.exec (JR.invoke "processDraggedMotionEvent_3" (JR.thisField "motionGestureRecognizer") [ (JR.local "point"), (JR.local "deviceId"), (JR.local "modifiers") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_processMovedMotionEvent_4 : JR.Method
jm_processMovedMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.local "x") (JR.thisField "lastX")) (JR.map2 JR.notEquals (JR.local "y") (JR.thisField "lastY"))) (JR.run [ 
                        JR.exec (JR.setField "lastX" "I" JR.this (JR.local "x")), 
                        JR.exec (JR.setField "lastY" "I" JR.this (JR.local "y")), 
                        JR.declare "point" "" (JR.invoke "getNextInstance_0" jstatic_pointCircularPool []), 
                        JR.exec (JR.invoke "setX_1" (JR.local "point") [ (JR.local "x") ]), 
                        JR.exec (JR.invoke "setY_1" (JR.local "point") [ (JR.local "y") ]), 
                        JR.exec (JR.invoke "processMovedMotionEvent_3" (JR.thisField "motionGestureRecognizer") [ (JR.local "point"), (JR.local "deviceId"), (JR.local "modifiers") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_processScrolledMotionEvent_4 : JR.Method
jm_processScrolledMotionEvent_4 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ), ( "modifiers", "I" ) ] ""
        (JR.run [ 
                    JR.declare "point" "" (JR.invoke "getNextInstance_0" jstatic_pointCircularPool []), 
                    JR.exec (JR.invoke "setX_1" (JR.local "point") [ (JR.local "x") ]), 
                    JR.exec (JR.invoke "setY_1" (JR.local "point") [ (JR.local "y") ]), 
                    JR.exec (JR.invoke "processScrolledMotionEvent_3" (JR.thisField "motionGestureRecognizer") [ (JR.local "point"), (JR.local "deviceId"), (JR.local "modifiers") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getMotionGestureRecognizer_0 : JR.Method
jm_getMotionGestureRecognizer_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "motionGestureRecognizer") ])
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

