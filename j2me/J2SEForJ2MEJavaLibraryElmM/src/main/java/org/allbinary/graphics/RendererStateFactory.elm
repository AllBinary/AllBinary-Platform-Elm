module Org.Allbinary.Graphics.RendererStateFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR



jclass : String
jclass =
    "RendererStateFactory"


jchain : List String
jchain =
    [ "RendererStateFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "loaded", JR.defaultOf "Z" ), ( "surfaceChanged", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setLoaded_1", jm_setLoaded_1 )
        , ( "isLoaded_0", jm_isLoaded_0 )
        , ( "setSurfaceChanged_1", jm_setSurfaceChanged_1 )
        , ( "isSurfaceChanged_0", jm_isSurfaceChanged_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RendererStateFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setLoaded_1", jm_setLoaded_1 ), ( "jm_isLoaded_0", jm_isLoaded_0 ), ( "jm_setSurfaceChanged_1", jm_setSurfaceChanged_1 ), ( "jm_isSurfaceChanged_0", jm_isSurfaceChanged_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "RendererStateFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "loaded" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "surfaceChanged" "Z" JR.this (JR.bool False)),
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


jm_setLoaded_1 : JR.Method
jm_setLoaded_1 jheap jthis jargs =
    JR.method [ ( "loaded", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "loaded" "Z" JR.this (JR.local "loaded")) ])
        (jregister jheap)
        jthis
        jargs


jm_isLoaded_0 : JR.Method
jm_isLoaded_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "loaded") ])
        (jregister jheap)
        jthis
        jargs


jm_setSurfaceChanged_1 : JR.Method
jm_setSurfaceChanged_1 jheap jthis jargs =
    JR.method [ ( "initialized", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "surfaceChanged" "Z" JR.this (JR.local "initialized")) ])
        (jregister jheap)
        jthis
        jargs


jm_isSurfaceChanged_0 : JR.Method
jm_isSurfaceChanged_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "surfaceChanged") ])
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

