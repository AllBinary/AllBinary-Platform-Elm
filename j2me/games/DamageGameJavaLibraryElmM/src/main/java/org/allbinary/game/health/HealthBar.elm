module Org.Allbinary.Game.Health.HealthBar exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.health
-}

import JR
import Org.Allbinary.Game.Health.HealthListenerInterface as HealthListenerInterface
import Org.Allbinary.Graphics.Paint.Paintable as Paintable


jclass : String
jclass =
    "HealthBar"


jchain : List String
jchain =
    [ "HealthBar" ]
        ++ Paintable.jchain
        ++ HealthListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "animationInterface", JR.defaultOf "" ), ( "healthInterface", JR.defaultOf "" ), ( "allbinaryLayer", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onHealthChange_0", jm_onHealthChange_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HealthBar"
        [ ( "jm_onHealthChange_0", jm_onHealthChange_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "healthInterface", "" ), ( "animationInterface", "" ), ( "direction", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "allbinaryLayer" "" JR.this (JR.local "layerInterface")), 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")), 
                    JR.exec (JR.setField "healthInterface" "" JR.this (JR.local "healthInterface")), 
                    JR.exec (JR.invoke "addListener_1" (JR.thisField "healthInterface") [ JR.this ]), 
                    JR.exec (JR.invoke "onHealthChange_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_onHealthChange_0 : JR.Method
jm_onHealthChange_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onHealthChange_1" (JR.thisField "animationInterface") [ (JR.map2 JR.div (JR.map2 JR.mul (JR.invoke "getHealth_0" (JR.thisField "healthInterface") []) (JR.invoke "getWidth_0" (JR.thisField "allbinaryLayer") [])) (JR.invoke "getMaxHealth_0" (JR.thisField "healthInterface") [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.int 0), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintThreedXYZ_4" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.int 0), (JR.int 0), (JR.int 0) ]) ])
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

