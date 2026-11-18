module Org.Allbinary.Platform.Graphics.PlatformBitmapBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.platform.graphics
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Javax.Microedition.Lcdui.NullImage as NullImage


jclass : String
jclass =
    "PlatformBitmapBase"


jchain : List String
jchain =
    [ "PlatformBitmapBase" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "alpha", JR.defaultOf "I" ), ( "basicColor", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getWidth_0", jm_getWidth_0 )
        , ( "getHeight_0", jm_getHeight_0 )
        , ( "getImage_0", jm_getImage_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlatformBitmapBase"
        [ ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jm_getImage_0", jm_getImage_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_PLATFORM_BITMAP_BASE", jstatic_NULL_PLATFORM_BITMAP_BASE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_PLATFORM_BITMAP_BASE : JR.M
jstatic_NULL_PLATFORM_BITMAP_BASE s =
    JR.static "PlatformBitmapBase" jclinit "NULL_PLATFORM_BITMAP_BASE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "alpha" "I" JR.this (JR.int 255)),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "NULL_COLOR" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getImage_0 : JR.Method
jm_getImage_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return NullImage.jstatic_NULL_IMAGE ])
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

