module Org.Allbinary.Game.Paint.OwnershipPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "OwnershipPaintable"


jchain : List String
jchain =
    [ "OwnershipPaintable" ]
        ++ Paintable.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "displayInfo", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "COPYRIGHT", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "color", JR.defaultOf "I" ), ( "anchor", JR.defaultOf "I" ), ( "COPYRIGHT_Y", JR.defaultOf "I" ), ( "beginWidth", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "paint_1", jm_paint_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OwnershipPaintable"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "displayInfo" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "COPYRIGHT" "" JR.this (JR.str "AllBinary Copyright (c) 2011")),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "color" "I" JR.this (JR.invoke "intValue_0" (JR.thisField "basicColor") [])),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new jnew_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "COPYRIGHT_Y" "I" JR.this (JR.map2 JR.mul (JR.int 2) (JR.invoke "getHeight_0" (JR.local "font") []))), 
                    JR.exec (JR.setField "beginWidth" "I" JR.this ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.thisField "COPYRIGHT") ]) (JR.int 1)))), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")), 
                    JR.exec (JR.setField "color" "I" JR.this (JR.invoke "intValue_0" (JR.local "basicColor") [])) ])
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


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.thisField "color") ]), 
                    JR.declare "halfWidth" "I" (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfo") []), 
                    JR.declare "height" "I" (JR.invoke "getLastHeight_0" (JR.thisField "displayInfo") []), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "COPYRIGHT"), (JR.map2 JR.sub (JR.local "halfWidth") (JR.thisField "beginWidth")), (JR.map2 JR.sub (JR.local "height") (JR.thisField "COPYRIGHT_Y")), (JR.thisField "anchor") ]) ])
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

