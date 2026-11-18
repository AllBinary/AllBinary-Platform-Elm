module Org.Allbinary.Image.Opengles.OpenGLESImageProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image.opengles
-}

import JR



jclass : String
jclass =
    "OpenGLESImageProperties"


jchain : List String
jchain =
    [ "OpenGLESImageProperties" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "textureID", JR.defaultOf "I" ), ( "scaleX", JR.defaultOf "F" ), ( "scaleY", JR.defaultOf "F" ), ( "scaleX2", JR.defaultOf "F" ), ( "scaleY2", JR.defaultOf "F" ), ( "angle", JR.defaultOf "I" ), ( "redf", JR.defaultOf "F" ), ( "greenf", JR.defaultOf "F" ), ( "bluef", JR.defaultOf "F" ), ( "alphaf", JR.defaultOf "F" ) ]


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLESImageProperties"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "textureID" "I" JR.this (JR.map JR.neg (JR.int 1))),
                JR.exec (JR.setField "scaleX" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "scaleY" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "scaleX2" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "scaleY2" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "redf" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "greenf" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "bluef" "F" JR.this (JR.float 1.0)),
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

