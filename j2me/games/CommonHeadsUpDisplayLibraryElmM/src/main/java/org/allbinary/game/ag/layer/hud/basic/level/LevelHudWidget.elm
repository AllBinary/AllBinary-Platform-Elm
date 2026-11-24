module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Level.LevelHudWidget exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.level
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Game.Graphics.Hud.BasicHud as BasicHud
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.Paint.PaintableInterface as PaintableInterface
import Org.Allbinary.Logic.Math.PrimitiveLongUtil as PrimitiveLongUtil


jclass : String
jclass =
    "LevelHudWidget"


jchain : List String
jchain =
    [ "LevelHudWidget" ]
        ++ BasicHud.jchain
        ++ PaintableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicHud.jfields ++ [ ( "level", JR.defaultOf "I" ), ( "maxlevel", JR.defaultOf "I" ), ( "levelString", JR.defaultOf "" ), ( "levelNumberCharArray", JR.defaultOf "" ), ( "levelNumberTotalDigits", JR.defaultOf "I" ), ( "offset", JR.defaultOf "I" ), ( "primitiveLongUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createHud_3", jm_createHud_3 )
        , ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "update_0", jm_update_0 )
        , ( "setLevel_1", jm_setLevel_1 )
        , ( "nextLevel_0", jm_nextLevel_0 )
        , ( "previousLevel_0", jm_previousLevel_0 )
        , ( "isComplete_0", jm_isComplete_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 ) ]
        BasicHud.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LevelHudWidget"
        [ ( "jm_createHud_3", jm_createHud_3 ), ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_update_0", jm_update_0 ), ( "jm_setLevel_1", jm_setLevel_1 ), ( "jm_nextLevel_0", jm_nextLevel_0 ), ( "jm_previousLevel_0", jm_previousLevel_0 ), ( "jm_isComplete_0", jm_isComplete_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "maxlevel", "I" ), ( "location", "I" ), ( "direction", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicHud.jinit_4 JR.this [ (JR.local "location"), (JR.local "direction"), (JR.int 2), (JR.field "GREY" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ]),
                JR.exec (JR.setField "levelNumberCharArray" "" JR.this (JR.field "NULL_CHAR_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "primitiveLongUtil" "" JR.this (JR.callStatic PrimitiveLongUtil.jm_createPowerOfTen_1 [ (JR.int 1000) ])), 
                    JR.declare "LEVEL" "" (JR.str "Lv "), 
                    JR.exec (JR.setField "levelString" "" JR.this (JR.invoke "toCharArray_0" (JR.local "LEVEL") [])), 
                    JR.exec (JR.setField "maxlevel" "I" JR.this (JR.local "maxlevel")), 
                    JR.exec (JR.setField "level" "I" JR.this (JR.local "maxlevel")), 
                    JR.exec (JR.invoke "update_0" JR.this []), 
                    JR.exec (JR.setField "updateMaxHeight" "" JR.this (JR.int 14)) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_createHud_3 : JR.Method
jm_createHud_3 jheap jthis jargs =
    JR.method [ ( "maxlevel", "I" ), ( "location", "I" ), ( "direction", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_3 [ (JR.local "maxlevel"), (JR.local "location"), (JR.local "direction") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "updateMaxWidth" "" JR.this (JR.map2 JR.mul (JR.invoke "getSize_0" (JR.local "font") []) (JR.int 4))), 
                    JR.exec (JR.setField "offset" "I" JR.this (JR.plus (JR.invoke "charsWidth_3" (JR.local "font") [ (JR.thisField "levelString"), (JR.int 0), (JR.alength (JR.thisField "levelString")) ]) (JR.invoke "getSize_0" (JR.local "font") []))), 
                    JR.exec (JR.callVia BasicHud.jvtable "updateMeasurement_1" JR.this [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "levelNumberCharArray" "" JR.this (JR.invoke "getCharArray_1" (JR.thisField "primitiveLongUtil") [ (JR.thisField "level") ])), 
                    JR.exec (JR.setField "levelNumberTotalDigits" "I" JR.this (JR.invoke "getCurrentTotalDigits_0" (JR.thisField "primitiveLongUtil") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_setLevel_1 : JR.Method
jm_setLevel_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "level" "I" JR.this (JR.local "level")), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_nextLevel_0 : JR.Method
jm_nextLevel_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.postUpdate (JR.thisField "level") (\jwN68973 -> (JR.setField "level" "I" JR.this (JR.lit jwN68973))) JR.increment), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_previousLevel_0 : JR.Method
jm_previousLevel_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.postUpdate (JR.thisField "level") (\jwN69033 -> (JR.setField "level" "I" JR.this (JR.lit jwN69033))) JR.decrement), 
                    JR.ifElse (JR.map2 JR.less (JR.thisField "level") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setField "level" "I" JR.this (JR.int 0)) ]) identity, 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_isComplete_0 : JR.Method
jm_isComplete_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.thisField "level") (JR.thisField "maxlevel")) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicHud.jvtable "paintDX_8" JR.this [ (JR.local "graphics"), (JR.thisField "levelString"), (JR.int 0), (JR.alength (JR.thisField "levelString")), (JR.thisField "levelNumberCharArray"), (JR.int 0), (JR.thisField "levelNumberTotalDigits"), (JR.thisField "offset") ]) ])
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

