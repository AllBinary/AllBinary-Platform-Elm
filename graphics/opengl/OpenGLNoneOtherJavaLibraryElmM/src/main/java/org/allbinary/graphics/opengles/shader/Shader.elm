module Org.Allbinary.Graphics.Opengles.Shader.Shader exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.shader
-}

import JR
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "Shader"


jchain : List String
jchain =
    [ "Shader" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "shaderName", JR.defaultOf "" ), ( "shaderStringList", JR.defaultOf "" ), ( "shaderAsString", JR.defaultOf "" ), ( "shaderHandle", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Shader"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "shaderName" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "shaderStringList" "" JR.this (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) [])),
                JR.exec (JR.setField "shaderAsString" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

