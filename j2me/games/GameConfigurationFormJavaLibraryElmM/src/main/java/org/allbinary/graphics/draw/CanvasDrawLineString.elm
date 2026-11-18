module Org.Allbinary.Graphics.Draw.CanvasDrawLineString exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.draw
-}

import JR
import Org.Allbinary.Graphics.Draw.DrawStringUtil as DrawStringUtil
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "CanvasDrawLineString"


jchain : List String
jchain =
    [ "CanvasDrawLineString" ]
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "drawStringUtil", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "x", JR.defaultOf "I" ), ( "y", JR.defaultOf "I" ), ( "fontHeight", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "paint_3", jm_paint_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CanvasDrawLineString"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_paint_3", jm_paint_3 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_CANVAS_DRAW_LINE_STRING", jstatic_NULL_CANVAS_DRAW_LINE_STRING ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_CANVAS_DRAW_LINE_STRING : JR.M
jstatic_NULL_CANVAS_DRAW_LINE_STRING s =
    JR.static "CanvasDrawLineString" jclinit "NULL_CANVAS_DRAW_LINE_STRING"
        (JR.new jnew_2 [ (JR.int 0), (JR.int 0) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "drawStringUtil" "" JR.this (JR.callStatic DrawStringUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "fontHeight" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "x" "I" JR.this (JR.local "x")), 
                    JR.exec (JR.setField "y" "I" JR.this (JR.local "y")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "fontHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_3 : JR.Method
jm_paint_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "string", "" ), ( "line", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "drawCenterString_6" (JR.thisField "drawStringUtil") [ (JR.local "graphics"), (JR.local "string"), (JR.int 0), (JR.invoke "length_0" (JR.local "string") []), (JR.thisField "x"), (JR.map2 JR.add (JR.thisField "y") ((JR.map2 JR.mul (JR.local "line") (JR.thisField "fontHeight")))) ]) ])
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

