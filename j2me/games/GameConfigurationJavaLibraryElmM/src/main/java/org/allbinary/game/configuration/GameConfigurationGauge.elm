module Org.Allbinary.Game.Configuration.GameConfigurationGauge exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Javax.Microedition.Lcdui.Gauge as Gauge


jclass : String
jclass =
    "GameConfigurationGauge"


jchain : List String
jchain =
    [ "GameConfigurationGauge" ]
        ++ Gauge.jchain


jfields : List ( String, JR.JValue )
jfields =
    Gauge.jfields ++ []


jvtable =
    JR.vtable
        []
        Gauge.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameConfigurationGauge"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "gameConfiguration", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Gauge.jinit_4 JR.this [ (JR.invoke "getName_0" (JR.local "gameConfiguration") []), (JR.invoke "booleanValue_0" (JR.invoke "isModifiable_0" (JR.local "gameConfiguration") []) []), (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.invoke "getMaxValue_0" (JR.local "gameConfiguration") []) []) (JR.invoke "intValue_0" (JR.invoke "getMinValue_0" (JR.local "gameConfiguration") []) [])), (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.invoke "getValue_0" (JR.local "gameConfiguration") []) []) (JR.invoke "intValue_0" (JR.invoke "getMinValue_0" (JR.local "gameConfiguration") []) [])) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

