module Org.Allbinary.Animation.Image.ImageAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AdjustedImageAnimation as AdjustedImageAnimation
import Org.Allbinary.Animation.AnimationBehaviorFactory as AnimationBehaviorFactory
import Org.Allbinary.Animation.Image.BaseImageAnimationFactory as BaseImageAnimationFactory
import Org.Allbinary.Animation.Image.ImageAnimation as ImageAnimation
import Org.Allbinary.Graphics.Opengles.OpenGLUtil as OpenGLUtil
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil


jclass : String
jclass =
    "ImageAnimationFactory"


jchain : List String
jchain =
    [ "ImageAnimationFactory" ]
        ++ BaseImageAnimationFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseImageAnimationFactory.jfields ++ []


jvtable =
    JR.vtable
        [ ( "createFactory_1", jm_createFactory_1 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        BaseImageAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageAnimationFactory"
        [ ( "jm_createFactory_1", jm_createFactory_1 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseImageAnimationFactory.jinit_7 JR.this [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.local "width"), (JR.local "height"), (JR.local "dx"), (JR.local "dy"), (JR.local "animationBehaviorFactory") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_createFactory_1 : JR.Method
jm_createFactory_1 jheap jthis jargs =
    JR.method [ ( "image", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_6 [ (JR.local "image"), (JR.invoke "getWidth_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.int 0), (JR.int 0), (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "scaledImage" "" (JR.invoke "createImage_5" (JR.thisField "animationFactoryImageScaleUtil") [ (JR.invoke "getImage_0" JR.this []), (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "height" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "scaleWidth" (JR.thisField "scaleProperties")), (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]), 
                    JR.declare "openGLUtil" "" (JR.callStatic OpenGLUtil.jm_getInstance_0 []), 
                    JR.exec (JR.setLocal "scaledImage" "" (JR.invoke "addImage_1" (JR.local "openGLUtil") [ (JR.local "scaledImage") ])), 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0)) (JR.map2 JR.notEquals (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0))) (JR.run [ 
                        JR.exec (JR.invoke "processAdjust_1" (JR.thisField "animationFactoryImageScaleUtil") [ JR.this ]), 
                        JR.return (JR.new AdjustedImageAnimation.jnew_4 [ (JR.local "scaledImage"), (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) (JR.run [ 
                        JR.return (JR.new ImageAnimation.jnew_2 [ (JR.local "scaledImage"), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) ])
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

