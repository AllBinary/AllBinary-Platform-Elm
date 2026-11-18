module Org.Allbinary.Graphics.Opengles.Shader.ShaderOpenGLProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.shader
-}

import JR
import Org.Allbinary.Graphics.Opengles.OpenGLProcessor as OpenGLProcessor


jclass : String
jclass =
    "ShaderOpenGLProcessor"


jchain : List String
jchain =
    [ "ShaderOpenGLProcessor" ]
        ++ OpenGLProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    OpenGLProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "process0_1", jm_process0_1 )
        , ( "process1_1", jm_process1_1 )
        , ( "process_1", jm_process_1 )
        , ( "process2_1", jm_process2_1 )
        , ( "process3_1", jm_process3_1 ) ]
        OpenGLProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ShaderOpenGLProcessor"
        [ ( "jm_process0_1", jm_process0_1 ), ( "jm_process1_1", jm_process1_1 ), ( "jm_process_1", jm_process_1 ), ( "jm_process2_1", jm_process2_1 ), ( "jm_process3_1", jm_process3_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect OpenGLProcessor.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_process0_1 : JR.Method
jm_process0_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process1_1 : JR.Method
jm_process1_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process2_1 : JR.Method
jm_process2_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process3_1 : JR.Method
jm_process3_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
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

