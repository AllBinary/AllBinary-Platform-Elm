module Org.Allbinary.Graphics.Paint.StringLocationPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.paint
-}

import JR
import Org.Allbinary.Graphics.Paint.LocationPaintable as LocationPaintable


jclass : String
jclass =
    "StringLocationPaintable"


jchain : List String
jchain =
    [ "StringLocationPaintable" ]
        ++ LocationPaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    LocationPaintable.jfields ++ [ ( "value", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paintXY_3", jm_paintXY_3 ) ]
        LocationPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StringLocationPaintable"
        [ ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect LocationPaintable.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "value" "" JR.this (JR.local "value")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "value"), (JR.local "x"), (JR.local "y"), (JR.int 0) ]) ])
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

