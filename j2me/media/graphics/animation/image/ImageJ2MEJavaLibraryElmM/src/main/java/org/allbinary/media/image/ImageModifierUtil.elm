module Org.Allbinary.Media.Image.ImageModifierUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR



jclass : String
jclass =
    "ImageModifierUtil"


jchain : List String
jchain =
    [ "ImageModifierUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstanceOrCreate_0", jm_getInstanceOrCreate_0 )
        , ( "setColor_4", jm_setColor_4 )
        , ( "changeColor_4", jm_changeColor_4 )
        , ( "setAlpha_4", jm_setAlpha_4 )
        , ( "getImageArray_1", jm_getImageArray_1 )
        , ( "handleImage_3", jm_handleImage_3 )
        , ( "reset_0", jm_reset_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageModifierUtil"
        [ ( "jm_getInstanceOrCreate_0", jm_getInstanceOrCreate_0 ), ( "jm_setColor_4", jm_setColor_4 ), ( "jm_changeColor_4", jm_changeColor_4 ), ( "jm_setAlpha_4", jm_setAlpha_4 ), ( "jm_getImageArray_1", jm_getImageArray_1 ), ( "jm_handleImage_3", jm_handleImage_3 ), ( "jm_reset_0", jm_reset_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageModifierUtil" jclinit "instance"
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


jm_getInstanceOrCreate_0 : JR.Method
jm_getInstanceOrCreate_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_setColor_4 : JR.Method
jm_setColor_4 jheap jthis jargs =
    JR.method [ ( "unusedOriginalImage", "" ), ( "image", "" ), ( "imageIndex", "I" ), ( "basicColor", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_changeColor_4 : JR.Method
jm_changeColor_4 jheap jthis jargs =
    JR.method [ ( "unusedOriginalImage", "" ), ( "image", "" ), ( "imageIndex", "I" ), ( "basicColor", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setAlpha_4 : JR.Method
jm_setAlpha_4 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ), ( "image", "" ), ( "imageIndex", "I" ), ( "alphaInt", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getImageArray_1 : JR.Method
jm_getImageArray_1 jheap jthis jargs =
    JR.method [ ( "originalImageArray", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.local "originalImageArray") ])
        (jregister jheap)
        jthis
        jargs


jm_handleImage_3 : JR.Method
jm_handleImage_3 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ), ( "index", "I" ), ( "image", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_reset_0 : JR.Method
jm_reset_0 jheap jthis jargs =
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

