module Org.Allbinary.Input.Motion.Gesture.MotionGestureRecognizer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture
-}

import JR
import Org.Allbinary.Logic.Util.Event.Handler.BasicEventHandler as BasicEventHandler
import Org.Allbinary.Input.Motion.Gesture.Observer.BasicMotionGesturesHandler as BasicMotionGesturesHandler
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Math.J2SEMath as J2SEMath
import Org.Allbinary.Graphics.Line as Line
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Input.Motion.Gesture.Observer.MotionEventCircularPool as MotionEventCircularPool
import Org.Allbinary.Input.Motion.Gesture.Configuration.MotionGestureConfigurationFactory as MotionGestureConfigurationFactory
import Org.Allbinary.Input.Motion.Gesture.Observer.MovedMotionGesturesHandler as MovedMotionGesturesHandler
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Input.Motion.Gesture.Observer.ScrolledMotionGesturesHandler as ScrolledMotionGesturesHandler
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory


jclass : String
jclass =
    "MotionGestureRecognizer"


jchain : List String
jchain =
    [ "MotionGestureRecognizer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "j2seMath", JR.defaultOf "" ), ( "origin", JR.defaultOf "" ), ( "previous", JR.defaultOf "" ), ( "intermediate", JR.defaultOf "" ), ( "line", JR.defaultOf "" ), ( "motionGesturesHandler", JR.defaultOf "" ), ( "movedMotionGesturesHandler", JR.defaultOf "" ), ( "scrolledMotionGesturesHandler", JR.defaultOf "" ), ( "motionEventCircularPool", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processPressedMotionEvent_3", jm_processPressedMotionEvent_3 )
        , ( "processReleasedMotionEvent_3", jm_processReleasedMotionEvent_3 )
        , ( "processDraggedMotionEvent_3", jm_processDraggedMotionEvent_3 )
        , ( "processMovedMotionEvent_3", jm_processMovedMotionEvent_3 )
        , ( "processScrolledMotionEvent_3", jm_processScrolledMotionEvent_3 )
        , ( "getMotionGesturesHandler_0", jm_getMotionGesturesHandler_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionGestureRecognizer"
        [ ( "jm_processPressedMotionEvent_3", jm_processPressedMotionEvent_3 ), ( "jm_processReleasedMotionEvent_3", jm_processReleasedMotionEvent_3 ), ( "jm_processDraggedMotionEvent_3", jm_processDraggedMotionEvent_3 ), ( "jm_processMovedMotionEvent_3", jm_processMovedMotionEvent_3 ), ( "jm_processScrolledMotionEvent_3", jm_processScrolledMotionEvent_3 ), ( "jm_getMotionGesturesHandler_0", jm_getMotionGesturesHandler_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "id", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "j2seMath" "" JR.this (JR.callStatic J2SEMath.jm_getInstance_0 [])),
                JR.exec (JR.setField "origin" "" JR.this (JR.field "ZERO_ZERO" (JR.callStatic PointFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "previous" "" JR.this (JR.thisField "origin")),
                JR.exec (JR.setField "intermediate" "" JR.this (JR.thisField "origin")),
                JR.exec (JR.setField "line" "" JR.this (JR.new Line.jnew_2 [ (JR.thisField "origin"), (JR.thisField "origin") ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "motionEventCircularPool" "" JR.this (JR.callStatic MotionEventCircularPool.jm_createPool_1 [ (JR.local "id") ])), 
                    JR.declare "motionGesturesHandler" "" (JR.new BasicEventHandler.jnew_0 []), 
                    JR.declare "movedMotionGesturesHandler" "" (JR.local "motionGesturesHandler"), 
                    JR.declare "scrolledMotionGesturesHandler" "" (JR.local "motionGesturesHandler"), 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "motionGesturesHandler" "" (JR.callStatic BasicMotionGesturesHandler.jm_getInstance_0 [])), 
                        JR.exec (JR.setLocal "movedMotionGesturesHandler" "" (JR.callStatic MovedMotionGesturesHandler.jm_getInstance_0 [])), 
                        JR.exec (JR.setLocal "scrolledMotionGesturesHandler" "" (JR.callStatic ScrolledMotionGesturesHandler.jm_getInstance_0 [])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.exec (JR.setField "motionGesturesHandler" "" JR.this (JR.local "motionGesturesHandler")), 
                    JR.exec (JR.setField "movedMotionGesturesHandler" "" JR.this (JR.local "movedMotionGesturesHandler")), 
                    JR.exec (JR.setField "scrolledMotionGesturesHandler" "" JR.this (JR.local "scrolledMotionGesturesHandler")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_processPressedMotionEvent_3 : JR.Method
jm_processPressedMotionEvent_3 jheap jthis jargs =
    JR.method [ ( "current", "" ), ( "deviceId", "I" ), ( "button", "I" ) ] "Z"
        (JR.run [ 
                    JR.exec (JR.setField "intermediate" "" JR.this (JR.thisField "origin")), 
                    JR.exec (JR.setField "previous" "" JR.this (JR.thisField "origin")), 
                    JR.declare "event" "" (JR.invoke "getInstance_1" (JR.thisField "motionEventCircularPool") [ (JR.field "PRESSED" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "setPreviousPoint_1" (JR.local "event") [ (JR.thisField "previous") ]), 
                    JR.exec (JR.invoke "setCurrentPoint_1" (JR.local "event") [ (JR.local "current") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.thisField "motionGesturesHandler") [ (JR.local "event") ]), 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_processReleasedMotionEvent_3 : JR.Method
jm_processReleasedMotionEvent_3 jheap jthis jargs =
    JR.method [ ( "current", "" ), ( "deviceId", "I" ), ( "button", "I" ) ] "Z"
        (JR.run [ 
                    JR.declare "event" "" (JR.invoke "getInstance_1" (JR.thisField "motionEventCircularPool") [ (JR.field "RELEASED" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "setPreviousPoint_1" (JR.local "event") [ (JR.thisField "previous") ]), 
                    JR.exec (JR.invoke "setCurrentPoint_1" (JR.local "event") [ (JR.local "current") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.thisField "motionGesturesHandler") [ (JR.local "event") ]), 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_processDraggedMotionEvent_3 : JR.Method
jm_processDraggedMotionEvent_3 jheap jthis jargs =
    JR.method [ ( "current", "" ), ( "deviceId", "I" ), ( "buttonMask", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.thisField "previous") (JR.thisField "origin")) (JR.map2 JR.equals (JR.thisField "intermediate") (JR.thisField "origin"))) (JR.run [ 
                        JR.exec (JR.setField "previous" "" JR.this (JR.local "current")), 
                        JR.exec (JR.setField "intermediate" "" JR.this (JR.local "current")), 
                        JR.returnVoid ]) identity, 
                    JR.exec (JR.invoke "setP1_1" (JR.thisField "line") [ (JR.thisField "previous") ]), 
                    JR.exec (JR.invoke "setP2_1" (JR.thisField "line") [ (JR.local "current") ]), 
                    JR.declare "minimumMotionGesture" "I" (JR.invoke "getMinimumMotionGesture_0" (JR.callStatic MotionGestureConfigurationFactory.jm_getInstance_0 []) []), 
                    JR.ifElse (JR.and (JR.map2 JR.less (JR.invoke "abs_1" (JR.thisField "j2seMath") [ (JR.cast "F" (JR.invoke "getDeltaX_0" (JR.thisField "line") [])) ]) (JR.cast "F" (JR.local "minimumMotionGesture"))) (JR.map2 JR.less (JR.invoke "abs_1" (JR.thisField "j2seMath") [ (JR.cast "F" (JR.invoke "getDeltaY_0" (JR.thisField "line") [])) ]) (JR.cast "F" (JR.local "minimumMotionGesture")))) (JR.run [ 
                        JR.exec (JR.setField "intermediate" "" JR.this (JR.local "current")), 
                        JR.returnVoid ]) identity, 
                    JR.declare "gradient" "D" (JR.invoke "getGradient_0" (JR.thisField "line") []), 
                    JR.declare "absGradient" "D" (JR.cast "D" (JR.invoke "abs_1" (JR.thisField "j2seMath") [ (JR.cast "F" (JR.local "gradient")) ])), 
                    JR.declare "conf" "" (JR.callStatic MotionGestureConfigurationFactory.jm_getInstance_0 []), 
                    JR.declare "touchMotionGestureFactory" "" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []), 
                    JR.declare "newMotionGesture" "" (JR.field "NO_MOTION" (JR.local "touchMotionGestureFactory")), 
                    JR.declare "diagonalToleranceHigher" "D" (JR.float 12.0), 
                    JR.declare "diagonalToleranceLower" "D" (JR.float 12.0), 
                    JR.ifElse (JR.invoke "isDiagonalMotionGestureAllowed_0" (JR.local "conf") []) (JR.run [ 
                        JR.exec (JR.setLocal "diagonalToleranceHigher" "D" (JR.cast "D" ((JR.map2 JR.sub (JR.int 90) (JR.invoke "getDiagonalTolerance_0" (JR.local "conf") []))))), 
                        JR.exec (JR.setLocal "diagonalToleranceLower" "D" (JR.cast "D" (JR.invoke "getDiagonalTolerance_0" (JR.local "conf") []))) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.local "absGradient") (JR.math "tan" [ (JR.math "toRadians" [ (JR.local "diagonalToleranceHigher") ]) ])) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "getDeltaY_0" (JR.thisField "line") []) (JR.float 0.0)) (JR.run [ 
                            JR.exec (JR.setLocal "newMotionGesture" "" (JR.field "UP" (JR.local "touchMotionGestureFactory"))) ]) (JR.run [ 
                            JR.exec (JR.setLocal "newMotionGesture" "" (JR.field "DOWN" (JR.local "touchMotionGestureFactory"))) ]) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.local "absGradient") (JR.math "tan" [ (JR.math "toRadians" [ (JR.local "diagonalToleranceLower") ]) ])) (JR.run [ 
                            JR.ifElse (JR.map2 JR.greater (JR.invoke "getDeltaX_0" (JR.thisField "line") []) (JR.float 0.0)) (JR.run [ 
                                JR.exec (JR.setLocal "newMotionGesture" "" (JR.field "LEFT" (JR.local "touchMotionGestureFactory"))) ]) (JR.run [ 
                                JR.exec (JR.setLocal "newMotionGesture" "" (JR.field "RIGHT" (JR.local "touchMotionGestureFactory"))) ]) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.greater (JR.local "gradient") (JR.float 0.0)) (JR.run [ 
                                JR.ifElse (JR.map2 JR.greater (JR.invoke "getDeltaX_0" (JR.thisField "line") []) (JR.float 0.0)) (JR.run [ 
                                    JR.exec (JR.setLocal "newMotionGesture" "" (JR.field "DIAGONAL_UP_LEFT" (JR.local "touchMotionGestureFactory"))) ]) (JR.run [ 
                                    JR.exec (JR.setLocal "newMotionGesture" "" (JR.field "DIAGONAL_DOWN_RIGHT" (JR.local "touchMotionGestureFactory"))) ]) ]) (JR.run [ 
                                JR.ifElse (JR.map2 JR.greater (JR.invoke "getDeltaX_0" (JR.thisField "line") []) (JR.float 0.0)) (JR.run [ 
                                    JR.exec (JR.setLocal "newMotionGesture" "" (JR.field "DIAGONAL_DOWN_LEFT" (JR.local "touchMotionGestureFactory"))) ]) (JR.run [ 
                                    JR.exec (JR.setLocal "newMotionGesture" "" (JR.field "DIAGONAL_UP_RIGHT" (JR.local "touchMotionGestureFactory"))) ]) ]) ]) ]), 
                    JR.exec (JR.setField "previous" "" JR.this (JR.local "current")), 
                    JR.exec (JR.setField "intermediate" "" JR.this (JR.local "current")), 
                    JR.declare "event" "" (JR.invoke "getInstance_1" (JR.thisField "motionEventCircularPool") [ (JR.local "newMotionGesture") ]), 
                    JR.exec (JR.invoke "setPreviousPoint_1" (JR.local "event") [ (JR.thisField "previous") ]), 
                    JR.exec (JR.invoke "setCurrentPoint_1" (JR.local "event") [ (JR.local "current") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.thisField "motionGesturesHandler") [ (JR.local "event") ]), 
                    JR.returnVoid ])
        (jregister jheap)
        jthis
        jargs


jm_processMovedMotionEvent_3 : JR.Method
jm_processMovedMotionEvent_3 jheap jthis jargs =
    JR.method [ ( "current", "" ), ( "deviceId", "I" ), ( "button", "I" ) ] "Z"
        (JR.run [ 
                    JR.declare "event" "" (JR.invoke "getInstance_1" (JR.thisField "motionEventCircularPool") [ (JR.field "NO_MOTION" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "setPreviousPoint_1" (JR.local "event") [ (JR.thisField "previous") ]), 
                    JR.exec (JR.invoke "setCurrentPoint_1" (JR.local "event") [ (JR.local "current") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.thisField "movedMotionGesturesHandler") [ (JR.local "event") ]), 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_processScrolledMotionEvent_3 : JR.Method
jm_processScrolledMotionEvent_3 jheap jthis jargs =
    JR.method [ ( "current", "" ), ( "deviceId", "I" ), ( "button", "I" ) ] "Z"
        (JR.run [ 
                    JR.declare "touchMotionGestureFactory" "" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []), 
                    JR.declare "newMotionGesture" "" (JR.field "NO_MOTION" (JR.local "touchMotionGestureFactory")), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "button") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "newMotionGesture" "" (JR.field "SCROLL_UP" (JR.local "touchMotionGestureFactory"))) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.local "button") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "newMotionGesture" "" (JR.field "SCROLL_DOWN" (JR.local "touchMotionGestureFactory"))) ]) identity ]), 
                    JR.declare "event" "" (JR.invoke "getInstance_1" (JR.thisField "motionEventCircularPool") [ (JR.local "newMotionGesture") ]), 
                    JR.exec (JR.invoke "setPreviousPoint_1" (JR.local "event") [ (JR.thisField "previous") ]), 
                    JR.exec (JR.invoke "setCurrentPoint_1" (JR.local "event") [ (JR.local "current") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.thisField "scrolledMotionGesturesHandler") [ (JR.local "event") ]), 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_getMotionGesturesHandler_0 : JR.Method
jm_getMotionGesturesHandler_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "motionGesturesHandler") ])
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

