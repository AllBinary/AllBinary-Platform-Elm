module Org.Allbinary.Animation.RotationAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Math.AngleInfo as AngleInfo
import Org.Allbinary.Animation.AnimationBehavior as AnimationBehavior
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral
import Org.Allbinary.Animation.NullRotationAnimation as NullRotationAnimation
import Org.Allbinary.Animation.ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterface


jclass : String
jclass =
    "RotationAnimationFactory"


jchain : List String
jchain =
    [ "RotationAnimationFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain
        ++ ProceduralAnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "totalAngle", JR.defaultOf "S" ), ( "angleIncrement", JR.defaultOf "S" ) ]


jvtable =
    JR.vtable
        [ ( "createFactory_0", jm_createFactory_0 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "getInstanceAnimation_1", jm_getInstanceAnimation_1 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RotationAnimationFactory"
        [ ( "jm_createFactory_0", jm_createFactory_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getInstanceAnimation_1", jm_getInstanceAnimation_1 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "totalAngle", "S" ), ( "angleIncrement", "S" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "totalAngle" "S" JR.this (JR.local "totalAngle")), 
                    JR.exec (JR.setField "angleIncrement" "S" JR.this (JR.local "angleIncrement")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_createFactory_0 : JR.Method
jm_createFactory_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "totalAngle" "S" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 [])), 
                    JR.return (JR.new jnew_2 [ (JR.local "totalAngle"), (JR.cast "S" ((JR.map2 JR.div (JR.cast "I" (JR.local "totalAngle")) (JR.invoke "getGameControlFidelity_0" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 []) [])))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic NullRotationAnimation.jm_createTotalAngle_3 [ (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.thisField "angleIncrement") ]), (JR.thisField "totalAngle"), (JR.callStatic AnimationBehavior.jm_getInstance_0 []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceAnimation_1 : JR.Method
jm_getInstanceAnimation_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic NullRotationAnimation.jm_createTotalAngle_3 [ (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.thisField "angleIncrement") ]), (JR.thisField "totalAngle"), (JR.callStatic AnimationBehavior.jm_getInstance_0 []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialScale_1 : JR.Method
jm_setInitialScale_1 jheap jthis jargs =
    JR.method [ ( "scaleProperties", "" ) ] ""
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

