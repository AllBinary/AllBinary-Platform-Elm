module Org.Allbinary.Graphics.Opengles.Shader.PlatformShaderComposite exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.shader
-}

import JR
import Org.Allbinary.Graphics.Opengles.NullOpenGLProcessorFactory as NullOpenGLProcessorFactory
import Org.Allbinary.Graphics.Opengles.Shader.ShaderComposite as ShaderComposite


jclass : String
jclass =
    "PlatformShaderComposite"


jchain : List String
jchain =
    [ "PlatformShaderComposite" ]
        ++ ShaderComposite.jchain


jfields : List ( String, JR.JValue )
jfields =
    ShaderComposite.jfields ++ []


jvtable =
    JR.vtable
        []
        ShaderComposite.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlatformShaderComposite"
        [ ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "requiresOpenGLVersion", "" ), ( "shaderArray", "" ), ( "compositeShaderUpdater", "" ), ( "shaderInitializer", "" ), ( "modelViewProjection", "" ), ( "colorOpenGLProcessor", "" ), ( "vertexOpenGLProcessor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ShaderComposite.jinit_8 JR.this [ (JR.local "requiresOpenGLVersion"), (JR.local "shaderArray"), (JR.local "compositeShaderUpdater"), (JR.local "shaderInitializer"), (JR.local "modelViewProjection"), (JR.local "colorOpenGLProcessor"), (JR.local "vertexOpenGLProcessor"), (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 []) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

