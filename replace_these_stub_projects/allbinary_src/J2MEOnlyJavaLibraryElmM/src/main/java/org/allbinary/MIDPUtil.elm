module Org.Allbinary.MIDPUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary
-}

import JR
import Javax.Microedition.Lcdui.Image as Image
import Javax.Microedition.Media.Manager as Manager


jclass : String
jclass =
    "MIDPUtil"


jchain : List String
jchain =
    [ "MIDPUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createImageWH_2", jm_createImageWH_2 )
        , ( "createImageFromByteArray_3", jm_createImageFromByteArray_3 )
        , ( "createImageFromInputStream_1", jm_createImageFromInputStream_1 )
        , ( "createPlayerFromInputStream_2", jm_createPlayerFromInputStream_2 )
        , ( "appendItem_2", jm_appendItem_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MIDPUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createImageWH_2", jm_createImageWH_2 ), ( "jm_createImageFromByteArray_3", jm_createImageFromByteArray_3 ), ( "jm_createImageFromInputStream_1", jm_createImageFromInputStream_1 ), ( "jm_createPlayerFromInputStream_2", jm_createPlayerFromInputStream_2 ), ( "jm_appendItem_2", jm_appendItem_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MIDPUtil" jclinit "instance"
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


jm_createImageWH_2 : JR.Method
jm_createImageWH_2 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic Image.jm_createImageWH_2 [ (JR.local "width"), (JR.local "height") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createImageFromByteArray_3 : JR.Method
jm_createImageFromByteArray_3 jheap jthis jargs =
    JR.method [ ( "imageData", "" ), ( "imageOffset", "I" ), ( "imageLength", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic Image.jm_createImageFromByteArray_3 [ (JR.local "imageData"), (JR.local "imageOffset"), (JR.local "imageLength") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createImageFromInputStream_1 : JR.Method
jm_createImageFromInputStream_1 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic Image.jm_createImage_1 [ (JR.local "inputStream") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createPlayerFromInputStream_2 : JR.Method
jm_createPlayerFromInputStream_2 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ), ( "type", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic Manager.jm_createPlayerFromInputStream_2 [ (JR.local "inputStream"), (JR.local "type") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_appendItem_2 : JR.Method
jm_appendItem_2 jheap jthis jargs =
    JR.method [ ( "form", "" ), ( "item", "" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "append_1" (JR.local "form") [ (JR.local "item") ]) ])
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

