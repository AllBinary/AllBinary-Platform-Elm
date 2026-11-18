module Org.Allbinary.Graphics.OpenGLBitmap exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.Platform.Graphics.PlatformBitmapBase as PlatformBitmapBase


jclass : String
jclass =
    "OpenGLBitmap"


jchain : List String
jchain =
    [ "OpenGLBitmap" ]
        ++ PlatformBitmapBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    PlatformBitmapBase.jfields ++ [ ( "bitmap", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getPixels_7", jm_getPixels_7 )
        , ( "setPixels_7", jm_setPixels_7 )
        , ( "recycle_0", jm_recycle_0 ) ]
        PlatformBitmapBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLBitmap"
        [ ( "jm_getPixels_7", jm_getPixels_7 ), ( "jm_setPixels_7", jm_setPixels_7 ), ( "jm_recycle_0", jm_recycle_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "bitmap", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect PlatformBitmapBase.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "bitmap" "" JR.this (JR.local "bitmap")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getPixels_7 : JR.Method
jm_getPixels_7 jheap jthis jargs =
    JR.method [ ( "pixels", "" ), ( "offset", "I" ), ( "stride", "I" ), ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setPixels_7 : JR.Method
jm_setPixels_7 jheap jthis jargs =
    JR.method [ ( "pixels", "" ), ( "offset", "I" ), ( "stride", "I" ), ( "x", "I" ), ( "y", "I" ), ( "width", "I" ), ( "height", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_recycle_0 : JR.Method
jm_recycle_0 jheap jthis jargs =
    JR.method [] ""
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

