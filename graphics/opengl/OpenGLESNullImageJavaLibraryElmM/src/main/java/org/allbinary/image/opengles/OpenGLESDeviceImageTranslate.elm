module Org.Allbinary.Image.Opengles.OpenGLESDeviceImageTranslate exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image.opengles
-}

import JR
import Org.Allbinary.Image.Opengles.OpenGLESImageTranslate as OpenGLESImageTranslate


jclass : String
jclass =
    "OpenGLESDeviceImageTranslate"


jchain : List String
jchain =
    [ "OpenGLESDeviceImageTranslate" ]
        ++ OpenGLESImageTranslate.jchain


jfields : List ( String, JR.JValue )
jfields =
    OpenGLESImageTranslate.jfields ++ [ ( "translateX", JR.defaultOf "F" ), ( "translateY", JR.defaultOf "F" ), ( "translateX2", JR.defaultOf "F" ), ( "translateY2", JR.defaultOf "F" ) ]


jvtable =
    JR.vtable
        [ ( "translate_4", jm_translate_4 )
        , ( "translate2_2", jm_translate2_2 ) ]
        OpenGLESImageTranslate.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLESDeviceImageTranslate"
        [ ( "jm_translate_4", jm_translate_4 ), ( "jm_translate2_2", jm_translate2_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect OpenGLESImageTranslate.jinit_0 JR.this []),
            JR.exec (JR.setField "translateX" "F" JR.this (JR.float 0.0)),
                JR.exec (JR.setField "translateY" "F" JR.this (JR.float 0.0)),
                JR.exec (JR.setField "translateX2" "F" JR.this (JR.float 0.0)),
                JR.exec (JR.setField "translateY2" "F" JR.this (JR.float 0.0)),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_translate_4 : JR.Method
jm_translate_4 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "openGLESImage", "" ), ( "x", "F" ), ( "y", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "translate_3" (JR.field "imageProcessor" (JR.local "openGLESImage")) [ (JR.local "gl"), (JR.map2 JR.add (JR.thisField "translateX") ((JR.map2 JR.mul (JR.field "scaleX" (JR.field "openGLESImageProperties" (JR.local "openGLESImage"))) (JR.local "x")))), (JR.map2 JR.add (JR.thisField "translateY") ((JR.map2 JR.mul (JR.field "scaleY" (JR.field "openGLESImageProperties" (JR.local "openGLESImage"))) (JR.local "y")))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_translate2_2 : JR.Method
jm_translate2_2 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "openGLESImage", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "translate_3" (JR.field "imageProcessor" (JR.local "openGLESImage")) [ (JR.local "gl"), (JR.thisField "translateX2"), (JR.thisField "translateY2") ]) ])
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

