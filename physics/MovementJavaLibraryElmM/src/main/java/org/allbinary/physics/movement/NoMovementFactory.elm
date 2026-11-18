module Org.Allbinary.Physics.Movement.NoMovementFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.physics.movement
-}

import JR
import Org.Allbinary.Physics.Movement.Movement as Movement


jclass : String
jclass =
    "NoMovementFactory"


jchain : List String
jchain =
    [ "NoMovementFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "movement", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getMovmentInstance_0", jm_getMovmentInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoMovementFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getMovmentInstance_0", jm_getMovmentInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NoMovementFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "movement" "" JR.this (JR.new Movement.jnew_0 [])),
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


jm_getMovmentInstance_0 : JR.Method
jm_getMovmentInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "movement") ])
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

