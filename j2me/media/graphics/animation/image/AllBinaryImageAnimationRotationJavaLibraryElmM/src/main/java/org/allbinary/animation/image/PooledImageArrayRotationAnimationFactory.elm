module Org.Allbinary.Animation.Image.PooledImageArrayRotationAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AdjustedImageArrayRotationAnimation as AdjustedImageArrayRotationAnimation
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral
import Org.Allbinary.Animation.Image.ImageArrayRotationAnimationInfo as ImageArrayRotationAnimationInfo
import Org.Allbinary.Media.Image.ImageToRotationImageArrayUtil as ImageToRotationImageArrayUtil
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "PooledImageArrayRotationAnimationFactory"


jchain : List String
jchain =
    [ "PooledImageArrayRotationAnimationFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "allBinaryImageRotationAnimationInfo", JR.defaultOf "" ), ( "animationBehaviorFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createFactory_2", jm_createFactory_2 )
        , ( "createDXY_4", jm_createDXY_4 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PooledImageArrayRotationAnimationFactory"
        [ ( "jm_createFactory_2", jm_createFactory_2 ), ( "jm_createDXY_4", jm_createDXY_4 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "angleIncrement", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "allBinaryImageRotationAnimationInfo" "" JR.this (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationBehaviorFactory" "" JR.this (JR.local "animationBehaviorFactory")), 
                    JR.declare "totalAngle" "I" (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))), 
                    JR.declare "imageArray" "" (JR.invoke "generate_3" (JR.callStatic ImageToRotationImageArrayUtil.jm_getInstance_0 []) [ (JR.local "image"), (JR.local "angleIncrement"), (JR.local "totalAngle") ]), 
                    JR.exec (JR.setField "allBinaryImageRotationAnimationInfo" "" JR.this (JR.new ImageArrayRotationAnimationInfo.jnew_5 [ (JR.local "imageArray"), (JR.local "angleIncrement"), (JR.local "totalAngle"), (JR.local "dx"), (JR.local "dy") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_createFactory_2 : JR.Method
jm_createFactory_2 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.declare "totalAngle" "I" (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))), 
                    JR.declare "angleIncrement" "I" ((JR.map2 JR.div (JR.local "totalAngle") (JR.invoke "getGameControlFidelity_0" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 []) []))), 
                    JR.return (JR.new jnew_7 [ (JR.local "image"), (JR.invoke "getWidth_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.map JR.neg ((JR.map2 JR.shr (JR.invoke "getWidth_0" (JR.local "image") []) (JR.int 2)))), (JR.map JR.neg ((JR.map2 JR.shr (JR.invoke "getHeight_0" (JR.local "image") []) (JR.int 2)))), (JR.local "angleIncrement"), (JR.local "animationBehaviorFactory") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createDXY_4 : JR.Method
jm_createDXY_4 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.declare "totalAngle" "I" (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))), 
                    JR.declare "angleIncrement" "I" ((JR.map2 JR.div (JR.local "totalAngle") (JR.invoke "getGameControlFidelity_0" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 []) []))), 
                    JR.return (JR.new jnew_7 [ (JR.local "image"), (JR.invoke "getWidth_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.local "dx"), (JR.local "dy"), (JR.local "angleIncrement"), (JR.local "animationBehaviorFactory") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic AdjustedImageArrayRotationAnimation.jm_createAdjustedImageArrayRotationAnimationInfo_2 [ (JR.thisField "allBinaryImageRotationAnimationInfo"), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ])
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

