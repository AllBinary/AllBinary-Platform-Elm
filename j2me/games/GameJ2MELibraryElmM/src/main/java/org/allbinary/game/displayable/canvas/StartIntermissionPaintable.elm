module Org.Allbinary.Game.Displayable.Canvas.StartIntermissionPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.BasicColorSetUtil as BasicColorSetUtil
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.Font.FontDebugFactory as FontDebugFactory
import Org.Allbinary.Graphics.Paint.InitUpdatePaintable as InitUpdatePaintable
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "StartIntermissionPaintable"


jchain : List String
jchain =
    [ "StartIntermissionPaintable" ]
        ++ InitUpdatePaintable.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    InitUpdatePaintable.jfields ++ [ ( "fontDebugFactory", JR.defaultOf "" ), ( "basicSetColorUtil", JR.defaultOf "" ), ( "gameCanvas", JR.defaultOf "" ), ( "stringArray", JR.defaultOf "" ), ( "fontSize", JR.defaultOf "I" ), ( "font", JR.defaultOf "" ), ( "lastWidth", JR.defaultOf "" ), ( "updateMyFontProcessor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "color", JR.defaultOf "I" ), ( "lineYOffsetArray", JR.defaultOf "" ), ( "hasChanged", JR.defaultOf "Z" ), ( "anchor", JR.defaultOf "I" ), ( "fontHeightP", JR.defaultOf "I" ), ( "BEGIN_LEVEL", JR.defaultOf "" ), ( "EMPTY_STRING", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "update_0", jm_update_0 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 ) ]
        InitUpdatePaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StartIntermissionPaintable"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_update_0", jm_update_0 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "gameCanvas", "" ), ( "stringArray", "" ), ( "basicColor", "" ), ( "font", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect InitUpdatePaintable.jinit_0 JR.this []),
                JR.exec (JR.setField "fontDebugFactory" "" JR.this (JR.callStatic FontDebugFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicSetColorUtil" "" JR.this (JR.callStatic BasicColorSetUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "updateMyFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "lineYOffsetArray" "" JR.this (JR.field "NULL_INT_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "hasChanged" "Z" JR.this (JR.bool True)),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                JR.exec (JR.setField "BEGIN_LEVEL" "" JR.this (JR.str "Begin Level ")),
                JR.exec (JR.setField "EMPTY_STRING" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "gameCanvas" "" JR.this (JR.local "gameCanvas")), 
                    JR.exec (JR.setField "stringArray" "" JR.this (JR.local "stringArray")), 
                    JR.exec (JR.setField "lastWidth" "" JR.this (JR.newArray "I" [ (JR.alength (JR.thisField "stringArray")) ])), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.exec (JR.setField "color" "I" JR.this (JR.invoke "intValue_0" (JR.local "basicColor") [])), 
                    JR.exec (JR.setField "fontSize" "I" JR.this (JR.invoke "getSize_0" (JR.local "font") [])), 
                    JR.exec (JR.setField "font" "" JR.this (JR.local "font")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "fontHeightP" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "existingFont" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.invoke "setFont_2" (JR.thisField "fontDebugFactory") [ (JR.thisField "font"), (JR.local "graphics") ]), 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "setBasicColorP3_3" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.thisField "basicColor"), (JR.thisField "color") ]), 
                    JR.declare "beginWidth" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "lineYOffsetArray")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN75719 -> (JR.setLocal "index" "I" (JR.lit jwN75719))) JR.decrement) ]) (JR.run [ 
                        JR.ifElse (JR.thisField "hasChanged") (JR.run [ 
                            JR.exec (JR.andThen (JR.thisField "lastWidth") (\jaN75383 -> JR.andThen (JR.local "index") (\jiN75383 -> (JR.aset (JR.lit jaN75383) (JR.lit jiN75383) ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.invoke "getFont_0" (JR.local "graphics") []) [ (JR.aget (JR.thisField "stringArray") (JR.local "index")) ]) (JR.int 1))))))) ]) identity, 
                        JR.exec (JR.setLocal "beginWidth" "I" (JR.aget (JR.thisField "lastWidth") (JR.local "index"))), 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.aget (JR.thisField "stringArray") (JR.local "index")), (JR.map2 JR.sub (JR.invoke "getLastHalfWidth_0" (JR.local "displayInfo") []) (JR.local "beginWidth")), (JR.map2 JR.sub (JR.invoke "getLastHalfHeight_0" (JR.local "displayInfo") []) (JR.aget (JR.thisField "lineYOffsetArray") (JR.local "index"))), (JR.thisField "anchor") ]) ]) ], 
                    JR.exec (JR.setField "hasChanged" "Z" JR.this (JR.bool False)), 
                    JR.exec (JR.invoke "setFont_2" (JR.thisField "fontDebugFactory") [ (JR.local "existingFont"), (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "level" "I" (JR.invoke "getCurrentLevel_0" (JR.invoke "getGameInfo_0" (JR.invoke "getLayerManager_0" (JR.thisField "gameCanvas") []) []) []), 
                    JR.exec (JR.andThen (JR.thisField "stringArray") (\jaN76013 -> JR.andThen (JR.int 0) (\jiN76013 -> (JR.aset (JR.lit jaN76013) (JR.lit jiN76013) (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "BEGIN_LEVEL") ]) [ (JR.local "level") ]) []))))), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "stringArray")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 1)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN76221 -> (JR.setLocal "index" "I" (JR.lit jwN76221))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "stringArray") (\jaN76110 -> JR.andThen (JR.local "index") (\jiN76110 -> (JR.aset (JR.lit jaN76110) (JR.lit jiN76110) (JR.thisField "EMPTY_STRING"))))) ]) ] ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

