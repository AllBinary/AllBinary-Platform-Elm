module Org.Allbinary.Game.Health.HealthBarAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.health
-}

import JR
import Org.Allbinary.Animation.Animation as Animation
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Game.Graphics.Hud.BasicHudFactory as BasicHudFactory


jclass : String
jclass =
    "HealthBarAnimation"


jchain : List String
jchain =
    [ "HealthBarAnimation" ]
        ++ Animation.jchain


jfields : List ( String, JR.JValue )
jfields =
    Animation.jfields ++ [ ( "basicColorFactory", JR.defaultOf "" ), ( "x2", JR.defaultOf "I" ), ( "thickness", JR.defaultOf "I" ), ( "location", JR.defaultOf "I" ), ( "allbinaryLayer", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onHealthChange_1", jm_onHealthChange_1 )
        , ( "getY_0", jm_getY_0 ) ]
        Animation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HealthBarAnimation"
        [ ( "jm_onHealthChange_1", jm_onHealthChange_1 ), ( "jm_getY_0", jm_getY_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "location", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Animation.jinit_0 JR.this []),
                JR.exec (JR.setField "basicColorFactory" "" JR.this (JR.callStatic BasicColorFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "allbinaryLayer" "" JR.this (JR.local "layerInterface")), 
                    JR.exec (JR.setField "location" "I" JR.this (JR.local "location")), 
                    JR.declare "basicHudFactory" "" (JR.callStatic BasicHudFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.thisField "location") (JR.field "TOPLEFT" (JR.local "basicHudFactory"))) (JR.map2 JR.notEquals (JR.thisField "location") (JR.field "BOTTOMLEFT" (JR.local "basicHudFactory")))) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Location Not Valid") ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getWidth_0" (JR.local "layerInterface") []) (JR.int 40)) (JR.run [ 
                        JR.exec (JR.setField "thickness" "I" JR.this (JR.int 3)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getWidth_0" (JR.local "layerInterface") []) (JR.int 20)) (JR.run [ 
                        JR.exec (JR.setField "thickness" "I" JR.this (JR.int 2)) ]) (JR.run [ 
                        JR.exec (JR.setField "thickness" "I" JR.this (JR.int 1)) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_onHealthChange_1 : JR.Method
jm_onHealthChange_1 jheap jthis jargs =
    JR.method [ ( "newX2", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "x2" "I" JR.this (JR.local "newX2")), 
                    JR.declare "quarter" "I" ((JR.map2 JR.shr (JR.invoke "getWidth_0" (JR.thisField "allbinaryLayer") []) (JR.int 2))), 
                    JR.ifElse (JR.map2 JR.greater (JR.thisField "x2") (JR.map2 JR.mul (JR.local "quarter") (JR.int 3))) (JR.run [ 
                        JR.exec (JR.setField "basicColor" "" JR.this (JR.field "GREEN" (JR.thisField "basicColorFactory"))), 
                        JR.exec (JR.setField "colorP" "" JR.this (JR.invoke "intValue_0" (JR.thisField "basicColor") [])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.thisField "x2") (JR.map2 JR.mul (JR.local "quarter") (JR.int 2))) (JR.run [ 
                        JR.exec (JR.setField "basicColor" "" JR.this (JR.field "YELLOW" (JR.thisField "basicColorFactory"))), 
                        JR.exec (JR.setField "colorP" "" JR.this (JR.invoke "intValue_0" (JR.thisField "basicColor") [])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.thisField "x2") (JR.local "quarter")) (JR.run [ 
                        JR.exec (JR.setField "basicColor" "" JR.this (JR.field "ORANGE" (JR.thisField "basicColorFactory"))), 
                        JR.exec (JR.setField "colorP" "" JR.this (JR.invoke "intValue_0" (JR.thisField "basicColor") [])) ]) (JR.run [ 
                        JR.exec (JR.setField "basicColor" "" JR.this (JR.field "RED" (JR.thisField "basicColorFactory"))), 
                        JR.exec (JR.setField "colorP" "" JR.this (JR.invoke "intValue_0" (JR.thisField "basicColor") [])) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getY_0 : JR.Method
jm_getY_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "basicHudFactory" "" (JR.callStatic BasicHudFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "location") (JR.field "TOPLEFT" (JR.local "basicHudFactory"))) (JR.run [ 
                        JR.return (JR.map2 JR.sub (JR.invoke "getY_0" (JR.invoke "getViewPosition_0" (JR.thisField "allbinaryLayer") []) []) (JR.int 4)) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "location") (JR.field "BOTTOMLEFT" (JR.local "basicHudFactory"))) (JR.run [ 
                        JR.return (JR.map2 JR.add (JR.invoke "getY2_0" (JR.invoke "getViewPosition_0" (JR.thisField "allbinaryLayer") []) []) (JR.int 4)) ]) identity ]), 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
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

