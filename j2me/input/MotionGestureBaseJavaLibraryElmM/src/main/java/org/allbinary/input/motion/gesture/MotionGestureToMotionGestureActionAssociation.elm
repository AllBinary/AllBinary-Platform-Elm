module Org.Allbinary.Input.Motion.Gesture.MotionGestureToMotionGestureActionAssociation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture
-}

import JR



jclass : String
jclass =
    "MotionGestureToMotionGestureActionAssociation"


jchain : List String
jchain =
    [ "MotionGestureToMotionGestureActionAssociation" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ), ( "motionGestureAction", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getMotionGesture_0", jm_getMotionGesture_0 )
        , ( "setMotionGestures_1", jm_setMotionGestures_1 )
        , ( "getCommandAction_0", jm_getCommandAction_0 )
        , ( "setMotionGestureAction_1", jm_setMotionGestureAction_1 )
        , ( "isMotionGestureArrayEquals_1", jm_isMotionGestureArrayEquals_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionGestureToMotionGestureActionAssociation"
        [ ( "jm_getMotionGesture_0", jm_getMotionGesture_0 ), ( "jm_setMotionGestures_1", jm_setMotionGestures_1 ), ( "jm_getCommandAction_0", jm_getCommandAction_0 ), ( "jm_setMotionGestureAction_1", jm_setMotionGestureAction_1 ), ( "jm_isMotionGestureArrayEquals_1", jm_isMotionGestureArrayEquals_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "list", "" ), ( "commandAction", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "list" "" JR.this (JR.local "list")), 
                    JR.exec (JR.setField "motionGestureAction" "" JR.this (JR.local "commandAction")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getMotionGesture_0 : JR.Method
jm_getMotionGesture_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "list") ])
        (jregister jheap)
        jthis
        jargs


jm_setMotionGestures_1 : JR.Method
jm_setMotionGestures_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "list" "" JR.this (JR.local "list")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCommandAction_0 : JR.Method
jm_getCommandAction_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "motionGestureAction") ])
        (jregister jheap)
        jthis
        jargs


jm_setMotionGestureAction_1 : JR.Method
jm_setMotionGestureAction_1 jheap jthis jargs =
    JR.method [ ( "commandAction", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "motionGestureAction" "" JR.this (JR.local "commandAction")) ])
        (jregister jheap)
        jthis
        jargs


jm_isMotionGestureArrayEquals_1 : JR.Method
jm_isMotionGestureArrayEquals_1 jheap jthis jargs =
    JR.method [ ( "aList", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "aList") []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "size_0" (JR.thisField "list") []) (JR.local "size")) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.run [ JR.declare "i" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "i") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN66877 -> (JR.setLocal "i" "I" (JR.lit jwN66877))) JR.decrement) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.field "objectArray" (JR.local "aList")) (JR.local "i")) (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "i"))) (JR.run [ 
                            JR.return (JR.bool False) ]) identity ]) ], 
                    JR.return (JR.bool True) ])
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

