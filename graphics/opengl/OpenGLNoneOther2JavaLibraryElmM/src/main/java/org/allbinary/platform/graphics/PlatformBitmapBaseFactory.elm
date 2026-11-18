module Org.Allbinary.Platform.Graphics.PlatformBitmapBaseFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.platform.graphics
-}

import JR
import Org.Allbinary.Platform.Graphics.PlatformBitmapBase as PlatformBitmapBase


jclass : String
jclass =
    "PlatformBitmapBaseFactory"


jchain : List String
jchain =
    [ "PlatformBitmapBaseFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "createBitmap_1", jm_createBitmap_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlatformBitmapBaseFactory"
        [ ( "jm_createBitmap_1", jm_createBitmap_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY", jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY : JR.M
jstatic_NULL_PLATFORM_BITMAP_BASE_FACTORY s =
    JR.static "PlatformBitmapBaseFactory" jclinit "NULL_PLATFORM_BITMAP_BASE_FACTORY"
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


jm_createBitmap_1 : JR.Method
jm_createBitmap_1 jheap jthis jargs =
    JR.method [ ( "image", "" ) ] ""
        (JR.run [ 
                    JR.return PlatformBitmapBase.jstatic_NULL_PLATFORM_BITMAP_BASE ])
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

