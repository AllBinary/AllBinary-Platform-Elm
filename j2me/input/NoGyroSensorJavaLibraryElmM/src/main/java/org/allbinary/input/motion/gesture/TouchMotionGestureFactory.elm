module Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture
-}

import JR
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Input.Motion.Gesture.MotionGestureInput as MotionGestureInput
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "TouchMotionGestureFactory"


jchain : List String
jchain =
    [ "TouchMotionGestureFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "LEFT", JR.defaultOf "" ), ( "RIGHT", JR.defaultOf "" ), ( "UP", JR.defaultOf "" ), ( "DOWN", JR.defaultOf "" ), ( "PRESSED", JR.defaultOf "" ), ( "RELEASED", JR.defaultOf "" ), ( "DIAGONAL_DOWN_RIGHT", JR.defaultOf "" ), ( "DIAGONAL_DOWN_LEFT", JR.defaultOf "" ), ( "DIAGONAL_UP_RIGHT", JR.defaultOf "" ), ( "DIAGONAL_UP_LEFT", JR.defaultOf "" ), ( "SCROLL_UP", JR.defaultOf "" ), ( "SCROLL_DOWN", JR.defaultOf "" ), ( "NO_MOTION", JR.defaultOf "" ), ( "LAST_MOTION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchMotionGestureFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TouchMotionGestureFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.declare "MAX" "I" (JR.field "MAX" (JR.callStatic InputFactory.jm_getInstance_0 [])), 
                    JR.exec (JR.setField "LEFT" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 3)), (JR.str "Left Touch") ])), 
                    JR.exec (JR.setField "RIGHT" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 4)), (JR.str "Right Touch") ])), 
                    JR.exec (JR.setField "UP" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 5)), (JR.str "Up Touch") ])), 
                    JR.exec (JR.setField "DOWN" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 6)), (JR.str "Down Touch") ])), 
                    JR.exec (JR.setField "PRESSED" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 7)), (JR.str "Screen Press") ])), 
                    JR.exec (JR.setField "RELEASED" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 8)), (JR.str "Released") ])), 
                    JR.exec (JR.setField "DIAGONAL_DOWN_RIGHT" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 9)), (JR.str "Diagonal Dn R") ])), 
                    JR.exec (JR.setField "DIAGONAL_DOWN_LEFT" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 10)), (JR.str "Diagonal Dn L") ])), 
                    JR.exec (JR.setField "DIAGONAL_UP_RIGHT" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 11)), (JR.str "Diagonal Up R") ])), 
                    JR.exec (JR.setField "DIAGONAL_UP_LEFT" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 12)), (JR.str "Diagonal Up L") ])), 
                    JR.exec (JR.setField "SCROLL_UP" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 13)), (JR.str "Scroll Up") ])), 
                    JR.exec (JR.setField "SCROLL_DOWN" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 14)), (JR.str "Scroll Down") ])), 
                    JR.exec (JR.setField "NO_MOTION" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 2)), (JR.str "No Motion") ])), 
                    JR.exec (JR.setField "LAST_MOTION" "" JR.this (JR.new MotionGestureInput.jnew_2 [ (JR.map2 JR.sub (JR.local "MAX") (JR.int 19)), (JR.str "Last Motion") ])) ]) ])
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
                        JR.exec (JR.setStatic "TouchMotionGestureFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
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

