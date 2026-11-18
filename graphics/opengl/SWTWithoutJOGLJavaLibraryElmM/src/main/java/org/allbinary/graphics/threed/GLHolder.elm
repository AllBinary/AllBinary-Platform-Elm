module Org.Allbinary.Graphics.Threed.GLHolder exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.threed
-}

import JR



jclass : String
jclass =
    "GLHolder"


jchain : List String
jchain =
    [ "GLHolder" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "isCreated", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "runOnSurfaceCreated_1", jm_runOnSurfaceCreated_1 )
        , ( "runOnSurfaceChanged_3", jm_runOnSurfaceChanged_3 )
        , ( "run_1", jm_run_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GLHolder"
        [ ( "jm_runOnSurfaceCreated_1", jm_runOnSurfaceCreated_1 ), ( "jm_runOnSurfaceChanged_3", jm_runOnSurfaceChanged_3 ), ( "jm_run_1", jm_run_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "isCreated" "Z" JR.this (JR.bool True)),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_runOnSurfaceCreated_1 : JR.Method
jm_runOnSurfaceCreated_1 jheap jthis jargs =
    JR.method [ ( "renderer", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_runOnSurfaceChanged_3 : JR.Method
jm_runOnSurfaceChanged_3 jheap jthis jargs =
    JR.method [ ( "renderer", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_run_1 : JR.Method
jm_run_1 jheap jthis jargs =
    JR.method [ ( "renderer", "" ) ] ""
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

