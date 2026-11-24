module Org.Allbinary.Animation.Image.ImageRotationAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AdjustedImageBaseRotationAnimation as AdjustedImageBaseRotationAnimation
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Math.AngleInfo as AngleInfo
import Org.Allbinary.Animation.Image.BaseImageAnimationFactory as BaseImageAnimationFactory
import Org.Allbinary.Animation.Image.ImageBaseRotationAnimation as ImageBaseRotationAnimation
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil


jclass : String
jclass =
    "ImageRotationAnimationFactory"


jchain : List String
jchain =
    [ "ImageRotationAnimationFactory" ]
        ++ BaseImageAnimationFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseImageAnimationFactory.jfields ++ [ ( "angleIncrement", JR.defaultOf "S" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "getAngleIncrementP_0", jm_getAngleIncrementP_0 ) ]
        BaseImageAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageRotationAnimationFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getAngleIncrementP_0", jm_getAngleIncrementP_0 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "angleIncrement", "S" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseImageAnimationFactory.jinit_7 JR.this [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.local "width"), (JR.local "height"), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "angleIncrement" "S" JR.this (JR.local "angleIncrement")), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN68115 -> (JR.setField "dx" "I" (JR.lit jtN68115) (JR.local "dx")))), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN68155 -> (JR.setField "dy" "I" (JR.lit jtN68155) (JR.local "dy")))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0)) (JR.map2 JR.notEquals (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0))) (JR.run [ 
                        JR.exec (JR.invoke "processAdjust_1" (JR.thisField "animationFactoryImageScaleUtil") [ JR.this ]), 
                        JR.return (JR.new AdjustedImageBaseRotationAnimation.jnew_6 [ (JR.invoke "getImage_0" JR.this []), (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.thisField "angleIncrement") ]), (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 [])), (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) (JR.run [ 
                        JR.return (JR.new ImageBaseRotationAnimation.jnew_4 [ (JR.invoke "getImage_0" JR.this []), (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.thisField "angleIncrement") ]), (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 [])), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAngleIncrementP_0 : JR.Method
jm_getAngleIncrementP_0 jheap jthis jargs =
    JR.method [] "S"
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

