module Org.Allbinary.Graphics.Opengles.Shader.UniformTextureOpenGLProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.shader
-}

import JR
import Org.Allbinary.Graphics.Opengles.Shader.OpenGLObject3dProcessor as OpenGLObject3dProcessor


jclass : String
jclass =
    "UniformTextureOpenGLProcessor"


jchain : List String
jchain =
    [ "UniformTextureOpenGLProcessor" ]
        ++ OpenGLObject3dProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    OpenGLObject3dProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "process_3", jm_process_3 ) ]
        OpenGLObject3dProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "UniformTextureOpenGLProcessor"
        [ ( "jm_process_3", jm_process_3 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "shaderComposite", "" ), ( "handleIndex", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect OpenGLObject3dProcessor.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_process_3 : JR.Method
jm_process_3 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "unused", "" ), ( "index", "I" ) ] ""
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

