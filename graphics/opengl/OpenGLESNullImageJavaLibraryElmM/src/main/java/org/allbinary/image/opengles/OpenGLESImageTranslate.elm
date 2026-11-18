module Org.Allbinary.Image.Opengles.OpenGLESImageTranslate exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image.opengles
-}

import JR



jclass : String
jclass =
    "OpenGLESImageTranslate"


jchain : List String
jchain =
    [ "OpenGLESImageTranslate" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "translate_4", jm_translate_4 )
        , ( "translate2_2", jm_translate2_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLESImageTranslate"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_translate_4", jm_translate_4 ), ( "jm_translate2_2", jm_translate2_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OpenGLESImageTranslate" jclinit "instance"
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


jm_translate_4 : JR.Method
jm_translate_4 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "openGLESImage", "" ), ( "x", "F" ), ( "y", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "translate_3" (JR.field "imageProcessor" (JR.local "openGLESImage")) [ (JR.local "gl"), (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_translate2_2 : JR.Method
jm_translate2_2 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "openGLESImage", "" ) ] ""
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

