module Org.Allbinary.Game.Paint.Help.HelpPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint.help
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.Paint.Paintable as Paintable
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Graphics.Font.UpdateMyFontInterface as UpdateMyFontInterface
import Org.Allbinary.Graphics.Font.UpdateMyFontProcessor as UpdateMyFontProcessor


jclass : String
jclass =
    "HelpPaintable"


jchain : List String
jchain =
    [ "HelpPaintable" ]
        ++ Paintable.jchain
        ++ UpdateMyFontInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "displayInfo", JR.defaultOf "" ), ( "updateMyFontProcessor", JR.defaultOf "" ), ( "myFontProcessor", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ), ( "title", JR.defaultOf "" ), ( "inputInfo", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "titleBeginWidth", JR.defaultOf "I" ), ( "beginWidthArray", JR.defaultOf "" ), ( "charHeight", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "setInputInfoP_1", jm_setInputInfoP_1 )
        , ( "paint_1", jm_paint_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HelpPaintable"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_setInputInfoP_1", jm_setInputInfoP_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "title", "" ), ( "backgroundBasicColor", "" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "displayInfo" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "updateMyFontProcessor" "" JR.this (JR.new UpdateMyFontProcessor.jnew_1 [ JR.this ])),
                JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                JR.exec (JR.setField "inputInfo" "" JR.this (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) [])),
                JR.exec (JR.setField "beginWidthArray" "" JR.this (JR.field "NULL_INT_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "title" "" JR.this (JR.local "title")), 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "titleBeginWidth" "I" JR.this ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.thisField "title") ]) (JR.int 1)))), 
                    JR.exec (JR.setField "charHeight" "I" JR.this (JR.invoke "getHeight_0" (JR.local "font") [])), 
                    JR.declare "size" "I" (JR.alength (JR.thisField "inputInfo")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68587 -> (JR.setLocal "index" "I" (JR.lit jwN68587))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "beginWidthArray") (\jaN68452 -> JR.andThen (JR.local "index") (\jiN68452 -> (JR.aset (JR.lit jaN68452) (JR.lit jiN68452) ((JR.map2 JR.shr (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.aget (JR.thisField "inputInfo") (JR.local "index")) ]) (JR.int 1))))))) ]) ], 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.callStatic MyFontProcessor.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_setInputInfoP_1 : JR.Method
jm_setInputInfoP_1 jheap jthis jargs =
    JR.method [ ( "inputInfo", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "inputInfo" "" JR.this (JR.local "inputInfo")), 
                    JR.exec (JR.setField "beginWidthArray" "" JR.this (JR.newArray "I" [ (JR.alength (JR.thisField "inputInfo")) ])), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "halfWidth" "I" (JR.invoke "getLastHalfWidth_0" (JR.thisField "displayInfo") []), 
                    JR.exec (JR.invoke "setColor_1" (JR.local "graphics") [ (JR.invoke "intValue_0" (JR.thisField "basicColor") []) ]), 
                    JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.thisField "title"), (JR.map2 JR.sub (JR.local "halfWidth") (JR.thisField "titleBeginWidth")), (JR.thisField "charHeight"), (JR.thisField "anchor") ]), 
                    JR.declare "size" "I" (JR.alength (JR.thisField "inputInfo")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69318 -> (JR.setLocal "index" "I" (JR.lit jwN69318))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "drawString_4" (JR.local "graphics") [ (JR.aget (JR.thisField "inputInfo") (JR.local "index")), (JR.map2 JR.sub (JR.local "halfWidth") (JR.aget (JR.thisField "beginWidthArray") (JR.local "index"))), (JR.map2 JR.mul ((JR.map2 JR.add (JR.local "index") (JR.int 3))) (JR.thisField "charHeight")), (JR.thisField "anchor") ]) ]) ] ])
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

