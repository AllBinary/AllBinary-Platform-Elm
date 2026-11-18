module Org.Allbinary.Graphics.Opengles.Shader.ShaderManager exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.shader
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings


jclass : String
jclass =
    "ShaderManager"


jchain : List String
jchain =
    [ "ShaderManager" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "LOAD_SHADER", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "GL_VERTEX_SHADER", JR.defaultOf "I" ), ( "GL_FRAGMENT_SHADER", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "load_4", jm_load_4 )
        , ( "loadShader_4", jm_loadShader_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ShaderManager"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_load_4", jm_load_4 ), ( "jm_loadShader_4", jm_loadShader_4 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ShaderManager" jclinit "instance"
        (JR.new jnew_2 [ (JR.map JR.neg (JR.int 1)), (JR.map JR.neg (JR.int 1)) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "GL_VERTEX_SHADER", "I" ), ( "GL_FRAGMENT_SHADER", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "LOAD_SHADER" "" JR.this (JR.str "loadShader")),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "GL_VERTEX_SHADER" "I" JR.this (JR.local "GL_VERTEX_SHADER")), 
                    JR.exec (JR.setField "GL_FRAGMENT_SHADER" "I" JR.this (JR.local "GL_FRAGMENT_SHADER")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_load_4 : JR.Method
jm_load_4 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "resource", "" ), ( "shaderAsStringArray", "" ), ( "shaderType", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_loadShader_4 : JR.Method
jm_loadShader_4 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "resource", "" ), ( "stringList", "" ), ( "shaderType", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
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

