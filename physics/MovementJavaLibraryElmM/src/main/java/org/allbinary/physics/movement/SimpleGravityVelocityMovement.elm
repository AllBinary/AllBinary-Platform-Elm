module Org.Allbinary.Physics.Movement.SimpleGravityVelocityMovement exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.physics.movement
-}

import JR
import Org.Allbinary.Physics.Movement.BasicConstantVelocityMovement as BasicConstantVelocityMovement
import Org.Allbinary.Game.Physics.Acceleration.GravityUtil as GravityUtil
import Org.Allbinary.Game.Physics.Velocity.VelocityProperties as VelocityProperties


jclass : String
jclass =
    "SimpleGravityVelocityMovement"


jchain : List String
jchain =
    [ "SimpleGravityVelocityMovement" ]
        ++ BasicConstantVelocityMovement.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicConstantVelocityMovement.jfields ++ [ ( "gravityUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "process_1", jm_process_1 ) ]
        BasicConstantVelocityMovement.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SimpleGravityVelocityMovement"
        [ ( "jm_process_1", jm_process_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "speedBasicDecimal", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicConstantVelocityMovement.jinit_2 JR.this [ (JR.local "speedBasicDecimal"), (JR.new VelocityProperties.jnew_2 [ (JR.cast "I" (JR.invoke "getUnscaled_0" (JR.local "speedBasicDecimal") [])), (JR.cast "I" (JR.invoke "getUnscaled_0" (JR.local "speedBasicDecimal") [])) ]) ]),
                JR.exec (JR.setField "gravityUtil" "" JR.this (JR.callStatic GravityUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "layer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_2" (JR.thisField "gravityUtil") [ (JR.invoke "getVelocityProperties_0" JR.this []), (JR.field "GAME_GRAVITY_VELOCITY" (JR.thisField "gravityUtil")) ]), 
                    JR.exec (JR.callVia BasicConstantVelocityMovement.jvtable "process_1" JR.this [ (JR.local "layer") ]) ])
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

