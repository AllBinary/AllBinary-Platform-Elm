module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Life.LivesHudWidget exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.life
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Game.Graphics.Hud.BasicHud as BasicHud
import Org.Allbinary.Graphics.Paint.PaintableInterface as PaintableInterface


jclass : String
jclass =
    "LivesHudWidget"


jchain : List String
jchain =
    [ "LivesHudWidget" ]
        ++ BasicHud.jchain
        ++ PaintableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicHud.jfields ++ [ ( "lifeInterface", JR.defaultOf "" ), ( "xArray", JR.defaultOf "" ), ( "animationInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateMeasurement_1", jm_updateMeasurement_1 )
        , ( "onDisplayChangeEvent_1", jm_onDisplayChangeEvent_1 )
        , ( "setX_1", jm_setX_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 )
        , ( "getLifeInterface_0", jm_getLifeInterface_0 ) ]
        BasicHud.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LivesHudWidget"
        [ ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jm_onDisplayChangeEvent_1", jm_onDisplayChangeEvent_1 ), ( "jm_setX_1", jm_setX_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jm_getLifeInterface_0", jm_getLifeInterface_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "lifeInterface", "" ), ( "location", "I" ), ( "direction", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicHud.jinit_4 JR.this [ (JR.local "location"), (JR.local "direction"), (JR.int 2), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "lifeInterface" "" JR.this (JR.local "lifeInterface")), 
                    JR.declare "size" "I" (JR.cast "I" (JR.invoke "getMaxlives_0" (JR.invoke "getLifeInterface_0" JR.this []) [])), 
                    JR.exec (JR.setField "xArray" "" JR.this (JR.newArray "I" [ (JR.local "size") ])), 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")), 
                    JR.exec (JR.setField "updateMaxWidth" "" JR.this (JR.map2 JR.mul (JR.cast "I" (JR.invoke "getMaxlives_0" (JR.thisField "lifeInterface") [])) (JR.int 16))), 
                    JR.exec (JR.setField "updateMaxHeight" "" JR.this (JR.int 16)) ]) ])
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
                    JR.exec (JR.callVia BasicHud.jvtable "updateMeasurement_1" JR.this [ (JR.local "graphics") ]), 
                    JR.declare "maxLives" "I" (JR.cast "I" (JR.invoke "getMaxlives_0" (JR.invoke "getLifeInterface_0" JR.this []) [])), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "maxLives")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68635 -> (JR.setLocal "index" "I" (JR.lit jwN68635))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "xArray") (\jaN68514 -> JR.andThen (JR.local "index") (\jiN68514 -> (JR.aset (JR.lit jaN68514) (JR.lit jiN68514) (JR.map2 JR.add (JR.invoke "getX_0" JR.this []) ((JR.map2 JR.mul (JR.local "index") (JR.int 16)))))))) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_onDisplayChangeEvent_1 : JR.Method
jm_onDisplayChangeEvent_1 jheap jthis jargs =
    JR.method [ ( "displayChangeEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicHud.jvtable "onDisplayChangeEvent_1" JR.this [ (JR.local "displayChangeEvent") ]), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_setX_1 : JR.Method
jm_setX_1 jheap jthis jargs =
    JR.method [ ( "x", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicHud.jvtable "setX_1" JR.this [ (JR.local "x") ]), 
                    JR.exec (JR.setField "myFontProcessor" "" JR.this (JR.thisField "updateMyFontProcessor")) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.run [ JR.declare "index" "I" (JR.cast "I" (JR.invoke "get_0" (JR.invoke "getLifeInterface_0" JR.this []) [])), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN69051 -> (JR.setLocal "index" "I" (JR.lit jwN69051))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.aget (JR.thisField "xArray") (JR.local "index")), (JR.invoke "getY_0" JR.this []) ]) ]) ] ])
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


jm_getLifeInterface_0 : JR.Method
jm_getLifeInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "lifeInterface") ])
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

