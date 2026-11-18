module Org.Allbinary.Game.Paint.PressStartMenuPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.AppletUtil as AppletUtil
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Input.Motion.Button.TouchScreenFactory as TouchScreenFactory
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "PressStartMenuPaintable"


jchain : List String
jchain =
    [ "PressStartMenuPaintable" ]
        ++ Paintable.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "displayInfo", JR.defaultOf "" ), ( "PRESS_START", JR.defaultOf "" ), ( "KEY_START", JR.defaultOf "" ), ( "MENU_START", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "startString", JR.defaultOf "" ), ( "timeDelayHelper", JR.defaultOf "" ), ( "flash", JR.defaultOf "Z" ), ( "anchor", JR.defaultOf "I" ), ( "beginWidth", JR.defaultOf "I" ), ( "line", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "setFlash_1", jm_setFlash_1 )
        , ( "isFlash_0", jm_isFlash_0 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PressStartMenuPaintable"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_setFlash_1", jm_setFlash_1 ), ( "jm_isFlash_0", jm_isFlash_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "displayInfo" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "PRESS_START" "" JR.this (JR.str "Press Screen To Start")),
                JR.exec (JR.setField "KEY_START" "" JR.this (JR.str "Press or Click F2 To Begin")),
                JR.exec (JR.setField "MENU_START" "" JR.this (JR.str "Press Start From The Menu To Begin")),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "startString" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 1100) ])),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.invoke "isTouch_0" (JR.callStatic TouchScreenFactory.jm_getInstance_0 []) []) (JR.run [ 
                        JR.exec (JR.setField "startString" "" JR.this (JR.thisField "PRESS_START")) ]) (JR.run [ 
                    JR.ifElse (JR.callStatic AppletUtil.jm_isAppletLoader_1 [ JR.this ]) (JR.run [ 
                        JR.exec (JR.setField "startString" "" JR.this (JR.thisField "KEY_START")) ]) (JR.run [ 
                        JR.exec (JR.setField "startString" "" JR.this (JR.thisField "MENU_START")) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "beginWidth" "I" JR.this ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.invoke "getFont_0" (JR.local "graphics") []) [ (JR.thisField "startString") ]) (JR.int 1)))), 
                    JR.exec (JR.setField "line" "I" JR.this (JR.plus ((JR.map2 JR.mul (JR.int 4) (JR.callStatic MyFontProcessor.jm_defaultCharWidth_1 [ (JR.local "font") ]))) ((JR.map2 JR.shr (JR.invoke "getHeight_0" (JR.local "font") []) (JR.int 1))))), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "timeDelayHelper") []) (JR.run [ 
                        JR.ifElse (JR.invoke "isFlash_0" JR.this []) (JR.run [ 
                            JR.exec (JR.invoke "setFlash_1" JR.this [ (JR.bool False) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "setFlash_1" JR.this [ (JR.bool True) ]) ]) ]) identity, 
                    JR.ifElse (JR.invoke "isFlash_0" JR.this []) (JR.run [ 
                        JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "startString"), (JR.map2 JR.sub (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfo") []) (JR.thisField "beginWidth")), (JR.map2 JR.sub (JR.invoke "getLastHeight_0" (JR.thisField "displayInfo") []) (JR.thisField "line")), (JR.thisField "anchor") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setFlash_1 : JR.Method
jm_setFlash_1 jheap jthis jargs =
    JR.method [ ( "flash", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "flash" "Z" JR.this (JR.local "flash")) ])
        (jregister jheap)
        jthis
        jargs


jm_isFlash_0 : JR.Method
jm_isFlash_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "flash") ])
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

