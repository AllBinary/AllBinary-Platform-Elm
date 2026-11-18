module Org.Allbinary.Image.Opengles.ModifierOpenGLESImageProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image.opengles
-}

import JR
import Org.Allbinary.Image.Opengles.OpenGLESImageProcessor as OpenGLESImageProcessor


jclass : String
jclass =
    "ModifierOpenGLESImageProcessor"


jchain : List String
jchain =
    [ "ModifierOpenGLESImageProcessor" ]
        ++ OpenGLESImageProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    OpenGLESImageProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        OpenGLESImageProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ModifierOpenGLESImageProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instanceC", jstatic_instanceC ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instanceC : JR.M
jstatic_instanceC s =
    JR.static "ModifierOpenGLESImageProcessor" jclinit "instanceC"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect OpenGLESImageProcessor.jinit_0 JR.this []),
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
                    JR.return jstatic_instanceC ])
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

