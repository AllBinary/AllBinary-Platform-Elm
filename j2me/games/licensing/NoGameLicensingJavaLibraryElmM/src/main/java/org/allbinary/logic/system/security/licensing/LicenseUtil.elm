module Org.Allbinary.Logic.System.Security.Licensing.LicenseUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR



jclass : String
jclass =
    "LicenseUtil"


jchain : List String
jchain =
    [ "LicenseUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_0", jm_init_0 )
        , ( "isRunning_0", jm_isRunning_0 )
        , ( "setRunning_1", jm_setRunning_1 )
        , ( "shouldWait_1", jm_shouldWait_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LicenseUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jm_isRunning_0", jm_isRunning_0 ), ( "jm_setRunning_1", jm_setRunning_1 ), ( "jm_shouldWait_1", jm_shouldWait_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LicenseUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isRunning_0 : JR.Method
jm_isRunning_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_setRunning_1 : JR.Method
jm_setRunning_1 jheap jthis jargs =
    JR.method [ ( "running", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_shouldWait_1 : JR.Method
jm_shouldWait_1 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isRunning_0" JR.this []) ])
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

