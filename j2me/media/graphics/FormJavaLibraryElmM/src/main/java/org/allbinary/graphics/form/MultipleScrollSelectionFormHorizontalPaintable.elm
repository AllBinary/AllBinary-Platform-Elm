module Org.Allbinary.Graphics.Form.MultipleScrollSelectionFormHorizontalPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Graphics.Form.ItemIndexPaintable as ItemIndexPaintable


jclass : String
jclass =
    "MultipleScrollSelectionFormHorizontalPaintable"


jchain : List String
jchain =
    [ "MultipleScrollSelectionFormHorizontalPaintable" ]
        ++ ItemIndexPaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    ItemIndexPaintable.jfields ++ [ ( "multipleScrollSelectionForm", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paint_5", jm_paint_5 ) ]
        ItemIndexPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MultipleScrollSelectionFormHorizontalPaintable"
        [ ( "jm_paint_5", jm_paint_5 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "multipleScrollSelectionForm", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ItemIndexPaintable.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "multipleScrollSelectionForm" "" JR.this (JR.local "multipleScrollSelectionForm")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_paint_5 : JR.Method
jm_paint_5 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "index", "I" ), ( "item", "" ), ( "dx", "I" ), ( "dy", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "paintHorizontal_5" (JR.thisField "multipleScrollSelectionForm") [ (JR.local "graphics"), (JR.local "index"), (JR.local "item"), (JR.local "dx"), (JR.local "dy") ]) ])
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

