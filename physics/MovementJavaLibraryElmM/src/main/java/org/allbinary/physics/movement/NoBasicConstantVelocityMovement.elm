module Org.Allbinary.Physics.Movement.NoBasicConstantVelocityMovement exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.physics.movement
-}

import JR
import Org.Allbinary.Physics.Movement.BasicConstantVelocityMovement as BasicConstantVelocityMovement
import Org.Allbinary.Logic.Math.BasicDecimal as BasicDecimal
import Org.Allbinary.Game.Physics.Velocity.BasicVelocityProperties as BasicVelocityProperties


jclass : String
jclass =
    "NoBasicConstantVelocityMovement"


jchain : List String
jchain =
    [ "NoBasicConstantVelocityMovement" ]
        ++ BasicConstantVelocityMovement.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicConstantVelocityMovement.jfields ++ []


jvtable =
    JR.vtable
        [ ( "process_1", jm_process_1 ) ]
        BasicConstantVelocityMovement.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoBasicConstantVelocityMovement"
        [ ( "jm_process_1", jm_process_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicConstantVelocityMovement.jinit_2 JR.this [ BasicDecimal.jstatic_ZERO_BIGDECIMAL, (JR.new BasicVelocityProperties.jnew_0 []) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "layer", "" ) ] ""
        identity
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

