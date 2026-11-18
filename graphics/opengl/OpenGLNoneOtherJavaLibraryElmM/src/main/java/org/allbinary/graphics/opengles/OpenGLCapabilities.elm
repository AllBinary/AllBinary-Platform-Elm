module Org.Allbinary.Graphics.Opengles.OpenGLCapabilities exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles
-}

import JR
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "OpenGLCapabilities"


jchain : List String
jchain =
    [ "OpenGLCapabilities" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "CUSTOM_GL_SURFACE_VIEW", JR.defaultOf "Z" ), ( "VERSION_1_0", JR.defaultOf "" ), ( "VERSION_1_1", JR.defaultOf "" ), ( "VERSION_2_0", JR.defaultOf "" ), ( "VERSION_3_0", JR.defaultOf "" ), ( "VERSION_3_1", JR.defaultOf "" ), ( "VERSION_3_2", JR.defaultOf "" ), ( "VERSION_HIGHER_THAN_EXISTS", JR.defaultOf "" ), ( "glVersion", JR.defaultOf "" ), ( "shaderVersion", JR.defaultOf "I" ), ( "glInstanceVersion", JR.defaultOf "" ), ( "maxTextureSize", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isInitialized_0", jm_isInitialized_0 )
        , ( "initCapabilities_1", jm_initCapabilities_1 )
        , ( "isGlExtensionDrawTexture_0", jm_isGlExtensionDrawTexture_0 )
        , ( "getGlVersion_0", jm_getGlVersion_0 )
        , ( "isVertexBufferObjectSupport_0", jm_isVertexBufferObjectSupport_0 )
        , ( "isTextureSizeValid_1", jm_isTextureSizeValid_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLCapabilities"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isInitialized_0", jm_isInitialized_0 ), ( "jm_initCapabilities_1", jm_initCapabilities_1 ), ( "jm_isGlExtensionDrawTexture_0", jm_isGlExtensionDrawTexture_0 ), ( "jm_getGlVersion_0", jm_getGlVersion_0 ), ( "jm_isVertexBufferObjectSupport_0", jm_isVertexBufferObjectSupport_0 ), ( "jm_isTextureSizeValid_1", jm_isTextureSizeValid_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OpenGLCapabilities" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "CUSTOM_GL_SURFACE_VIEW" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "VERSION_1_0" "" JR.this (JR.str "1.0")),
                JR.exec (JR.setField "VERSION_1_1" "" JR.this (JR.str "1.1")),
                JR.exec (JR.setField "VERSION_2_0" "" JR.this (JR.str "2.0")),
                JR.exec (JR.setField "VERSION_3_0" "" JR.this (JR.str "3.0")),
                JR.exec (JR.setField "VERSION_3_1" "" JR.this (JR.str "3.1")),
                JR.exec (JR.setField "VERSION_3_2" "" JR.this (JR.str "3.2")),
                JR.exec (JR.setField "VERSION_HIGHER_THAN_EXISTS" "" JR.this (JR.str "999.999")),
                JR.exec (JR.setField "glVersion" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "shaderVersion" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "glInstanceVersion" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "maxTextureSize" "I" JR.this (JR.int 64)),
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


jm_isInitialized_0 : JR.Method
jm_isInitialized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_initCapabilities_1 : JR.Method
jm_initCapabilities_1 jheap jthis jargs =
    JR.method [ ( "gl", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isGlExtensionDrawTexture_0 : JR.Method
jm_isGlExtensionDrawTexture_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getGlVersion_0 : JR.Method
jm_getGlVersion_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "glVersion") ])
        (jregister jheap)
        jthis
        jargs


jm_isVertexBufferObjectSupport_0 : JR.Method
jm_isVertexBufferObjectSupport_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isTextureSizeValid_1 : JR.Method
jm_isTextureSizeValid_1 jheap jthis jargs =
    JR.method [ ( "widthAndHeight", "I" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
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

