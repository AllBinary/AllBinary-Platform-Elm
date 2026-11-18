module Org.Allbinary.Graphics.Form.Item.Validation.PasswordValidator exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form.item.validation
-}

import JR
import Org.Allbinary.Graphics.Form.Item.Validation.TextFieldItemValidator as TextFieldItemValidator


jclass : String
jclass =
    "PasswordValidator"


jchain : List String
jchain =
    [ "PasswordValidator" ]
        ++ TextFieldItemValidator.jchain


jfields : List ( String, JR.JValue )
jfields =
    TextFieldItemValidator.jfields ++ []


jvtable =
    JR.vtable
        []
        TextFieldItemValidator.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PasswordValidator"
        [ ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "textFieldItem", "" ), ( "min", "I" ), ( "max", "I" ), ( "allowOnEmpty", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect TextFieldItemValidator.jinit_4 JR.this [ (JR.local "textFieldItem"), (JR.local "min"), (JR.local "max"), (JR.local "allowOnEmpty") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

