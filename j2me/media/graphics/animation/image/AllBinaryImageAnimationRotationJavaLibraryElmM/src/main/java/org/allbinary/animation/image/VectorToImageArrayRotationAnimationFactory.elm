module Org.Allbinary.Animation.Image.VectorToImageArrayRotationAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AdjustedImageArrayRotationAnimation as AdjustedImageArrayRotationAnimation
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Math.AngleInfo as AngleInfo
import Org.Allbinary.Image.AnimationFrameToImageUtil as AnimationFrameToImageUtil
import Org.Allbinary.Animation.Image.BaseImageAnimationFactory as BaseImageAnimationFactory
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral
import Org.Allbinary.Media.Image.ImageToRotationImageArrayUtil as ImageToRotationImageArrayUtil
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.VectorAnimation as VectorAnimation


jclass : String
jclass =
    "VectorToImageArrayRotationAnimationFactory"


jchain : List String
jchain =
    [ "VectorToImageArrayRotationAnimationFactory" ]
        ++ BaseImageAnimationFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseImageAnimationFactory.jfields ++ [ ( "imageArray", JR.defaultOf "" ), ( "angleIncrement", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "getAngleIncrement_0", jm_getAngleIncrement_0 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        BaseImageAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorToImageArrayRotationAnimationFactory"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getAngleIncrement_0", jm_getAngleIncrement_0 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "vectorInfo", "" ), ( "basicColor", "" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseImageAnimationFactory.jinit_7 JR.this [ (JR.invoke "getInstanceTranslate_3" (JR.callStatic AnimationFrameToImageUtil.jm_getInstance_0 []) [ (JR.invoke "getWidth_0" (JR.local "vectorInfo") []), (JR.invoke "getHeight_0" (JR.local "vectorInfo") []), (JR.callStatic VectorAnimation.jm_createVectorAnimation_3 [ (JR.invoke "getPoints_0" (JR.local "vectorInfo") []), (JR.local "basicColor"), (JR.invoke "getOrCreateInstance_0" (JR.local "animationBehaviorFactory") []) ]) ]), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.int 0), (JR.int 0), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]),
                JR.exec (JR.setField "imageArray" "" JR.this NullImage.jstatic_NULL_IMAGE_ARRAY),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "init_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "angleFactory" "" (JR.callStatic AngleFactory.jm_getInstance_0 []), 
                    JR.exec (JR.setField "angleIncrement" "I" JR.this (JR.map2 JR.div (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.local "angleFactory"))) (JR.invoke "getGameControlFidelity_0" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 []) []))), 
                    JR.exec (JR.setField "imageArray" "" JR.this (JR.invoke "generate_3" (JR.callStatic ImageToRotationImageArrayUtil.jm_getInstance_0 []) [ (JR.invoke "getImage_0" JR.this []), (JR.invoke "getAngleIncrement_0" JR.this []), (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.local "angleFactory"))) ])) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0)) (JR.map2 JR.notEquals (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0))) (JR.run [ 
                        JR.return (JR.new AdjustedImageArrayRotationAnimation.jnew_6 [ (JR.thisField "imageArray"), (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.cast "S" (JR.invoke "getAngleIncrement_0" JR.this [])) ]), (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))), (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) (JR.run [ 
                        JR.return (JR.callStatic AdjustedImageArrayRotationAnimation.jm_createAnimation_4 [ (JR.thisField "imageArray"), (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.cast "S" (JR.thisField "angleIncrement")) ]), (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAngleIncrement_0 : JR.Method
jm_getAngleIncrement_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "angleIncrement") ])
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

