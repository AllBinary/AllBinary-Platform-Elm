module Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles
-}

import JR
import Org.Allbinary.Graphics.Opengles.OpenGLFeature as OpenGLFeature


jclass : String
jclass =
    "OpenGLFeatureFactory"


jchain : List String
jchain =
    [ "OpenGLFeatureFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "OPENGL_OPTIONS", JR.defaultOf "" ), ( "OPENGL", JR.defaultOf "" ), ( "OPENGL_SURFACE_VIEW", JR.defaultOf "" ), ( "OPENGL_2D", JR.defaultOf "" ), ( "OPENGL_3D", JR.defaultOf "" ), ( "OPENGL_2D_AND_3D", JR.defaultOf "" ), ( "OPENGL_AUTO_SELECT", JR.defaultOf "" ), ( "OPENGL_MINIMUM", JR.defaultOf "" ), ( "OPENGL_AS_GAME_THREAD", JR.defaultOf "" ), ( "OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS", JR.defaultOf "" ), ( "IMAGE_COLOR_DEPTH_4444", JR.defaultOf "" ), ( "IMAGE_COLOR_DEPTH_8888", JR.defaultOf "" ), ( "IMAGE_COLOR_DEPTH_565", JR.defaultOf "" ), ( "OPENGL_COLOR_DEPTH_4444", JR.defaultOf "" ), ( "OPENGL_COLOR_DEPTH_8888", JR.defaultOf "" ), ( "OPENGL_COLOR_DEPTH_565", JR.defaultOf "" ), ( "OPENGL_DRAW_TEXTURE", JR.defaultOf "" ), ( "OPENGL_VERTEX_BUFFER_OBJECT", JR.defaultOf "" ), ( "OPENGL_SIMPLE_OBJECT3D_PROCESSOR", JR.defaultOf "" ), ( "OPENGL_COMPLEX_OBJECT3D_PROCESSOR", JR.defaultOf "" ), ( "OPENGL_SIMPLE_TEXTURE_PROCESSOR", JR.defaultOf "" ), ( "OPENGL_COMPLEX_TEXTURE_PROCESSOR", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLFeatureFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OpenGLFeatureFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "OPENGL_OPTIONS" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "OpenGL Options") ])),
                JR.exec (JR.setField "OPENGL" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "OpenGL") ])),
                JR.exec (JR.setField "OPENGL_SURFACE_VIEW" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "GLSurfaceView") ])),
                JR.exec (JR.setField "OPENGL_2D" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "OpenGL 2D") ])),
                JR.exec (JR.setField "OPENGL_3D" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "OpenGL 3D") ])),
                JR.exec (JR.setField "OPENGL_2D_AND_3D" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "OpenGL 2D/3D") ])),
                JR.exec (JR.setField "OPENGL_AUTO_SELECT" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "Auto Select") ])),
                JR.exec (JR.setField "OPENGL_MINIMUM" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "Minimum") ])),
                JR.exec (JR.setField "OPENGL_AS_GAME_THREAD" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "As game thread") ])),
                JR.exec (JR.setField "OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "As different threads") ])),
                JR.exec (JR.setField "IMAGE_COLOR_DEPTH_4444" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "4444") ])),
                JR.exec (JR.setField "IMAGE_COLOR_DEPTH_8888" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "8888") ])),
                JR.exec (JR.setField "IMAGE_COLOR_DEPTH_565" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "565") ])),
                JR.exec (JR.setField "OPENGL_COLOR_DEPTH_4444" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "4444") ])),
                JR.exec (JR.setField "OPENGL_COLOR_DEPTH_8888" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "8888") ])),
                JR.exec (JR.setField "OPENGL_COLOR_DEPTH_565" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "565") ])),
                JR.exec (JR.setField "OPENGL_DRAW_TEXTURE" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "GL_OES_draw_texture") ])),
                JR.exec (JR.setField "OPENGL_VERTEX_BUFFER_OBJECT" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "vertex_buffer_object") ])),
                JR.exec (JR.setField "OPENGL_SIMPLE_OBJECT3D_PROCESSOR" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "Simple Object3d Processor") ])),
                JR.exec (JR.setField "OPENGL_COMPLEX_OBJECT3D_PROCESSOR" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "Complex Object3d Processor") ])),
                JR.exec (JR.setField "OPENGL_SIMPLE_TEXTURE_PROCESSOR" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "Simple Texture Processor") ])),
                JR.exec (JR.setField "OPENGL_COMPLEX_TEXTURE_PROCESSOR" "" JR.this (JR.new OpenGLFeature.jnew_1 [ (JR.str "Complex Texture Processor") ])),
                identity,
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

