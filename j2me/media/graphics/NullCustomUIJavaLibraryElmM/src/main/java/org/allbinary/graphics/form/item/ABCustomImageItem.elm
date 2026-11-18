module Org.Allbinary.Graphics.Form.Item.ABCustomImageItem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item
-}

import JR
import Org.Allbinary.Graphics.Form.Item.ABCustomItem as ABCustomItem
import Javax.Microedition.Lcdui.NullImage as NullImage


jclass : String
jclass =
    "ABCustomImageItem"


jchain : List String
jchain =
    [ "ABCustomImageItem" ]
        ++ ABCustomItem.jchain


jfields : List ( String, JR.JValue )
jfields =
    ABCustomItem.jfields ++ [ ( "yOffset", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getImage_0", jm_getImage_0 ) ]
        ABCustomItem.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABCustomImageItem"
        [ ( "jm_getImage_0", jm_getImage_0 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "label", "" ), ( "image", "" ), ( "layout", "I" ), ( "altText", "" ), ( "basicColor", "" ), ( "yOffset", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ABCustomItem.jinit_3 JR.this [ (JR.local "label"), (JR.local "basicColor"), (JR.local "basicColor") ]),
                JR.exec (JR.setField "yOffset" "I" JR.this (JR.int 0)),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


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

