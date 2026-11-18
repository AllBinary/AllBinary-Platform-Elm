module Org.Allbinary.Input.Motion.Gesture.MotionGestureInput exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture
-}

import JR
import Org.Allbinary.Game.Input.Input as Input
import Org.Allbinary.Game.Input.InputFactory as InputFactory


jclass : String
jclass =
    "MotionGestureInput"


jchain : List String
jchain =
    [ "MotionGestureInput" ]
        ++ Input.jchain


jfields : List ( String, JR.JValue )
jfields =
    Input.jfields ++ []


jvtable =
    JR.vtable
        []
        Input.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionGestureInput"
        [ ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "id", "I" ), ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Input.jinit_2 JR.this [ (JR.local "id"), (JR.local "name") ]),
                identity,
                (JR.run [ 
                    JR.declare "inputFactory" "" (JR.callStatic InputFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputFactory") [ (JR.invoke "getId_0" JR.this []), JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

