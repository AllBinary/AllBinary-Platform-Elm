module Org.Allbinary.Platform.Opengles.PlatformTextureBaseFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.platform.opengles
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings


jclass : String
jclass =
    "PlatformTextureBaseFactory"


jchain : List String
jchain =
    [ "PlatformTextureBaseFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "load_6", jm_load_6 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlatformTextureBaseFactory"
        [ ( "jm_load_6", jm_load_6 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY", jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY : JR.M
jstatic_NULL_PLATFORM_TEXTURE_BASE_FACTORY s =
    JR.static "PlatformTextureBaseFactory" jclinit "NULL_PLATFORM_TEXTURE_BASE_FACTORY"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_load_6 : JR.Method
jm_load_6 jheap jthis jargs =
    JR.method [ ( "gl", "" ), ( "target", "I" ), ( "level", "I" ), ( "image", "" ), ( "border", "I" ), ( "flip", "Z" ) ] ""
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

