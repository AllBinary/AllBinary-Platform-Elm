module Org.Allbinary.Animation.Image.Sprite.SpriteIndexedAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image.sprite
-}

import JR
import Org.Allbinary.Animation.Image.Sprite.AdjustedSpriteIndexedAnimation as AdjustedSpriteIndexedAnimation
import Org.Allbinary.AndroidUtil as AndroidUtil
import Org.Allbinary.Image.Sprite.AnimationFactorySpriteScaleUtil as AnimationFactorySpriteScaleUtil
import Org.Allbinary.Animation.Image.BaseImageAnimationFactory as BaseImageAnimationFactory
import Org.Allbinary.Graphics.Color.BasicColorUtil as BasicColorUtil
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterface
import Org.Allbinary.Animation.Image.Sprite.SpriteIndexedAnimation as SpriteIndexedAnimation


jclass : String
jclass =
    "SpriteIndexedAnimationFactory"


jchain : List String
jchain =
    [ "SpriteIndexedAnimationFactory" ]
        ++ BaseImageAnimationFactory.jchain
        ++ ProceduralAnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseImageAnimationFactory.jfields ++ [ ( "animationFactorySpriteScaleUtil", JR.defaultOf "" ), ( "basicColorArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createCWHDXY_7", jm_createCWHDXY_7 )
        , ( "createCWH_5", jm_createCWH_5 )
        , ( "createWH_4", jm_createWH_4 )
        , ( "initHWH_0", jm_initHWH_0 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "getInstanceAnimation_1", jm_getInstanceAnimation_1 ) ]
        BaseImageAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpriteIndexedAnimationFactory"
        [ ( "jm_createCWHDXY_7", jm_createCWHDXY_7 ), ( "jm_createCWH_5", jm_createCWH_5 ), ( "jm_createWH_4", jm_createWH_4 ), ( "jm_initHWH_0", jm_initHWH_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getInstanceAnimation_1", jm_getInstanceAnimation_1 ), ( "jnew_8", jnew_8 ), ( "jinit_8", jinit_8 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_8 : JR.Method
jinit_8 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "basicColorArray", "" ), ( "sequenceArray", "" ), ( "width", "I" ), ( "height", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseImageAnimationFactory.jinit_7 JR.this [ (JR.local "image"), (JR.local "sequenceArray"), (JR.local "width"), (JR.local "height"), (JR.local "dx"), (JR.local "dy"), (JR.local "animationBehaviorFactory") ]),
                JR.exec (JR.setField "animationFactorySpriteScaleUtil" "" JR.this (JR.callStatic AnimationFactorySpriteScaleUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "basicColorArray" "" JR.this (JR.field "ZERO_ARRAY" (JR.callStatic BasicColorUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "basicColorArray" "" JR.this (JR.local "basicColorArray")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_8 : JR.Method
jnew_8 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_8 jheap jthis jargs


jm_createCWHDXY_7 : JR.Method
jm_createCWHDXY_7 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "basicColorArray", "" ), ( "width", "I" ), ( "height", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_8 [ (JR.local "image"), (JR.local "basicColorArray"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.local "width"), (JR.local "height"), (JR.local "dx"), (JR.local "dy"), (JR.local "animationBehaviorFactory") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createCWH_5 : JR.Method
jm_createCWH_5 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "basicColorArray", "" ), ( "width", "I" ), ( "height", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.declare "spriteIndexedAnimationFactory" "" (JR.new jnew_8 [ (JR.local "image"), (JR.local "basicColorArray"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.local "width"), (JR.local "height"), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]), 
                    JR.exec (JR.invoke "initHWH_0" (JR.local "spriteIndexedAnimationFactory") []), 
                    JR.return (JR.local "spriteIndexedAnimationFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_createWH_4 : JR.Method
jm_createWH_4 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_8 [ (JR.local "image"), (JR.field "ZERO_ARRAY" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.local "width"), (JR.local "height"), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initHWH_0 : JR.Method
jm_initHWH_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN69074 -> (JR.setField "dx" "I" (JR.lit jtN69074) (JR.map JR.neg ((JR.map2 JR.shr (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 2))))))), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN69143 -> (JR.setField "dy" "I" (JR.lit jtN69143) (JR.map JR.neg ((JR.map2 JR.shr (JR.field "height" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 2))))))), 
                    JR.ifElse (JR.callStatic AndroidUtil.jm_isAndroid_0 []) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN69232 -> (JR.setField "dx" "I" (JR.lit jtN69232) (JR.map2 JR.add (JR.field "dx" (JR.lit jtN69232)) (JR.int 3))))) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "sprite" "" (JR.invoke "createImage_5" (JR.thisField "animationFactorySpriteScaleUtil") [ (JR.invoke "getImage_0" JR.this []), (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "height" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "scaleWidth" (JR.thisField "scaleProperties")), (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]), 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0)) (JR.map2 JR.notEquals (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0))) (JR.run [ 
                        JR.return (JR.new AdjustedSpriteIndexedAnimation.jnew_6 [ (JR.local "sprite"), (JR.invoke "getImage_0" JR.this []), (JR.thisField "basicColorArray"), (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) (JR.run [ 
                        JR.return (JR.new SpriteIndexedAnimation.jnew_4 [ (JR.local "sprite"), (JR.invoke "getImage_0" JR.this []), (JR.thisField "basicColorArray"), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) ])
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

