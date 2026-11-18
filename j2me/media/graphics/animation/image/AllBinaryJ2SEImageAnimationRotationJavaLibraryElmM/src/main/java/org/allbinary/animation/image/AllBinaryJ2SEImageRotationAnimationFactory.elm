module Org.Allbinary.Animation.Image.AllBinaryJ2SEImageRotationAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AllBinaryAdjustedJ2SEImageRotationAnimation as AllBinaryAdjustedJ2SEImageRotationAnimation
import Org.Allbinary.Animation.Image.AllBinaryJ2SEImageRotationAnimation as AllBinaryJ2SEImageRotationAnimation
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Math.AngleInfo as AngleInfo
import Org.Allbinary.Animation.Image.BaseImageAnimationFactory as BaseImageAnimationFactory
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Media.Image.ImageCopyUtil as ImageCopyUtil
import Org.Allbinary.Graphics.Opengles.OpenGLFeatureFactory as OpenGLFeatureFactory
import Org.Allbinary.Graphics.Opengles.OpenGLUtil as OpenGLUtil
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil


jclass : String
jclass =
    "AllBinaryJ2SEImageRotationAnimationFactory"


jchain : List String
jchain =
    [ "AllBinaryJ2SEImageRotationAnimationFactory" ]
        ++ BaseImageAnimationFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseImageAnimationFactory.jfields ++ [ ( "angleIncrementP", JR.defaultOf "S" ), ( "resizeCanvasForRotation", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "createDXY_8", jm_createDXY_8 )
        , ( "getCanvasImage_0", jm_getCanvasImage_0 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "getAngleIncrement_0", jm_getAngleIncrement_0 ) ]
        BaseImageAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryJ2SEImageRotationAnimationFactory"
        [ ( "jm_createDXY_8", jm_createDXY_8 ), ( "jm_getCanvasImage_0", jm_getCanvasImage_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getAngleIncrement_0", jm_getAngleIncrement_0 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ), ( "angleIncrement", "S" ), ( "animationBehaviorFactory", "" ), ( "resizeCanvasForRotation", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseImageAnimationFactory.jinit_7 JR.this [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.local "width"), (JR.local "height"), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "angleIncrementP" "S" JR.this (JR.local "angleIncrement")), 
                    JR.exec (JR.setField "resizeCanvasForRotation" "Z" JR.this (JR.local "resizeCanvasForRotation")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_createDXY_8 : JR.Method
jm_createDXY_8 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "angleIncrement", "S" ), ( "animationBehaviorFactory", "" ), ( "resizeCanvasForRotation", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "imageRotationAnimationFactory" "" (JR.new jnew_6 [ (JR.local "image"), (JR.local "width"), (JR.local "height"), (JR.local "angleIncrement"), (JR.local "animationBehaviorFactory"), (JR.local "resizeCanvasForRotation") ]), 
                    JR.exec (JR.andThen (JR.field "animationFactoryInitializationVisitor" (JR.local "imageRotationAnimationFactory")) (\jtN69128 -> (JR.setField "dx" "I" (JR.lit jtN69128) (JR.local "dx")))), 
                    JR.exec (JR.andThen (JR.field "animationFactoryInitializationVisitor" (JR.local "imageRotationAnimationFactory")) (\jtN69169 -> (JR.setField "dy" "I" (JR.lit jtN69169) (JR.local "dy")))), 
                    JR.exec (JR.andThen (JR.field "animationFactoryInitializationVisitor" (JR.local "imageRotationAnimationFactory")) (\jtN69210 -> (JR.setField "originalDx" "I" (JR.lit jtN69210) (JR.local "dx")))), 
                    JR.exec (JR.andThen (JR.field "animationFactoryInitializationVisitor" (JR.local "imageRotationAnimationFactory")) (\jtN69251 -> (JR.setField "originalDy" "I" (JR.lit jtN69251) (JR.local "dy")))), 
                    JR.return (JR.local "imageRotationAnimationFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_getCanvasImage_0 : JR.Method
jm_getCanvasImage_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.ifElse (JR.and (JR.thisField "resizeCanvasForRotation") (JR.map JR.not_ (JR.invoke "isDefault_1" (JR.local "features") [ (JR.field "OPENGL" (JR.callStatic OpenGLFeatureFactory.jm_getInstance_0 [])) ]))) (JR.run [ 
                        JR.return (JR.invoke "createImageScale_3" (JR.callStatic ImageCopyUtil.jm_getInstance_0 []) [ (JR.invoke "getImage_0" JR.this []), (JR.float 1.44), (JR.bool False) ]) ]) (JR.run [ 
                        JR.return (JR.invoke "getImage_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "imageCopyUtil" "" (JR.callStatic ImageCopyUtil.jm_getInstance_0 []), 
                    JR.declare "canvasImage" "" (JR.invoke "getCanvasImage_0" JR.this []), 
                    JR.declare "scaledImage" "" (JR.invoke "createImage_5" (JR.thisField "animationFactoryImageScaleUtil") [ (JR.local "canvasImage"), (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "height" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "scaleWidth" (JR.thisField "scaleProperties")), (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]), 
                    JR.declare "openGLUtil" "" (JR.callStatic OpenGLUtil.jm_getInstance_0 []), 
                    JR.exec (JR.setLocal "scaledImage" "" (JR.invoke "addImage_1" (JR.local "openGLUtil") [ (JR.local "scaledImage") ])), 
                    JR.declare "copyOfScaledImage" "" (JR.invoke "createImageForRotation_1" (JR.local "imageCopyUtil") [ (JR.local "scaledImage") ]), 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0)) (JR.map2 JR.notEquals (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0))) (JR.run [ 
                        JR.exec (JR.invoke "processAdjust_1" (JR.thisField "animationFactoryImageScaleUtil") [ JR.this ]), 
                        JR.return (JR.new AllBinaryAdjustedJ2SEImageRotationAnimation.jnew_7 [ (JR.local "scaledImage"), (JR.local "copyOfScaledImage"), (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.thisField "angleIncrementP") ]), (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 [])), (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) (JR.run [ 
                        JR.return (JR.new AllBinaryJ2SEImageRotationAnimation.jnew_5 [ (JR.local "scaledImage"), (JR.local "copyOfScaledImage"), (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.thisField "angleIncrementP") ]), (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 [])), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAngleIncrement_0 : JR.Method
jm_getAngleIncrement_0 jheap jthis jargs =
    JR.method [] "S"
        (JR.run [ 
                    JR.return (JR.thisField "angleIncrementP") ])
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

