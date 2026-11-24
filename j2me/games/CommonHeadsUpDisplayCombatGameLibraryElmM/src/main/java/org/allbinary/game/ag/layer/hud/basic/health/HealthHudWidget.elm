module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Health.HealthHudWidget exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.health
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Game.Graphics.Hud.BasicHud as BasicHud
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Game.Health.HealthListenerInterface as HealthListenerInterface
import Org.Allbinary.Time.NoTimeDelayHelper as NoTimeDelayHelper
import Org.Allbinary.Graphics.Paint.PaintableInterface as PaintableInterface
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "HealthHudWidget"


jchain : List String
jchain =
    [ "HealthHudWidget" ]
        ++ BasicHud.jchain
        ++ PaintableInterface.jchain
        ++ HealthListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicHud.jfields ++ [ ( "healthScale", JR.defaultOf "I" ), ( "animationInterface", JR.defaultOf "" ), ( "healthInterface", JR.defaultOf "" ), ( "max", JR.defaultOf "I" ), ( "xArray", JR.defaultOf "" ), ( "gameTickTimeDelayHelper", JR.defaultOf "" ), ( "timeDelayHelper", JR.defaultOf "" ), ( "slowBeatTimeDelayHelper", JR.defaultOf "" ), ( "mediumBeatTimeDelayHelper", JR.defaultOf "" ), ( "fastBeatTimeDelayHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "update_0", jm_update_0 )
        , ( "setX_1", jm_setX_1 )
        , ( "onHealthChange_0", jm_onHealthChange_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 ) ]
        BasicHud.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HealthHudWidget"
        [ ( "jm_update_0", jm_update_0 ), ( "jm_setX_1", jm_setX_1 ), ( "jm_onHealthChange_0", jm_onHealthChange_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "healthInterface", "" ), ( "location", "I" ), ( "direction", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicHud.jinit_4 JR.this [ (JR.local "location"), (JR.local "direction"), (JR.int 2), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ]),
                JR.exec (JR.setField "gameTickTimeDelayHelper" "" JR.this (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "timeDelayHelper" "" JR.this NoTimeDelayHelper.jstatic_SINGLETON),
                JR.exec (JR.setField "slowBeatTimeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 1280) ])),
                JR.exec (JR.setField "mediumBeatTimeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 640) ])),
                JR.exec (JR.setField "fastBeatTimeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 320) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")), 
                    JR.exec (JR.setField "healthInterface" "" JR.this (JR.local "healthInterface")), 
                    JR.exec (JR.invoke "addListener_1" (JR.thisField "healthInterface") [ JR.this ]), 
                    JR.exec (JR.setField "healthScale" "I" JR.this (JR.map2 JR.add ((JR.map2 JR.div (JR.invoke "getMaxHealth_0" (JR.thisField "healthInterface") []) (JR.int 6))) (JR.int 1))), 
                    JR.exec (JR.invoke "onHealthChange_0" JR.this []), 
                    JR.exec (JR.setField "updateMaxWidth" "" JR.this (JR.map2 JR.mul (JR.invoke "getMaxHealth_0" (JR.local "healthInterface") []) (JR.int 16))), 
                    JR.exec (JR.setField "updateMaxHeight" "" JR.this (JR.int 16)), 
                    JR.exec (JR.setField "xArray" "" JR.this (JR.newArray "I" [ (JR.int 30) ])), 
                    JR.exec (JR.invoke "update_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "xArray") JR.null) (JR.run [ 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.thisField "xArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69104 -> (JR.setLocal "index" "I" (JR.lit jwN69104))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.thisField "xArray") (\jaN68972 -> JR.andThen (JR.local "index") (\jiN68972 -> (JR.aset (JR.lit jaN68972) (JR.lit jiN68972) (JR.map2 JR.add (JR.invoke "getX_0" JR.this []) ((JR.map2 JR.mul (JR.local "index") (JR.int 16)))))))) ]) ] ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setX_1 : JR.Method
jm_setX_1 jheap jthis jargs =
    JR.method [ ( "x", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia BasicHud.jvtable "setX_1" JR.this [ (JR.local "x") ]), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_onHealthChange_0 : JR.Method
jm_onHealthChange_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "max" "I" JR.this ((JR.map2 JR.div (JR.invoke "getHealth_0" (JR.thisField "healthInterface") []) (JR.thisField "healthScale")))), 
                    JR.exec (JR.setField "timeDelayHelper" "" JR.this NoTimeDelayHelper.jstatic_SINGLETON), 
                    JR.ifElse (JR.and (JR.map2 JR.lessEquals (JR.thisField "max") (JR.int 1)) (JR.invoke "isAlive_0" (JR.thisField "healthInterface") [])) (JR.run [ 
                        JR.exec (JR.setField "max" "I" JR.this (JR.int 1)), 
                        JR.ifElse (JR.map2 JR.greater (JR.map2 JR.sub (JR.thisField "healthScale") (JR.invoke "getHealth_0" (JR.thisField "healthInterface") [])) (JR.map2 JR.div ((JR.map2 JR.mul (JR.thisField "healthScale") (JR.int 2))) (JR.int 3))) (JR.run [ 
                            JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.thisField "slowBeatTimeDelayHelper")) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.map2 JR.sub (JR.thisField "healthScale") (JR.invoke "getHealth_0" (JR.thisField "healthInterface") [])) (JR.map2 JR.div (JR.thisField "healthScale") (JR.int 3))) (JR.run [ 
                            JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.thisField "mediumBeatTimeDelayHelper")) ]) (JR.run [ 
                            JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.thisField "fastBeatTimeDelayHelper")) ]) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_1" (JR.thisField "myFontProcessor") [ (JR.local "graphics") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "max")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70134 -> (JR.setLocal "index" "I" (JR.lit jwN70134))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.invoke "isTime_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]) (JR.run [ 
                            JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.aget (JR.thisField "xArray") (JR.local "index")), (JR.invoke "getY_0" JR.this []) ]) ]) identity ]) ] ])
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

