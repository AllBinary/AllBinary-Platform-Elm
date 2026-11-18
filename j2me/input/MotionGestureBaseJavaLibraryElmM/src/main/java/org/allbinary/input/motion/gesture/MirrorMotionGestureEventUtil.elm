module Org.Allbinary.Input.Motion.Gesture.MirrorMotionGestureEventUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture
-}

import JR
import JInteger
import Org.Allbinary.Input.Motion.Gesture.Observer.MotionEventCircularPool as MotionEventCircularPool
import Org.Allbinary.Graphics.PointFactory as PointFactory


jclass : String
jclass =
    "MirrorMotionGestureEventUtil"


jchain : List String
jchain =
    [ "MirrorMotionGestureEventUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "motionEventCircularPool", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "mirrorVerticle_2", jm_mirrorVerticle_2 )
        , ( "getNewX_2", jm_getNewX_2 )
        , ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MirrorMotionGestureEventUtil"
        [ ( "jm_mirrorVerticle_2", jm_mirrorVerticle_2 ), ( "jm_getNewX_2", jm_getNewX_2 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MirrorMotionGestureEventUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "motionEventCircularPool" "" JR.this (JR.callStatic MotionEventCircularPool.jm_createPool_1 [ JInteger.jstatic_MAX_VALUE ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_mirrorVerticle_2 : JR.Method
jm_mirrorVerticle_2 jheap jthis jargs =
    JR.method [ ( "motionGestureEvent", "" ), ( "halfWidth", "I" ) ] ""
        (JR.run [ 
                    JR.declare "event" "" (JR.invoke "getInstance_1" (JR.thisField "motionEventCircularPool") [ (JR.invoke "getMotionGesture_0" (JR.local "motionGestureEvent") []) ]), 
                    JR.declare "previousNewX" "I" (JR.invoke "getNewX_2" JR.this [ (JR.invoke "getX_0" (JR.invoke "getPreviousPoint_0" (JR.local "motionGestureEvent") []) []), (JR.local "halfWidth") ]), 
                    JR.declare "currentNewX" "I" (JR.invoke "getNewX_2" JR.this [ (JR.invoke "getX_0" (JR.invoke "getCurrentPoint_0" (JR.local "motionGestureEvent") []) []), (JR.local "halfWidth") ]), 
                    JR.declare "pointFactory" "" (JR.callStatic PointFactory.jm_getInstance_0 []), 
                    JR.declare "mirroredPreviousPoint" "" (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.local "previousNewX"), (JR.invoke "getY_0" (JR.invoke "getPreviousPoint_0" (JR.local "motionGestureEvent") []) []) ]), 
                    JR.declare "mirroredCurrentPoint" "" (JR.invoke "createXY_2" (JR.local "pointFactory") [ (JR.local "currentNewX"), (JR.invoke "getY_0" (JR.invoke "getCurrentPoint_0" (JR.local "motionGestureEvent") []) []) ]), 
                    JR.exec (JR.invoke "setPreviousPoint_1" (JR.local "event") [ (JR.local "mirroredPreviousPoint") ]), 
                    JR.exec (JR.invoke "setCurrentPoint_1" (JR.local "event") [ (JR.local "mirroredCurrentPoint") ]), 
                    JR.return (JR.local "event") ])
        (jregister jheap)
        jthis
        jargs


jm_getNewX_2 : JR.Method
jm_getNewX_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "halfWidth", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "newX" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "x") (JR.local "halfWidth")) (JR.run [ 
                        JR.exec (JR.setLocal "newX" "I" (JR.map2 JR.sub (JR.local "halfWidth") ((JR.map2 JR.sub (JR.local "x") (JR.local "halfWidth"))))) ]) (JR.run [ 
                        JR.exec (JR.setLocal "newX" "I" (JR.map2 JR.add (JR.local "halfWidth") ((JR.map2 JR.sub (JR.local "halfWidth") (JR.local "x"))))) ]), 
                    JR.return (JR.local "newX") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
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

