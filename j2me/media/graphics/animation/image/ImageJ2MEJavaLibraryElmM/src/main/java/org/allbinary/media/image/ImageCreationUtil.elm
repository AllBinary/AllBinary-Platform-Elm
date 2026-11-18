module Org.Allbinary.Media.Image.ImageCreationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR
import Org.Allbinary.Image.GameFeatureImageCacheFactory as GameFeatureImageCacheFactory


jclass : String
jclass =
    "ImageCreationUtil"


jchain : List String
jchain =
    [ "ImageCreationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createImageWH_2", jm_createImageWH_2 )
        , ( "createImage_4", jm_createImage_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageCreationUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createImageWH_2", jm_createImageWH_2 ), ( "jm_createImage_4", jm_createImage_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageCreationUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_createImageWH_2 : JR.Method
jm_createImageWH_2 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.declare "image" "" (JR.invoke "get_3" (JR.callStatic GameFeatureImageCacheFactory.jm_getInstance_0 []) [ (JR.invoke "getName_0" (JR.getClass JR.this) []), (JR.local "width"), (JR.local "height") ]), 
                    JR.return (JR.local "image") ])
        (jregister jheap)
        jthis
        jargs


jm_createImage_4 : JR.Method
jm_createImage_4 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ), ( "maxScaleX", "F" ), ( "maxScaleY", "F" ) ] ""
        (JR.run [ 
                    JR.declare "image" "" (JR.invoke "get_3" (JR.callStatic GameFeatureImageCacheFactory.jm_getInstance_0 []) [ (JR.invoke "getName_0" (JR.getClass JR.this) []), (JR.map2 JR.add (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "width")) (JR.local "maxScaleX")))) (JR.int 1)), (JR.map2 JR.add (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "height")) (JR.local "maxScaleY")))) (JR.int 1)) ]), 
                    JR.return (JR.local "image") ])
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

