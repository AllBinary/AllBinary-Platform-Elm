module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Score.ScoreHudWidget exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.score
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Game.Ag.Layer.Hud.Basic.NumberStringHud as NumberStringHud


jclass : String
jclass =
    "ScoreHudWidget"


jchain : List String
jchain =
    [ "ScoreHudWidget" ]
        ++ NumberStringHud.jchain


jfields : List ( String, JR.JValue )
jfields =
    NumberStringHud.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_3", jm_getInstance_3 )
        , ( "updateMeasurement_1", jm_updateMeasurement_1 ) ]
        NumberStringHud.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScoreHudWidget"
        [ ( "jm_getInstance_3", jm_getInstance_3 ), ( "jm_updateMeasurement_1", jm_updateMeasurement_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "maxscore", "I" ), ( "location", "I" ), ( "direction", "I" ), ( "bufferZone", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect NumberStringHud.jinit_6 JR.this [ (JR.str "Pts "), (JR.local "maxscore"), (JR.local "location"), (JR.local "direction"), (JR.local "bufferZone"), (JR.local "basicColor") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "updateMaxHeight" "" JR.this (JR.int 14)) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_getInstance_3 : JR.Method
jm_getInstance_3 jheap jthis jargs =
    JR.method [ ( "maxscore", "I" ), ( "location", "I" ), ( "direction", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_5 [ (JR.local "maxscore"), (JR.local "location"), (JR.local "direction"), (JR.int 2), (JR.field "GREY" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_updateMeasurement_1 : JR.Method
jm_updateMeasurement_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "font" "" (JR.invoke "getFont_0" (JR.local "graphics") []), 
                    JR.exec (JR.setField "updateMaxWidth" "" JR.this (JR.map2 JR.mul (JR.invoke "getSize_0" (JR.local "font") []) (JR.int 5))), 
                    JR.exec (JR.callVia NumberStringHud.jvtable "updateMeasurement_1" JR.this [ (JR.local "graphics") ]) ])
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

