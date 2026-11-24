module Org.Allbinary.Animation.Image.AllBinaryArrayImageRotationAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AdjustedImageArrayRotationAnimation as AdjustedImageArrayRotationAnimation
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Math.AngleInfo as AngleInfo
import Org.Allbinary.Animation.AnimationBehaviorFactory as AnimationBehaviorFactory
import Org.Allbinary.Animation.Image.BaseImageAnimationFactory as BaseImageAnimationFactory
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral
import Org.Allbinary.Animation.Image.ImageArrayRotationAnimation as ImageArrayRotationAnimation
import Org.Allbinary.Media.Image.ImageToRotationImageArrayUtil as ImageToRotationImageArrayUtil
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil


jclass : String
jclass =
    "AllBinaryArrayImageRotationAnimationFactory"


jchain : List String
jchain =
    [ "AllBinaryArrayImageRotationAnimationFactory" ]
        ++ BaseImageAnimationFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseImageAnimationFactory.jfields ++ [ ( "imageArray", JR.defaultOf "" ), ( "angleIncrement", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "createFactory_3", jm_createFactory_3 )
        , ( "createFactoryA_4", jm_createFactoryA_4 )
        , ( "init_0", jm_init_0 )
        , ( "initDXY_2", jm_initDXY_2 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "setImageArray_1", jm_setImageArray_1 )
        , ( "getAngleIncrement_0", jm_getAngleIncrement_0 ) ]
        BaseImageAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryArrayImageRotationAnimationFactory"
        [ ( "jm_createFactory_3", jm_createFactory_3 ), ( "jm_createFactoryA_4", jm_createFactoryA_4 ), ( "jm_init_0", jm_init_0 ), ( "jm_initDXY_2", jm_initDXY_2 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_setImageArray_1", jm_setImageArray_1 ), ( "jm_getAngleIncrement_0", jm_getAngleIncrement_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ), ( "angleIncrement", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseImageAnimationFactory.jinit_7 JR.this [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.local "width"), (JR.local "height"), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]),
                JR.exec (JR.setField "imageArray" "" JR.this NullImage.jstatic_NULL_IMAGE_ARRAY),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "angleIncrement" "I" JR.this (JR.local "angleIncrement")), 
                    JR.exec (JR.invoke "init_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_createFactory_3 : JR.Method
jm_createFactory_3 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ 
                    JR.declare "arrayImageRotationAnimationFactory" "" (JR.new jnew_5 [ (JR.local "image"), (JR.invoke "getWidth_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.map2 JR.div (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))) (JR.invoke "getGameControlFidelity_0" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 []) [])), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "initDXY_2" (JR.local "arrayImageRotationAnimationFactory") [ (JR.local "dx"), (JR.local "dy") ]), 
                    JR.return (JR.local "arrayImageRotationAnimationFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_createFactoryA_4 : JR.Method
jm_createFactoryA_4 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "dx", "I" ), ( "dy", "I" ), ( "angleIncrement", "I" ) ] ""
        (JR.run [ 
                    JR.declare "arrayImageRotationAnimationFactory" "" (JR.new jnew_5 [ (JR.local "image"), (JR.invoke "getWidth_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.local "angleIncrement"), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "initDXY_2" (JR.local "arrayImageRotationAnimationFactory") [ (JR.local "dx"), (JR.local "dy") ]), 
                    JR.return (JR.local "arrayImageRotationAnimationFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setImageArray_1" JR.this [ (JR.invoke "generate_3" (JR.callStatic ImageToRotationImageArrayUtil.jm_getInstance_0 []) [ (JR.invoke "getImage_0" JR.this []), (JR.invoke "getAngleIncrement_0" JR.this []), (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initDXY_2 : JR.Method
jm_initDXY_2 jheap jthis jargs =
    JR.method [ ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN69370 -> (JR.setField "dx" "I" (JR.lit jtN69370) (JR.local "dx")))), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN69406 -> (JR.setField "dy" "I" (JR.lit jtN69406) (JR.local "dy")))), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN69442 -> (JR.setField "originalDx" "I" (JR.lit jtN69442) (JR.local "dx")))), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN69478 -> (JR.setField "originalDy" "I" (JR.lit jtN69478) (JR.local "dy")))) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "scaledImageArray" "" (JR.newArray "" [ (JR.alength (JR.thisField "imageArray")) ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "scaledImageArray")), 
                    JR.declare "image" "" (JR.invoke "getImage_0" JR.this []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69935 -> (JR.setLocal "index" "I" (JR.lit jwN69935))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "scaledImageArray") (\jaN69758 -> JR.andThen (JR.local "index") (\jiN69758 -> (JR.aset (JR.lit jaN69758) (JR.lit jiN69758) (JR.invoke "createImage_5" (JR.thisField "animationFactoryImageScaleUtil") [ (JR.local "image"), (JR.invoke "getWidth_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.field "scaleWidth" (JR.thisField "scaleProperties")), (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]))))) ]) ], 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0)) (JR.map2 JR.notEquals (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0))) (JR.run [ 
                        JR.exec (JR.invoke "processAdjust_1" (JR.thisField "animationFactoryImageScaleUtil") [ JR.this ]), 
                        JR.return (JR.new AdjustedImageArrayRotationAnimation.jnew_6 [ (JR.local "scaledImageArray"), (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.cast "S" (JR.invoke "getAngleIncrement_0" JR.this [])) ]), (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))), (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) (JR.run [ 
                        JR.return (JR.new ImageArrayRotationAnimation.jnew_4 [ (JR.local "scaledImageArray"), (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.cast "S" (JR.invoke "getAngleIncrement_0" JR.this [])) ]), (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setImageArray_1 : JR.Method
jm_setImageArray_1 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "imageArray" "" JR.this (JR.local "imageArray")) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

