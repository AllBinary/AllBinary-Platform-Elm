module Org.Allbinary.Graphics.Form.MultipleScrollSelectionFormRectPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Paint.Paintable as Paintable


jclass : String
jclass =
    "MultipleScrollSelectionFormRectPaintable"


jchain : List String
jchain =
    [ "MultipleScrollSelectionFormRectPaintable" ]
        ++ Paintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "multipleScrollSelectionForm", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MultipleScrollSelectionFormRectPaintable"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "multipleScrollSelectionForm", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "multipleScrollSelectionForm" "" JR.this (JR.local "multipleScrollSelectionForm")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "fillRect_1" (JR.thisField "multipleScrollSelectionForm") [ (JR.local "graphics") ]) ])
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

