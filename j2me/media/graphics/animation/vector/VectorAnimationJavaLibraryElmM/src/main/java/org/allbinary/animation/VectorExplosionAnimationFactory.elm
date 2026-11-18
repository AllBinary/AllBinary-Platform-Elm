module Org.Allbinary.Animation.VectorExplosionAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Animation.ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterface
import Org.Allbinary.Animation.VectorExplosionGenerator as VectorExplosionGenerator
import Org.Allbinary.Animation.VectorRotationAnimation as VectorRotationAnimation


jclass : String
jclass =
    "VectorExplosionAnimationFactory"


jchain : List String
jchain =
    [ "VectorExplosionAnimationFactory" ]
        ++ ProceduralAnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "vectorExplosionGenerator", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "animationBehaviorFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstanceAnimation_1", jm_getInstanceAnimation_1 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorExplosionAnimationFactory"
        [ ( "jm_getInstanceAnimation_1", jm_getInstanceAnimation_1 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "vectorExplosionGenerator" "" JR.this (JR.callStatic VectorExplosionGenerator.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationBehaviorFactory" "" JR.this (JR.local "animationBehaviorFactory")), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getInstanceAnimation_1 : JR.Method
jm_getInstanceAnimation_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "vectorRotationAnimationInterface" "" (JR.local "animationInterface"), 
                    JR.declare "frame" "I" (JR.invoke "getFrame_0" (JR.local "vectorRotationAnimationInterface") []), 
                    JR.declare "framePoints" "" (JR.invoke "getPoints_1" (JR.local "vectorRotationAnimationInterface") [ (JR.local "frame") ]), 
                    JR.declare "points" "" (JR.invoke "getInstance_3" (JR.thisField "vectorExplosionGenerator") [ (JR.local "framePoints"), (JR.int 6), (JR.field "ROTATION" (JR.thisField "vectorExplosionGenerator")) ]), 
                    JR.return (JR.new VectorRotationAnimation.jnew_3 [ (JR.local "points"), (JR.invoke "getBasicColorP_0" JR.this []), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicColor") ])
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

