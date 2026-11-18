module Org.Allbinary.Input.Motion.Gesture.Observer.MotionGestureReceiveInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture.observer
-}

import JR
import Org.Allbinary.Input.Motion.Gesture.Configuration.MotionGestureConfigurationFactory as MotionGestureConfigurationFactory
import Org.Allbinary.Input.Motion.Gesture.Observer.NullCompleteMotionGestureReceiver as NullCompleteMotionGestureReceiver
import Org.Allbinary.Input.Motion.Gesture.Observer.ResolveCompleteMotionGestureListener as ResolveCompleteMotionGestureListener


jclass : String
jclass =
    "MotionGestureReceiveInterfaceFactory"


jchain : List String
jchain =
    [ "MotionGestureReceiveInterfaceFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionGestureReceiveInterfaceFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "configuration" "" (JR.callStatic MotionGestureConfigurationFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isExecutingActionsAllowed_0" (JR.local "configuration") [])) (JR.run [ 
                        JR.return (JR.new NullCompleteMotionGestureReceiver.jnew_0 []) ]) (JR.run [ 
                        JR.return (JR.new ResolveCompleteMotionGestureListener.jnew_0 []) ]) ])
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

