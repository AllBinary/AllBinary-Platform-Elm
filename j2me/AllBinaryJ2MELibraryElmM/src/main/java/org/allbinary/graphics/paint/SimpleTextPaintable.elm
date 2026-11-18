module Org.Allbinary.Graphics.Paint.SimpleTextPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.paint
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "SimpleTextPaintable"


jchain : List String
jchain =
    [ "SimpleTextPaintable" ]
        ++ Paintable.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "displayInfoSingleton", JR.defaultOf "" ), ( "updateMyFontProcessor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "text", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "topScoresWidth", JR.defaultOf "I" ), ( "fontHeight", JR.defaultOf "I" ), ( "anchor", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "setText_1", jm_setText_1 )
        , ( "getText_0", jm_getText_0 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SimpleTextPaintable"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_setText_1", jm_setText_1 ), ( "jm_getText_0", jm_getText_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "text", "" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "displayInfoSingleton" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "updateMyFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")),
                JR.exec (JR.setField "topScoresWidth" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "fontHeight" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "text" "" JR.this (JR.local "text")), 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")) ]) ])
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
                    JR.exec (JR.setField "topScoresWidth" "I" JR.this ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.thisField "text") ]) (JR.int 1)))), 
                    JR.exec (JR.setField "fontHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "width" "I" (JR.aget (JR.invoke "getLast_0" (JR.thisField "displayInfoSingleton") []) (JR.field "WIDTH" (JR.thisField "displayInfoSingleton"))), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.invoke "getBasicColorP_0" JR.this []) []) ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "text"), (JR.map2 JR.sub ((JR.map2 JR.shr (JR.local "width") (JR.int 1))) (JR.thisField "topScoresWidth")), (JR.thisField "fontHeight"), (JR.thisField "anchor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicColor") ])
        (jregister jheap)
        jthis
        jargs


jm_setText_1 : JR.Method
jm_setText_1 jheap jthis jargs =
    JR.method [ ( "text", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "text" "" JR.this (JR.local "text")), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getText_0 : JR.Method
jm_getText_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "text") ])
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

