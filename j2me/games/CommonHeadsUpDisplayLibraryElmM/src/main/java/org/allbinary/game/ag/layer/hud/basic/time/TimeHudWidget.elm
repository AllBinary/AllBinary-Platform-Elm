module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Time.TimeHudWidget exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.time
-}

import JR
import Org.Allbinary.Game.Graphics.Hud.BasicHud as BasicHud
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Logic.Math.PrimitiveLongSingleton as PrimitiveLongSingleton


jclass : String
jclass =
    "TimeHudWidget"


jchain : List String
jchain =
    [ "TimeHudWidget" ]
        ++ BasicHud.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicHud.jfields ++ [ ( "TIME_STRING", JR.defaultOf "" ), ( "TIME_CHAR_ARRAY", JR.defaultOf "" ), ( "offset", JR.defaultOf "I" ), ( "string", JR.defaultOf "" ), ( "totalDigits", JR.defaultOf "I" ), ( "timer", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_4", jm_getInstance_4 )
        , ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "update_0", jm_update_0 )
        , ( "set_0", jm_set_0 )
        , ( "getTimer_0", jm_getTimer_0 )
        , ( "paint_1", jm_paint_1 ) ]
        BasicHud.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TimeHudWidget"
        [ ( "jm_getInstance_4", jm_getInstance_4 ), ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_update_0", jm_update_0 ), ( "jm_set_0", jm_set_0 ), ( "jm_getTimer_0", jm_getTimer_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "location", "I" ), ( "direction", "I" ), ( "bufferZone", "I" ), ( "basicColor", "" ), ( "timer", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicHud.jinit_4 JR.this [ (JR.local "location"), (JR.local "direction"), (JR.local "bufferZone"), (JR.local "basicColor") ]),
                JR.exec (JR.setField "TIME_STRING" "" JR.this (JR.str "Time ")),
                JR.exec (JR.setField "TIME_CHAR_ARRAY" "" JR.this (JR.arrayOf "C" [ (JR.char 84), (JR.char 105), (JR.char 109), (JR.char 101), (JR.char 32) ])),
                JR.exec (JR.setField "string" "" JR.this (JR.field "ZERO" (JR.callStatic PrimitiveLongSingleton.jm_getInstance_0 []))),
                JR.exec (JR.setField "totalDigits" "I" JR.this (JR.int 1)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "timer" "" JR.this (JR.local "timer")), 
                    JR.exec (JR.invoke "set_0" JR.this []), 
                    JR.exec (JR.setField "updateMaxHeight" "" JR.this (JR.int 14)) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_getInstance_4 : JR.Method
jm_getInstance_4 jheap jthis jargs =
    JR.method [ ( "location", "I" ), ( "direction", "I" ), ( "basicColor", "" ), ( "timer", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_5 [ (JR.local "location"), (JR.local "direction"), (JR.int 2), (JR.local "basicColor"), (JR.local "timer") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "updateMaxWidth" "" JR.this (JR.map2 JR.mul (JR.invoke "getSize_0" (JR.local "font") []) (JR.int 5))), 
                    JR.exec (JR.setField "offset" "I" JR.this (JR.plus (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.thisField "TIME_STRING") ]) (JR.callStatic MyFontProcessor.jm_defaultStringWidth_2 [ (JR.local "font"), (JR.int 3) ]))), 
                    JR.exec (JR.callVia BasicHud.jvtable "updateMeasurement_1" JR.this [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "update_0" (JR.thisField "timer") []), 
                    JR.exec (JR.invoke "set_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_set_0 : JR.Method
jm_set_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "string" "" JR.this (JR.invoke "getTimeChars_0" (JR.thisField "timer") [])), 
                    JR.exec (JR.setField "totalDigits" "I" JR.this (JR.invoke "getCurrentTotalDigits_0" (JR.thisField "timer") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getTimer_0 : JR.Method
jm_getTimer_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "timer") ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicHud.jvtable "paintDX_8" JR.this [ (JR.local "graphics"), (JR.thisField "TIME_CHAR_ARRAY"), (JR.int 0), (JR.alength (JR.thisField "TIME_CHAR_ARRAY")), (JR.thisField "string"), (JR.int 0), (JR.thisField "totalDigits"), (JR.thisField "offset") ]) ])
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

