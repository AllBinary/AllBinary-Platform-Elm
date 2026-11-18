module Org.Allbinary.Game.Physics.FrictionProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.physics
-}

import JR
import Org.Allbinary.Game.Physics.Velocity.DragVelocityBehavior as DragVelocityBehavior
import Org.Allbinary.Game.Physics.Friction.FrictionData as FrictionData


jclass : String
jclass =
    "FrictionProperties"


jchain : List String
jchain =
    [ "FrictionProperties" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "friction_2", jm_friction_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FrictionProperties"
        [ ( "jm_friction_2", jm_friction_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_friction_2 : JR.Method
jm_friction_2 jheap jthis jargs =
    JR.method [ ( "velocityProperties", "" ), ( "nominator", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "reduce_3" DragVelocityBehavior.jstatic_instance [ (JR.local "velocityProperties"), (JR.local "nominator"), (JR.callStatic FrictionData.jm_getFrictionDenominator_0 []) ]) ])
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

