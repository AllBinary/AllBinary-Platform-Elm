module Org.Allbinary.Image.PaintableToImageUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image
-}

import JR
import Org.Allbinary.Image.GameFeatureImageCacheFactory as GameFeatureImageCacheFactory


jclass : String
jclass =
    "PaintableToImageUtil"


jchain : List String
jchain =
    [ "PaintableToImageUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getImage_3", jm_getImage_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PaintableToImageUtil"
        [ ( "jm_getImage_3", jm_getImage_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PaintableToImageUtil" jclinit "instance"
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


jm_getImage_3 : JR.Method
jm_getImage_3 jheap jthis jargs =
    JR.method [ ( "paintableInterface", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.declare "image" "" (JR.invoke "get_3" (JR.callStatic GameFeatureImageCacheFactory.jm_getInstance_0 []) [ (JR.invoke "getName_0" (JR.getClass jstatic_instance) []), (JR.local "width"), (JR.local "height") ]), 
                    JR.declare "graphics" "" (JR.invoke "getGraphics_0" (JR.local "image") []), 
                    JR.exec (JR.invoke "paint_1" (JR.local "paintableInterface") [ (JR.local "graphics") ]), 
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

