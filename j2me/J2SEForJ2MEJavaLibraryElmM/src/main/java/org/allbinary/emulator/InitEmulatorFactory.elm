module Org.Allbinary.Emulator.InitEmulatorFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.emulator
-}

import JR



jclass : String
jclass =
    "InitEmulatorFactory"


jchain : List String
jchain =
    [ "InitEmulatorFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "initEmulator", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setInitEmulator_1", jm_setInitEmulator_1 )
        , ( "isInitEmulator_0", jm_isInitEmulator_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitEmulatorFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setInitEmulator_1", jm_setInitEmulator_1 ), ( "jm_isInitEmulator_0", jm_isInitEmulator_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InitEmulatorFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "initEmulator" "Z" JR.this (JR.bool False)),
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


jm_setInitEmulator_1 : JR.Method
jm_setInitEmulator_1 jheap jthis jargs =
    JR.method [ ( "initEmulator", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "initEmulator" "Z" JR.this (JR.local "initEmulator")) ])
        (jregister jheap)
        jthis
        jargs


jm_isInitEmulator_0 : JR.Method
jm_isInitEmulator_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "initEmulator") ])
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

