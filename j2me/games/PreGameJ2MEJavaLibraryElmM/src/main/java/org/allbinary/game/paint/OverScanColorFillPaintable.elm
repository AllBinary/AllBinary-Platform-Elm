module Org.Allbinary.Game.Paint.OverScanColorFillPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint
-}

import JR
import Org.Allbinary.Game.Paint.ColorFillPaintable as ColorFillPaintable


jclass : String
jclass =
    "OverScanColorFillPaintable"


jchain : List String
jchain =
    [ "OverScanColorFillPaintable" ]
        ++ ColorFillPaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    ColorFillPaintable.jfields ++ []


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 ) ]
        ColorFillPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OverScanColorFillPaintable"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ColorFillPaintable.jinit_1 JR.this [ (JR.local "basicColor") ]),
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
                    JR.exec (JR.invoke "fillRect_4" (JR.local "graphics") [ (JR.map JR.neg (JR.invoke "getClipX_0" (JR.local "graphics") [])), (JR.map JR.neg (JR.invoke "getClipY_0" (JR.local "graphics") [])), (JR.plus (JR.invoke "getLastWidth_0" (JR.thisField "displayInfoSingleton") []) ((JR.map2 JR.mul (JR.invoke "getClipX_0" (JR.local "graphics") []) (JR.int 2)))), (JR.plus (JR.invoke "getLastHeight_0" (JR.thisField "displayInfoSingleton") []) ((JR.map2 JR.mul (JR.invoke "getClipY_0" (JR.local "graphics") []) (JR.int 2)))) ]) ])
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

