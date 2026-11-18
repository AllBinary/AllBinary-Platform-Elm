module Org.Allbinary.Game.Combat.Damage.AnimationDamageFloaters exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.damage
-}

import JR
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Combat.Damage.DamageFloaters as DamageFloaters
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "AnimationDamageFloaters"


jchain : List String
jchain =
    [ "AnimationDamageFloaters" ]
        ++ DamageFloaters.jchain


jfields : List ( String, JR.JValue )
jfields =
    DamageFloaters.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "layerInterface", JR.defaultOf "" ), ( "animationInterfaceArray", JR.defaultOf "" ), ( "circularIndexUtil", JR.defaultOf "" ), ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "add_1", jm_add_1 )
        , ( "paint_1", jm_paint_1 ) ]
        DamageFloaters.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnimationDamageFloaters"
        [ ( "jm_add_1", jm_add_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ), ( "animationInterfaceArray", "" ), ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect DamageFloaters.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationInterfaceArray" "" JR.this (JR.local "animationInterfaceArray")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "animationInterfaceArray")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68528 -> (JR.setLocal "index" "I" (JR.lit jwN68528))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.invoke "setFrame_1" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index")) [ (JR.map2 JR.sub (JR.invoke "getSize_0" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index")) []) (JR.int 1)) ]) ]) ], 
                    JR.exec (JR.setField "layerInterface" "" JR.this (JR.local "layerInterface")), 
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.alength (JR.thisField "animationInterfaceArray")) ])), 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "damage", "I" ) ] ""
        (JR.run [ 
                    JR.declare "i" "I" (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []), 
                    JR.exec (JR.invoke "setFrame_1" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "i")) [ (JR.int 0) ]), 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "viewPosition" "" (JR.invoke "getViewPosition_0" (JR.thisField "layerInterface") []), 
                        JR.declare "x" "I" (JR.invoke "getX_0" (JR.local "viewPosition") []), 
                        JR.declare "y" "I" (JR.invoke "getY_0" (JR.local "viewPosition") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.thisField "animationInterfaceArray"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69440 -> (JR.setLocal "index" "I" (JR.lit jwN69440))) JR.increment) ]) (JR.run [ 
                            JR.declare "animationInterface" "" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index")), 
                            JR.ifElse (JR.map2 JR.less (JR.invoke "getFrame_0" (JR.local "animationInterface") []) (JR.map2 JR.sub (JR.invoke "getAnimationSize_0" (JR.local "animationInterface") []) (JR.int 1))) (JR.run [ 
                                JR.declare "delta" "I" (JR.map2 JR.mul (JR.invoke "getFrame_0" (JR.local "animationInterface") []) (JR.int 20)), 
                                JR.exec (JR.invoke "paintXY_3" (JR.local "animationInterface") [ (JR.local "graphics"), (JR.map2 JR.add (JR.local "x") (JR.thisField "dx")), (JR.map2 JR.add (JR.map2 JR.sub (JR.local "y") (JR.local "delta")) (JR.thisField "dy")) ]), 
                                JR.exec (JR.invoke "nextFrame_0" (JR.local "animationInterface") []) ]) identity ]) ] ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.declare "canvasStrings" "" (JR.callStatic CanvasStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "PAINT" (JR.local "canvasStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

