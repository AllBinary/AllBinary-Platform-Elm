module Org.Allbinary.Platform.Graphics.PlatformBitmapBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.platform.graphics
-}

import JR
import Javax.Microedition.Lcdui.NullImage as NullImage


jclass : String
jclass =
    "PlatformBitmapBase"


jchain : List String
jchain =
    [ "PlatformBitmapBase" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getImage_0", jm_getImage_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlatformBitmapBase"
        [ ( "jm_getImage_0", jm_getImage_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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

