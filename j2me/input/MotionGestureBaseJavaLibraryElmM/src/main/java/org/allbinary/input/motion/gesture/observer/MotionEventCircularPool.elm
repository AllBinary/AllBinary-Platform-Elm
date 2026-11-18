module Org.Allbinary.Input.Motion.Gesture.Observer.MotionEventCircularPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture.observer
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventCircularPool as AllBinaryEventCircularPool
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Input.Motion.Gesture.Observer.MotionEventFactory as MotionEventFactory
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory


jclass : String
jclass =
    "MotionEventCircularPool"


jchain : List String
jchain =
    [ "MotionEventCircularPool" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "MIN", JR.defaultOf "I" ), ( "eventPool", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createPool_1", jm_createPool_1 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionEventCircularPool"
        [ ( "jm_createPool_1", jm_createPool_1 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "id", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "MIN" "I" JR.this (JR.invoke "getId_0" (JR.field "LAST_MOTION" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 [])) [])),
                JR.exec (JR.setField "eventPool" "" JR.this (JR.new AllBinaryEventCircularPool.jnew_1 [ (JR.map2 JR.sub ((JR.map2 JR.sub (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])) (JR.int 1))) (JR.thisField "MIN")) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "initAllBinaryEventCircularPool_1" (JR.thisField "eventPool") [ (JR.new MotionEventFactory.jnew_2 [ (JR.thisField "eventPool"), (JR.local "id") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_createPool_1 : JR.Method
jm_createPool_1 jheap jthis jargs =
    JR.method [ ( "id", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.local "id") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "motionGestureInput", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getInstance_1" (JR.thisField "eventPool") [ (JR.map2 JR.sub (JR.invoke "getId_0" (JR.local "motionGestureInput") []) (JR.thisField "MIN")) ]) ])
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

