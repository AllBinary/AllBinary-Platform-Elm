module Org.Allbinary.Animation.Image.Sprite.ColorCompositeSpriteIndexedAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image.sprite
-}

import JR
import Org.Allbinary.Image.Sprite.AnimationFactorySpriteScaleUtil as AnimationFactorySpriteScaleUtil
import Org.Allbinary.Animation.Image.BaseImageAnimationFactory as BaseImageAnimationFactory
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterface
import Org.Allbinary.Animation.Image.Sprite.SpriteIndexedAnimation as SpriteIndexedAnimation


jclass : String
jclass =
    "ColorCompositeSpriteIndexedAnimationFactory"


jchain : List String
jchain =
    [ "ColorCompositeSpriteIndexedAnimationFactory" ]
        ++ BaseImageAnimationFactory.jchain
        ++ ProceduralAnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseImageAnimationFactory.jfields ++ [ ( "animationFactorySpriteScaleUtil", JR.defaultOf "" ), ( "basicColorArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "getInstanceAnimation_1", jm_getInstanceAnimation_1 ) ]
        BaseImageAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ColorCompositeSpriteIndexedAnimationFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getInstanceAnimation_1", jm_getInstanceAnimation_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "basicColorArray", "" ), ( "width", "I" ), ( "height", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseImageAnimationFactory.jinit_7 JR.this [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.local "width"), (JR.local "height"), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]),
                JR.exec (JR.setField "animationFactorySpriteScaleUtil" "" JR.this (JR.callStatic AnimationFactorySpriteScaleUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "basicColorArray" "" JR.this (JR.local "basicColorArray")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "sprite" "" (JR.invoke "createImage_5" (JR.thisField "animationFactorySpriteScaleUtil") [ (JR.invoke "getImage_0" JR.this []), (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "height" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "scaleWidth" (JR.thisField "scaleProperties")), (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]), 
                    JR.return (JR.new SpriteIndexedAnimation.jnew_4 [ (JR.local "sprite"), (JR.invoke "getImage_0" JR.this []), (JR.thisField "basicColorArray"), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceAnimation_1 : JR.Method
jm_getInstanceAnimation_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getInstance_1" JR.this [ (JR.int 0) ]) ])
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

