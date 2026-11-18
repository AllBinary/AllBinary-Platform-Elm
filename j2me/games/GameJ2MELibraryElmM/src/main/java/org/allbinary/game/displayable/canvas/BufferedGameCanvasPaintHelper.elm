module Org.Allbinary.Game.Displayable.Canvas.BufferedGameCanvasPaintHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Javax.Microedition.Lcdui.NullCanvas as NullCanvas
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Graphics.Paint.ProcessPaintable as ProcessPaintable


jclass : String
jclass =
    "BufferedGameCanvasPaintHelper"


jchain : List String
jchain =
    [ "BufferedGameCanvasPaintHelper" ]
        ++ ProcessPaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    ProcessPaintable.jfields ++ [ ( "gameCanvas", JR.defaultOf "" ), ( "offScreenImage", JR.defaultOf "" ), ( "previousImage", JR.defaultOf "" ), ( "circularIndexUtil", JR.defaultOf "" ), ( "drawCircularIndexUtil", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "process_0", jm_process_0 )
        , ( "paint_1", jm_paint_1 ) ]
        ProcessPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BufferedGameCanvasPaintHelper"
        [ ( "jm_process_0", jm_process_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_MAX_IMAGES", jstatic_MAX_IMAGES ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MAX_IMAGES : JR.M
jstatic_MAX_IMAGES s =
    JR.static "BufferedGameCanvasPaintHelper" jclinit "MAX_IMAGES"
        (JR.int 4)
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "gameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ProcessPaintable.jinit_0 JR.this []),
                JR.exec (JR.setField "gameCanvas" "" JR.this NullCanvas.jstatic_NULL_CANVAS),
                JR.exec (JR.setField "offScreenImage" "" JR.this (JR.newArray "" [ jstatic_MAX_IMAGES ])),
                JR.exec (JR.setField "previousImage" "" JR.this NullImage.jstatic_NULL_IMAGE),
                JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ jstatic_MAX_IMAGES ])),
                JR.exec (JR.setField "drawCircularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstanceAt_2 [ (JR.map2 JR.sub jstatic_MAX_IMAGES (JR.int 1)), jstatic_MAX_IMAGES ])),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "No Longer Used") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "myCanvas" "" ((JR.thisField "gameCanvas")), 
                    JR.exec (JR.invoke "draw_1" (JR.local "myCanvas") [ (JR.invoke "getGraphics_0" (JR.aget (JR.thisField "offScreenImage") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])) []) ]), 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []), 
                    JR.exec (JR.invoke "next_0" (JR.thisField "drawCircularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "previousImage" "" JR.this (JR.aget (JR.thisField "offScreenImage") (JR.invoke "getIndex_0" (JR.thisField "drawCircularIndexUtil") []))), 
                    JR.exec (JR.invoke "drawImage_4" (JR.local "graphics") [ (JR.thisField "previousImage"), (JR.int 0), (JR.int 0), (JR.thisField "anchor") ]) ])
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

