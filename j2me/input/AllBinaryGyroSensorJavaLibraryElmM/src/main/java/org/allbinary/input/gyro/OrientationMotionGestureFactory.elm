module Org.Allbinary.Input.Gyro.OrientationMotionGestureFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.gyro
-}

import JR
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Input.Motion.Gesture.MotionGestureInput as MotionGestureInput
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "OrientationMotionGestureFactory"


jchain : List String
jchain =
    [ "OrientationMotionGestureFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "LEFT", JR.defaultOf "" ), ( "RIGHT", JR.defaultOf "" ), ( "UP", JR.defaultOf "" ), ( "DOWN", JR.defaultOf "" ), ( "ROLL_LEFT", JR.defaultOf "" ), ( "ROLL_RIGHT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OrientationMotionGestureFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OrientationMotionGestureFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.declare "MAX" "I" (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])), 
                    JR.exec (JR.setField "LEFT" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 20)), (JR.str "Left Orient") ])), 
                    JR.exec (JR.setField "RIGHT" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 21)), (JR.str "Right Orient") ])), 
                    JR.exec (JR.setField "UP" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 22)), (JR.str "Up Orient") ])), 
                    JR.exec (JR.setField "DOWN" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 23)), (JR.str "Down Orient") ])), 
                    JR.exec (JR.setField "ROLL_LEFT" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 24)), (JR.str "Roll Left") ])), 
                    JR.exec (JR.setField "ROLL_RIGHT" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 25)), (JR.str "Roll Right") ])) ]) ])
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "OrientationMotionGestureFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
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

