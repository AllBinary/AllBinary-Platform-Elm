module Org.Allbinary.Image.ImageFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image
-}

import JR
import Javax.Microedition.Lcdui.Image as Image
import Org.Allbinary.MIDPUtil as MIDPUtil


jclass : String
jclass =
    "ImageFactory"


jchain : List String
jchain =
    [ "ImageFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createImageUrl_1", jm_createImageUrl_1 )
        , ( "createImage_3", jm_createImage_3 )
        , ( "createImageFromInputStream_2", jm_createImageFromInputStream_2 )
        , ( "createImageFromInputStream_1", jm_createImageFromInputStream_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createImageUrl_1", jm_createImageUrl_1 ), ( "jm_createImage_3", jm_createImage_3 ), ( "jm_createImageFromInputStream_2", jm_createImageFromInputStream_2 ), ( "jm_createImageFromInputStream_1", jm_createImageFromInputStream_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageFactory" jclinit "instance"
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_createImageUrl_1 : JR.Method
jm_createImageUrl_1 jheap jthis jargs =
    JR.method [ ( "url", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic Image.jm_createImage_1 [ (JR.local "url") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createImage_3 : JR.Method
jm_createImage_3 jheap jthis jargs =
    JR.method [ ( "caller", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "createImageWH_2" (JR.callStatic MIDPUtil.jm_getInstance_0 []) [ (JR.local "width"), (JR.local "height") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createImageFromInputStream_2 : JR.Method
jm_createImageFromInputStream_2 jheap jthis jargs =
    JR.method [ ( "key", "" ), ( "inputStream", "" ) ] ""
        (JR.run [ 
                    JR.declare "image" "" (JR.invoke "createImageFromInputStream_1" (JR.callStatic MIDPUtil.jm_getInstance_0 []) [ (JR.local "inputStream") ]), 
                    JR.return (JR.local "image") ])
        (jregister jheap)
        jthis
        jargs


jm_createImageFromInputStream_1 : JR.Method
jm_createImageFromInputStream_1 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "createImageFromInputStream_1" (JR.callStatic MIDPUtil.jm_getInstance_0 []) [ (JR.local "inputStream") ]) ])
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

