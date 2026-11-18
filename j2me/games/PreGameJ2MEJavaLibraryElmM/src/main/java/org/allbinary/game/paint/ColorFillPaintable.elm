module Org.Allbinary.Game.Paint.ColorFillPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint
-}

import JR
import Org.Allbinary.Game.Paint.ColorFillBasePaintable as ColorFillBasePaintable
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton


jclass : String
jclass =
    "ColorFillPaintable"


jchain : List String
jchain =
    [ "ColorFillPaintable" ]
        ++ ColorFillBasePaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    ColorFillBasePaintable.jfields ++ [ ( "displayInfoSingleton", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 ) ]
        ColorFillBasePaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ColorFillPaintable"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ColorFillBasePaintable.jinit_1 JR.this [ (JR.local "basicColor") ]),
                JR.exec (JR.setField "displayInfoSingleton" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                identity,
                identity ])
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
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.thisField "colorP") ]), 
                    JR.exec (JR.invoke "fillRect_4" (JR.local "graphics") [ (JR.int 0), (JR.int 0), (JR.invoke "getLastWidth_0" (JR.thisField "displayInfoSingleton") []), (JR.invoke "getLastHeight_0" (JR.thisField "displayInfoSingleton") []) ]) ])
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

