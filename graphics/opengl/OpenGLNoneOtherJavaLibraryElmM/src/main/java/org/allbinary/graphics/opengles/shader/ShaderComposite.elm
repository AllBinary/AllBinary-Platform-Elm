module Org.Allbinary.Graphics.Opengles.Shader.ShaderComposite exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.shader
-}

import JR
import Org.Allbinary.Graphics.Opengles.NullOpenGLProcessorFactory as NullOpenGLProcessorFactory
import Org.Allbinary.Graphics.Opengles.Shader.NullOpenGLTextureProcessor as NullOpenGLTextureProcessor
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ShaderComposite"


jchain : List String
jchain =
    [ "ShaderComposite" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "disableProgramShaderOpenGLProcessor", JR.defaultOf "" ), ( "requiresOpenGLVersion", JR.defaultOf "" ), ( "shaderArray", JR.defaultOf "" ), ( "shaderInitializer", JR.defaultOf "" ), ( "compositeShaderUpdater", JR.defaultOf "" ), ( "modelViewProjection", JR.defaultOf "" ), ( "colorOpenGLProcessor", JR.defaultOf "" ), ( "vertexOpenGLProcessor", JR.defaultOf "" ), ( "useProgramShaderOpenGLProcessor", JR.defaultOf "" ), ( "shaderMatrixOpenGLProcessor", JR.defaultOf "" ), ( "colorEnableVertexAttribArrayOpenGLProcessor", JR.defaultOf "" ), ( "normalEnableVertexAttribArrayOpenGLProcessor", JR.defaultOf "" ), ( "vertexEnableVertexAttribArrayOpenGLProcessor", JR.defaultOf "" ), ( "textureEnableVertexAttribArrayOpenGLProcessor", JR.defaultOf "" ), ( "colorDisableVertexAttribArrayOpenGLProcessor", JR.defaultOf "" ), ( "normalDisableVertexAttribArrayOpenGLProcessor", JR.defaultOf "" ), ( "vertexDisableVertexAttribArrayOpenGLProcessor", JR.defaultOf "" ), ( "textureDisableVertexAttribArrayOpenGLProcessor", JR.defaultOf "" ), ( "uniformLightPositionOpenGLProcessor", JR.defaultOf "" ), ( "uniformLightColorOpenGLProcessor", JR.defaultOf "" ), ( "uniformCameraPositionOpenGLProcessor", JR.defaultOf "" ), ( "uniformTextureUnitOpenGLProcessor", JR.defaultOf "" ), ( "programHandle", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ShaderComposite"
        [ ( "jm_init_1", jm_init_1 ), ( "jnew_8", jnew_8 ), ( "jinit_8", jinit_8 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_8 : JR.Method
jinit_8 jheap jthis jargs =
    JR.method [ ( "requiresOpenGLVersion", "" ), ( "shaderArray", "" ), ( "compositeShaderUpdater", "" ), ( "shaderInitializer", "" ), ( "modelViewProjection", "" ), ( "colorOpenGLProcessor", "" ), ( "vertexOpenGLProcessor", "" ), ( "disableProgramShaderOpenGLProcessor", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "useProgramShaderOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "shaderMatrixOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "colorEnableVertexAttribArrayOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "normalEnableVertexAttribArrayOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "vertexEnableVertexAttribArrayOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "textureEnableVertexAttribArrayOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "colorDisableVertexAttribArrayOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "normalDisableVertexAttribArrayOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "vertexDisableVertexAttribArrayOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "textureDisableVertexAttribArrayOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLProcessorFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "uniformLightPositionOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLTextureProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "uniformLightColorOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLTextureProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "uniformCameraPositionOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLTextureProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "uniformTextureUnitOpenGLProcessor" "" JR.this (JR.callStatic NullOpenGLTextureProcessor.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "requiresOpenGLVersion" "" JR.this (JR.local "requiresOpenGLVersion")), 
                    JR.exec (JR.setField "shaderArray" "" JR.this (JR.local "shaderArray")), 
                    JR.exec (JR.setField "shaderInitializer" "" JR.this (JR.local "shaderInitializer")), 
                    JR.exec (JR.setField "compositeShaderUpdater" "" JR.this (JR.local "compositeShaderUpdater")), 
                    JR.exec (JR.setField "modelViewProjection" "" JR.this (JR.local "modelViewProjection")), 
                    JR.exec (JR.setField "colorOpenGLProcessor" "" JR.this (JR.local "colorOpenGLProcessor")), 
                    JR.exec (JR.setField "vertexOpenGLProcessor" "" JR.this (JR.local "vertexOpenGLProcessor")), 
                    JR.exec (JR.setField "disableProgramShaderOpenGLProcessor" "" JR.this (JR.local "disableProgramShaderOpenGLProcessor")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_8 : JR.Method
jnew_8 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_8 jheap jthis jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "programHandle" "I" JR.this (JR.invoke "init_3" (JR.thisField "shaderInitializer") [ (JR.local "gl"), (JR.thisField "shaderArray"), (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) []) ])) ])
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

