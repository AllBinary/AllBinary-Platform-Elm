module Org.Allbinary.Graphics.Form.CustomScreen exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Form.CustomDisplayable as CustomDisplayable


jclass : String
jclass =
    "CustomScreen"


jchain : List String
jchain =
    [ "CustomScreen" ]
        ++ CustomDisplayable.jchain


jfields : List ( String, JR.JValue )
jfields =
    CustomDisplayable.jfields ++ []


jvtable =
    JR.vtable
        []
        CustomDisplayable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CustomScreen"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect CustomDisplayable.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

