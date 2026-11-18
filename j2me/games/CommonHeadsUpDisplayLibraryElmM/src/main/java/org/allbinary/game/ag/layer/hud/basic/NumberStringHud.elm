module Org.Allbinary.Game.Ag.Layer.Hud.Basic.NumberStringHud exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic
-}

import JR
import Org.Allbinary.Game.Graphics.Hud.BasicHud as BasicHud
import Org.Allbinary.Game.Graphics.Hud.BasicHudFactory as BasicHudFactory
import Org.Allbinary.Graphics.Font.MyFontProcessor as MyFontProcessor
import Org.Allbinary.Graphics.Paint.PaintableInterface as PaintableInterface
import Org.Allbinary.Logic.Math.PrimitiveLongSingleton as PrimitiveLongSingleton
import Org.Allbinary.Logic.Math.PrimitiveLongUtil as PrimitiveLongUtil


jclass : String
jclass =
    "NumberStringHud"


jchain : List String
jchain =
    [ "NumberStringHud" ]
        ++ BasicHud.jchain
        ++ PaintableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicHud.jfields ++ [ ( "primitiveLongUtil", JR.defaultOf "" ), ( "prependString", JR.defaultOf "" ), ( "PREPEND_STRING", JR.defaultOf "" ), ( "value", JR.defaultOf "I" ), ( "max", JR.defaultOf "I" ), ( "offset", JR.defaultOf "I" ), ( "valueString", JR.defaultOf "" ), ( "valueTotalDigits", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "get_0", jm_get_0 )
        , ( "add_1", jm_add_1 )
        , ( "set_1", jm_set_1 )
        , ( "reduce_1", jm_reduce_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paintThreed_1", jm_paintThreed_1 ) ]
        BasicHud.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NumberStringHud"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_get_0", jm_get_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_set_1", jm_set_1 ), ( "jm_reduce_1", jm_reduce_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "prependString", "" ), ( "max", "I" ), ( "location", "I" ), ( "direction", "I" ), ( "bufferZone", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicHud.jinit_4 JR.this [ (JR.local "location"), (JR.local "direction"), (JR.local "bufferZone"), (JR.local "basicColor") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "prependString" "" JR.this (JR.local "prependString")), 
                    JR.exec (JR.setField "PREPEND_STRING" "" JR.this (JR.invoke "toCharArray_0" (JR.local "prependString") [])), 
                    JR.exec (JR.setField "valueString" "" JR.this (JR.aget (JR.field "NUMBER_CHAR_ARRAYS" (JR.callStatic PrimitiveLongSingleton.jm_getInstance_0 [])) (JR.int 0))), 
                    JR.exec (JR.setField "primitiveLongUtil" "" JR.this (JR.callStatic PrimitiveLongUtil.jm_createPowerOfTen_1 [ (JR.map2 JR.add (JR.local "max") (JR.int 1)) ])), 
                    JR.exec (JR.setField "max" "I" JR.this (JR.local "max")), 
                    JR.exec (JR.setField "value" "I" JR.this (JR.int 0)), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "direction") (JR.int 0)) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) [ (JR.field "DIRECTION_EXCEPTION" (JR.callStatic BasicHudFactory.jm_getInstance_0 [])) ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "offset" "I" JR.this (JR.plus (JR.invoke "stringWidth_1" (JR.local "font") [ (JR.thisField "prependString") ]) (JR.callStatic MyFontProcessor.jm_defaultCharWidth_1 [ (JR.local "font") ]))), 
                    JR.exec (JR.callVia BasicHud.jvtable "updateMeasurement_1" JR.this [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "value") ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "set_1" JR.this [ (JR.map2 JR.add (JR.thisField "value") (JR.local "value")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "value" "I" JR.this (JR.local "value")), 
                    JR.ifElse (JR.map2 JR.greater (JR.thisField "value") (JR.thisField "max")) (JR.run [ 
                        JR.exec (JR.setField "value" "I" JR.this (JR.int 0)) ]) identity, 
                    JR.exec (JR.setField "valueString" "" JR.this (JR.invoke "getCharArray_1" (JR.thisField "primitiveLongUtil") [ (JR.thisField "value") ])), 
                    JR.exec (JR.setField "valueTotalDigits" "I" JR.this (JR.invoke "getCurrentTotalDigits_0" (JR.thisField "primitiveLongUtil") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_reduce_1 : JR.Method
jm_reduce_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "set_1" JR.this [ (JR.map2 JR.sub (JR.thisField "value") (JR.local "value")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicHud.jvtable "paintDX_8" JR.this [ (JR.local "graphics"), (JR.thisField "PREPEND_STRING"), (JR.int 0), (JR.alength (JR.thisField "PREPEND_STRING")), (JR.thisField "valueString"), (JR.int 0), (JR.thisField "valueTotalDigits"), (JR.thisField "offset") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.declare "charArray" "" (JR.thisField "PREPEND_STRING"), 
                    JR.declare "len" "I" (JR.alength (JR.thisField "PREPEND_STRING")), 
                    JR.declare "charArray2" "" (JR.thisField "valueString"), 
                    JR.declare "len2" "I" (JR.thisField "valueTotalDigits"), 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []) ]), 
                    JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.local "charArray"), (JR.int 0), (JR.local "len"), (JR.local "x"), (JR.local "y"), (JR.int 0) ]), 
                    JR.exec (JR.invoke "drawChars_6" (JR.local "graphics") [ (JR.local "charArray2"), (JR.int 0), (JR.local "len2"), (JR.map2 JR.sub (JR.local "x") (JR.thisField "offset")), (JR.local "y"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
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

