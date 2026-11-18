module Org.Allbinary.Graphics.Opengles.Renderer.RendererStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.opengles.renderer
-}

import JR



jclass : String
jclass =
    "RendererStrings"


jchain : List String
jchain =
    [ "RendererStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "ON_SURFACE_CREATED", JR.defaultOf "" ), ( "ON_SURFACE_CHANGED", JR.defaultOf "" ), ( "ON_DRAW_FRAME", JR.defaultOf "" ), ( "ON_DRAW_FRAME_THREED", JR.defaultOf "" ), ( "ON_DRAW_FRAME_2D", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RendererStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "RendererStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "ON_SURFACE_CREATED" "" JR.this (JR.str "onSurfaceCreated")),
                JR.exec (JR.setField "ON_SURFACE_CHANGED" "" JR.this (JR.str "onSurfaceChanged")),
                JR.exec (JR.setField "ON_DRAW_FRAME" "" JR.this (JR.str "onDrawFrame")),
                JR.exec (JR.setField "ON_DRAW_FRAME_THREED" "" JR.this (JR.str "onDrawFrameThreed")),
                JR.exec (JR.setField "ON_DRAW_FRAME_2D" "" JR.this (JR.str "onDrawFrame2d")),
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

