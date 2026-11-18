module Org.Allbinary.Game.Physics.Acceleration.BasicAccelerationProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.physics.acceleration
-}

import JR



jclass : String
jclass =
    "BasicAccelerationProperties"


jchain : List String
jchain =
    [ "BasicAccelerationProperties" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "forward", JR.defaultOf "I" ), ( "reverse", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "setReverse_1", jm_setReverse_1 )
        , ( "getReverse_0", jm_getReverse_0 )
        , ( "setForward_1", jm_setForward_1 )
        , ( "getForward_0", jm_getForward_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicAccelerationProperties"
        [ ( "jm_setReverse_1", jm_setReverse_1 ), ( "jm_getReverse_0", jm_getReverse_0 ), ( "jm_setForward_1", jm_setForward_1 ), ( "jm_getForward_0", jm_getForward_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "forward", "I" ), ( "reverse", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setForward_1" JR.this [ (JR.local "forward") ]), 
                    JR.exec (JR.invoke "setReverse_1" JR.this [ (JR.local "reverse") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_setReverse_1 : JR.Method
jm_setReverse_1 jheap jthis jargs =
    JR.method [ ( "reverse", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "reverse" "I" JR.this (JR.local "reverse")) ])
        (jregister jheap)
        jthis
        jargs


jm_getReverse_0 : JR.Method
jm_getReverse_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "reverse") ])
        (jregister jheap)
        jthis
        jargs


jm_setForward_1 : JR.Method
jm_setForward_1 jheap jthis jargs =
    JR.method [ ( "forward", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "forward" "I" JR.this (JR.local "forward")) ])
        (jregister jheap)
        jthis
        jargs


jm_getForward_0 : JR.Method
jm_getForward_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "forward") ])
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

