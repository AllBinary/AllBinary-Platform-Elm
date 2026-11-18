module Org.Allbinary.Game.Ag.Life.HealthIncludingLifeBar exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.life
-}

import JR
import Org.Allbinary.Game.Health.HealthBarTwodAnimation as HealthBarTwodAnimation
import Org.Allbinary.Game.Health.HealthListenerInterface as HealthListenerInterface
import Org.Allbinary.Graphics.Paint.Paintable as Paintable


jclass : String
jclass =
    "HealthIncludingLifeBar"


jchain : List String
jchain =
    [ "HealthIncludingLifeBar" ]
        ++ Paintable.jchain
        ++ HealthListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "animationInterface", JR.defaultOf "" ), ( "life", JR.defaultOf "" ), ( "healthInterface", JR.defaultOf "" ), ( "allbinaryLayer", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createHealthIncludingLifeBar_5", jm_createHealthIncludingLifeBar_5 )
        , ( "onHealthChange_0", jm_onHealthChange_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HealthIncludingLifeBar"
        [ ( "jm_createHealthIncludingLifeBar_5", jm_createHealthIncludingLifeBar_5 ), ( "jm_onHealthChange_0", jm_onHealthChange_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "life", "" ), ( "healthInterface", "" ), ( "animationInterface", "" ), ( "direction", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "allbinaryLayer" "" JR.this (JR.local "layerInterface")), 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")), 
                    JR.exec (JR.setField "life" "" JR.this (JR.local "life")), 
                    JR.exec (JR.setField "healthInterface" "" JR.this (JR.local "healthInterface")), 
                    JR.exec (JR.invoke "addListener_1" (JR.thisField "healthInterface") [ JR.this ]), 
                    JR.exec (JR.invoke "onHealthChange_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_createHealthIncludingLifeBar_5 : JR.Method
jm_createHealthIncludingLifeBar_5 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "life", "" ), ( "healthInterface", "" ), ( "location", "I" ), ( "direction", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_5 [ (JR.local "layerInterface"), (JR.local "life"), (JR.local "healthInterface"), (JR.new HealthBarTwodAnimation.jnew_2 [ (JR.local "layerInterface"), (JR.local "location") ]), (JR.local "direction") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onHealthChange_0 : JR.Method
jm_onHealthChange_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "onHealthChange_1" (JR.thisField "animationInterface") [ (JR.map2 JR.div ((JR.map2 JR.mul ((JR.map2 JR.add (JR.invoke "getHealth_0" (JR.thisField "healthInterface") []) ((JR.map2 JR.mul (JR.invoke "getMaxHealth_0" (JR.thisField "healthInterface") []) (JR.cast "I" (JR.invoke "get_0" (JR.thisField "life") [])))))) (JR.invoke "getWidth_0" (JR.thisField "allbinaryLayer") []))) ((JR.map2 JR.add (JR.invoke "getMaxHealth_0" (JR.thisField "healthInterface") []) ((JR.map2 JR.mul (JR.invoke "getMaxHealth_0" (JR.thisField "healthInterface") []) (JR.cast "I" (JR.invoke "getStartLives_0" (JR.thisField "life") []))))))) ]) ])
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

