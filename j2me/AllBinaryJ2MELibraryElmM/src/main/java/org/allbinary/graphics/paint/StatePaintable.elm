module Org.Allbinary.Graphics.Paint.StatePaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.paint
-}

import JR
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Graphics.Displayable.StateControlledInterface as StateControlledInterface


jclass : String
jclass =
    "StatePaintable"


jchain : List String
jchain =
    [ "StatePaintable" ]
        ++ Paintable.jchain
        ++ StateControlledInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ []


jvtable =
    JR.vtable
        [ ( "setState_1", jm_setState_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StatePaintable"
        [ ( "jm_setState_1", jm_setState_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setState_1 : JR.Method
jm_setState_1 jheap jthis jargs =
    JR.method [ ( "state", "I" ) ] ""
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

