module Org.Allbinary.Image.Opengles.OpenGLImageCacheFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image.opengles
-}

import JR
import Org.Allbinary.Image.ImageCache as ImageCache


jclass : String
jclass =
    "OpenGLImageCacheFactory"


jchain : List String
jchain =
    [ "OpenGLImageCacheFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_0", jm_init_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OpenGLImageCacheFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_IMAGE_CACHE", jstatic_IMAGE_CACHE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_IMAGE_CACHE : JR.M
jstatic_IMAGE_CACHE s =
    JR.static "OpenGLImageCacheFactory" jclinit "IMAGE_CACHE"
        ImageCache.jstatic_NULL_IMAGE_CACHE
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
                    JR.return jstatic_IMAGE_CACHE ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_IMAGE_CACHE JR.null) identity identity ])
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

