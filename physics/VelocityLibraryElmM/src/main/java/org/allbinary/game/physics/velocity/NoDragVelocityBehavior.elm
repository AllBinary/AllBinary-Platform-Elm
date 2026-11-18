module Org.Allbinary.Game.Physics.Velocity.NoDragVelocityBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.physics.velocity
-}

import JR
import Org.Allbinary.Game.Physics.Velocity.VelocityBehaviorBase as VelocityBehaviorBase


jclass : String
jclass =
    "NoDragVelocityBehavior"


jchain : List String
jchain =
    [ "NoDragVelocityBehavior" ]
        ++ VelocityBehaviorBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    VelocityBehaviorBase.jfields ++ []


jvtable =
    JR.vtable
        []
        VelocityBehaviorBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoDragVelocityBehavior"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NoDragVelocityBehavior" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect VelocityBehaviorBase.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

