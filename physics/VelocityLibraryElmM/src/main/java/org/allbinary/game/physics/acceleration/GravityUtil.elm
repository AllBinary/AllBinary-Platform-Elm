module Org.Allbinary.Game.Physics.Acceleration.GravityUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.physics.acceleration
-}

import JR



jclass : String
jclass =
    "GravityUtil"


jchain : List String
jchain =
    [ "GravityUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "GAME_GRAVITY_VELOCITY", JR.defaultOf "I" ), ( "MAX_GAME_VELOCITY", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_2", jm_process_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GravityUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_2", jm_process_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GravityUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "GAME_GRAVITY_VELOCITY" "I" JR.this (JR.int 1800)),
                JR.exec (JR.setField "MAX_GAME_VELOCITY" "I" JR.this (JR.int 18000)),
                identity ])
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "velocityProperties", "" ), ( "customGravity", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addint_1" (JR.invoke "getVelocityYBasicDecimalP_0" (JR.local "velocityProperties") []) [ (JR.local "customGravity") ]) ])
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

