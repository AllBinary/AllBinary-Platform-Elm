module Org.Allbinary.Game.Displayable.Canvas.GameCanvasPaintHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Paint.ProcessPaintable as ProcessPaintable


jclass : String
jclass =
    "GameCanvasPaintHelper"


jchain : List String
jchain =
    [ "GameCanvasPaintHelper" ]
        ++ ProcessPaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    ProcessPaintable.jfields ++ [ ( "gameCanvas", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "process_0", jm_process_0 )
        , ( "paint_1", jm_paint_1 ) ]
        ProcessPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameCanvasPaintHelper"
        [ ( "jm_process_0", jm_process_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "gameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ProcessPaintable.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameCanvas" "" JR.this (JR.local "gameCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "draw_1" (JR.thisField "gameCanvas") [ (JR.local "graphics") ]) ])
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

