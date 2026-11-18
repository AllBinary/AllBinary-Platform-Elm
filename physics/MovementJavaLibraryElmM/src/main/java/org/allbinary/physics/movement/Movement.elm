module Org.Allbinary.Physics.Movement.Movement exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.physics.movement
-}

import JR
import Org.Allbinary.Physics.Movement.MovementInterface as MovementInterface


jclass : String
jclass =
    "Movement"


jchain : List String
jchain =
    [ "Movement" ]
        ++ MovementInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "init_3", jm_init_3 )
        , ( "process_1", jm_process_1 )
        , ( "stop_0", jm_stop_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Movement"
        [ ( "jm_init_3", jm_init_3 ), ( "jm_process_1", jm_process_1 ), ( "jm_stop_0", jm_stop_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_init_3 : JR.Method
jm_init_3 jheap jthis jargs =
    JR.method [ ( "speedBasicDecimal", "" ), ( "angle", "I" ), ( "otherAngle", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "layer", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_stop_0 : JR.Method
jm_stop_0 jheap jthis jargs =
    JR.method [] ""
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

