module Org.Allbinary.Game.Physics.Velocity.VelocityBehaviorBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.physics.velocity
-}

import JR



jclass : String
jclass =
    "VelocityBehaviorBase"


jchain : List String
jchain =
    [ "VelocityBehaviorBase" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "reduce_3", jm_reduce_3 )
        , ( "reduceX_3", jm_reduceX_3 )
        , ( "reduceY_3", jm_reduceY_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VelocityBehaviorBase"
        [ ( "jm_reduce_3", jm_reduce_3 ), ( "jm_reduceX_3", jm_reduceX_3 ), ( "jm_reduceY_3", jm_reduceY_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_reduce_3 : JR.Method
jm_reduce_3 jheap jthis jargs =
    JR.method [ ( "velocityProperties", "" ), ( "nominator", "I" ), ( "denominator", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_reduceX_3 : JR.Method
jm_reduceX_3 jheap jthis jargs =
    JR.method [ ( "velocityProperties", "" ), ( "nominator", "I" ), ( "denominator", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_reduceY_3 : JR.Method
jm_reduceY_3 jheap jthis jargs =
    JR.method [ ( "velocityProperties", "" ), ( "nominator", "I" ), ( "denominator", "I" ) ] ""
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

