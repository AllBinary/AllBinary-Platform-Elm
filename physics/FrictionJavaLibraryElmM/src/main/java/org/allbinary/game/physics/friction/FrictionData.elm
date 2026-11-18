module Org.Allbinary.Game.Physics.Friction.FrictionData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.physics.friction
-}

import JR



jclass : String
jclass =
    "FrictionData"


jchain : List String
jchain =
    [ "FrictionData" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getFrictionDenominator_0", jm_getFrictionDenominator_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FrictionData"
        [ ( "jm_getFrictionDenominator_0", jm_getFrictionDenominator_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_FRICTION_DENOMINATOR", jstatic_FRICTION_DENOMINATOR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_FRICTION_DENOMINATOR : JR.M
jstatic_FRICTION_DENOMINATOR s =
    JR.static "FrictionData" jclinit "FRICTION_DENOMINATOR"
        (JR.int 100)
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getFrictionDenominator_0 : JR.Method
jm_getFrictionDenominator_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return jstatic_FRICTION_DENOMINATOR ])
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

