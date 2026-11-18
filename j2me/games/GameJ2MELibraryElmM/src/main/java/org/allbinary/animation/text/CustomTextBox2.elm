module Org.Allbinary.Animation.Text.CustomTextBox2 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.text
-}

import JR
import Org.Allbinary.Graphics.Form.Item.CustomTextBox as CustomTextBox


jclass : String
jclass =
    "CustomTextBox2"


jchain : List String
jchain =
    [ "CustomTextBox2" ]
        ++ CustomTextBox.jchain


jfields : List ( String, JR.JValue )
jfields =
    CustomTextBox.jfields ++ []


jvtable =
    JR.vtable
        []
        CustomTextBox.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CustomTextBox2"
        [ ( "jnew_8", jnew_8 ), ( "jinit_8", jinit_8 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_8 : JR.Method
jinit_8 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ), ( "label", "" ), ( "text", "" ), ( "maxSize", "I" ), ( "constraints", "I" ), ( "font", "" ), ( "backgroundBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CustomTextBox.jinit_8 JR.this [ (JR.local "cmdListener"), (JR.local "label"), (JR.local "text"), (JR.local "maxSize"), (JR.local "constraints"), (JR.local "font"), (JR.local "backgroundBasicColor"), (JR.local "foregroundBasicColor") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setFocus_1" (JR.invoke "getTextFieldItem_0" JR.this []) [ (JR.bool True) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_8 : JR.Method
jnew_8 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_8 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

