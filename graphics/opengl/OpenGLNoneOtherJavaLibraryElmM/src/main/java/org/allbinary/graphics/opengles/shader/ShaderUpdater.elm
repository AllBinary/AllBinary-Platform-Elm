module Org.Allbinary.Graphics.Opengles.Shader.ShaderUpdater exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.shader
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.Opengles.Renderer.RendererStrings as RendererStrings


jclass : String
jclass =
    "ShaderUpdater"


jchain : List String
jchain =
    [ "ShaderUpdater" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ), ( "rendererStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "onSurfaceCreated_2", jm_onSurfaceCreated_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ShaderUpdater"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_onSurfaceCreated_2", jm_onSurfaceCreated_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ShaderUpdater" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "rendererStrings" "" JR.this (JR.callStatic RendererStrings.jm_getInstance_0 [])),
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


jm_onSurfaceCreated_2 : JR.Method
jm_onSurfaceCreated_2 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "eglConfig", "" ) ] ""
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

