module Org.Allbinary.Graphics.Opengles.Shader.OpenGLObject3dProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.shader
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings


jclass : String
jclass =
    "OpenGLObject3dProcessor"


jchain : List String
jchain =
    [ "OpenGLObject3dProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "process_2", jm_process_2 )
        , ( "process_3", jm_process_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLObject3dProcessor"
        [ ( "jm_process_2", jm_process_2 ), ( "jm_process_3", jm_process_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "object3d", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process_3 : JR.Method
jm_process_3 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "object3d", "" ), ( "index", "I" ) ] ""
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

