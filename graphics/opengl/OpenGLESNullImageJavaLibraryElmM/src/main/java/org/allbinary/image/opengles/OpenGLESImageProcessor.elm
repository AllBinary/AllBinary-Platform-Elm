module Org.Allbinary.Image.Opengles.OpenGLESImageProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image.opengles
-}

import JR



jclass : String
jclass =
    "OpenGLESImageProcessor"


jchain : List String
jchain =
    [ "OpenGLESImageProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "translate_3", jm_translate_3 )
        , ( "rotate_2", jm_rotate_2 )
        , ( "scale_3", jm_scale_3 )
        , ( "colorMask_5", jm_colorMask_5 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLESImageProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_translate_3", jm_translate_3 ), ( "jm_rotate_2", jm_rotate_2 ), ( "jm_scale_3", jm_scale_3 ), ( "jm_colorMask_5", jm_colorMask_5 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OpenGLESImageProcessor" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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


jm_translate_3 : JR.Method
jm_translate_3 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "translateX", "F" ), ( "translateY", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_rotate_2 : JR.Method
jm_rotate_2 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "angle", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_scale_3 : JR.Method
jm_scale_3 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "scaleX", "F" ), ( "scaleY", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_colorMask_5 : JR.Method
jm_colorMask_5 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "red", "F" ), ( "green", "F" ), ( "blue", "F" ), ( "alpha", "F" ) ] ""
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

