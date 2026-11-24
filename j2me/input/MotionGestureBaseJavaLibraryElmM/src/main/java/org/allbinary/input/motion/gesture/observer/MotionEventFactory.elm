module Org.Allbinary.Input.Motion.Gesture.Observer.MotionEventFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture.observer
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObjectFactoryInterface as AllBinaryEventObjectFactoryInterface
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Input.Motion.Gesture.Observer.MotionGestureEvent as MotionGestureEvent
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory


jclass : String
jclass =
    "MotionEventFactory"


jchain : List String
jchain =
    [ "MotionEventFactory" ]
        ++ AllBinaryEventObjectFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "source", JR.defaultOf "" ), ( "id", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionEventFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_index", jstatic_index ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_index : JR.M
jstatic_index s =
    JR.static "MotionEventFactory" jclinit "index"
        (JR.int 0)
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "source", "" ), ( "id", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "source" "" JR.this (JR.local "source")), 
                    JR.exec (JR.setField "id" "I" JR.this (JR.local "id")), 
                    JR.exec (JR.setStatic "MotionEventFactory.index" "I" (JR.invoke "getId_0" (JR.field "LAST_MOTION" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 [])) [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "inputFactory" "" (JR.callStatic InputFactory.jm_getInstance_0 []), 
                    JR.declare "input" "" (JR.invoke "getInstanceById_1" (JR.local "inputFactory") [ (JR.postUpdate jstatic_index (\jwN67088 -> (JR.setStatic "MotionEventFactory.index" "I" (JR.lit jwN67088))) JR.increment) ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.field "NO_INPUT" (JR.local "inputFactory"))) (JR.run [ 
                        JR.return (JR.new MotionGestureEvent.jnew_3 [ (JR.thisField "source"), (JR.thisField "id"), (JR.field "NO_MOTION" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 [])) ]) ]) (JR.run [ 
                        JR.return (JR.new MotionGestureEvent.jnew_3 [ (JR.thisField "source"), (JR.thisField "id"), (JR.local "input") ]) ]) ])
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

