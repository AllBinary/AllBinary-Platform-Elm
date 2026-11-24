module Org.Allbinary.Game.Displayable.Canvas.BasicPaintablesCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Paint.ColorFillPaintableFactory as ColorFillPaintableFactory
import Org.Allbinary.Game.Displayable.Canvas.GameCommandCanvas as GameCommandCanvas


jclass : String
jclass =
    "BasicPaintablesCanvas"


jchain : List String
jchain =
    [ "BasicPaintablesCanvas" ]
        ++ GameCommandCanvas.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameCommandCanvas.jfields ++ [ ( "paintableArray", JR.defaultOf "" ), ( "colorFillPaintable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 ) ]
        GameCommandCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicPaintablesCanvas"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ), ( "name", "" ), ( "allBinaryGameLayerManager", "" ), ( "paintableArray", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameCommandCanvas.jinit_4 JR.this [ (JR.local "cmdListener"), (JR.local "name"), (JR.invoke "getBackgroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []) ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "paintableArray" "" JR.this (JR.local "paintableArray")), 
                    JR.exec (JR.setField "colorFillPaintable" "" JR.this (JR.invoke "getInstance_2" (JR.callStatic ColorFillPaintableFactory.jm_getInstance_0 []) [ (JR.invoke "getBackgroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []), (JR.bool False) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "colorFillPaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.thisField "foregroundColor") ]), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "paintableArray")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71220 -> (JR.setLocal "index" "I" (JR.lit jwN71220))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.invoke "paint_1" (JR.aget (JR.thisField "paintableArray") (JR.local "index")) [ (JR.local "graphics") ]) ]) ], 
                    JR.exec (JR.callVia GameCommandCanvas.jvtable "paint_1" JR.this [ (JR.local "graphics") ]) ])
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

