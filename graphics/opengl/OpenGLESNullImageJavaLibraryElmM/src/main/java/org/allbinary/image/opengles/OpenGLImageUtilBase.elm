module Org.Allbinary.Image.Opengles.OpenGLImageUtilBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image.opengles
-}

import JR



jclass : String
jclass =
    "OpenGLImageUtilBase"


jchain : List String
jchain =
    [ "OpenGLImageUtilBase" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "paint_3", jm_paint_3 )
        , ( "paint_4", jm_paint_4 )
        , ( "createImage_1", jm_createImage_1 )
        , ( "createImageFromInputStream_1", jm_createImageFromInputStream_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLImageUtilBase"
        [ ( "jm_paint_3", jm_paint_3 ), ( "jm_paint_4", jm_paint_4 ), ( "jm_createImage_1", jm_createImage_1 ), ( "jm_createImageFromInputStream_1", jm_createImageFromInputStream_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_paint_3 : JR.Method
jm_paint_3 jheap jthis jargs =
    JR.method [ ( "alphaBitmap", "" ), ( "originalBitmap", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_4 : JR.Method
jm_paint_4 jheap jthis jargs =
    JR.method [ ( "colorBitmap", "" ), ( "originalBitmap", "" ), ( "alpha", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_createImage_1 : JR.Method
jm_createImage_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_createImageFromInputStream_1 : JR.Method
jm_createImageFromInputStream_1 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
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

