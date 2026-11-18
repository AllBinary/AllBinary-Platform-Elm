module Org.Allbinary.Animation.Image.Sprite.AllBinarySpriteRotationAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image.sprite
-}

import JR
import Org.Allbinary.Animation.Image.Sprite.AllBinaryAdjustedSpriteRotationAnimation as AllBinaryAdjustedSpriteRotationAnimation
import Org.Allbinary.Animation.Image.Sprite.AllBinarySpriteRotationAnimation as AllBinarySpriteRotationAnimation
import Org.Allbinary.Animation.AnimationBehaviorFactory as AnimationBehaviorFactory
import Org.Allbinary.Image.Sprite.AnimationFactorySpriteScaleUtil as AnimationFactorySpriteScaleUtil
import Org.Allbinary.Animation.Image.BaseImageAnimationFactory as BaseImageAnimationFactory
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterface


jclass : String
jclass =
    "AllBinarySpriteRotationAnimationFactory"


jchain : List String
jchain =
    [ "AllBinarySpriteRotationAnimationFactory" ]
        ++ BaseImageAnimationFactory.jchain
        ++ ProceduralAnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseImageAnimationFactory.jfields ++ [ ( "animationFactorySpriteScaleUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createWHDY_4", jm_createWHDY_4 )
        , ( "createWH_2", jm_createWH_2 )
        , ( "createDXY_4", jm_createDXY_4 )
        , ( "createDXYQ_4", jm_createDXYQ_4 )
        , ( "createQ_2", jm_createQ_2 )
        , ( "createWHF_2", jm_createWHF_2 )
        , ( "init_2", jm_init_2 )
        , ( "initWH_2", jm_initWH_2 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "getInstanceAnimation_1", jm_getInstanceAnimation_1 ) ]
        BaseImageAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinarySpriteRotationAnimationFactory"
        [ ( "jm_createWHDY_4", jm_createWHDY_4 ), ( "jm_createWH_2", jm_createWH_2 ), ( "jm_createDXY_4", jm_createDXY_4 ), ( "jm_createDXYQ_4", jm_createDXYQ_4 ), ( "jm_createQ_2", jm_createQ_2 ), ( "jm_createWHF_2", jm_createWHF_2 ), ( "jm_init_2", jm_init_2 ), ( "jm_initWH_2", jm_initWH_2 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getInstanceAnimation_1", jm_getInstanceAnimation_1 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "sequenceArray", "" ), ( "width", "I" ), ( "height", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseImageAnimationFactory.jinit_7 JR.this [ (JR.local "image"), (JR.local "sequenceArray"), (JR.local "width"), (JR.local "height"), (JR.local "dx"), (JR.local "dy"), (JR.local "animationBehaviorFactory") ]),
                JR.exec (JR.setField "animationFactorySpriteScaleUtil" "" JR.this (JR.callStatic AnimationFactorySpriteScaleUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "animationBehaviorFactory") (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.str "Using default AnimationBehaviorFactory with IndexedAnimationFactory"), JR.this ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_createWHDY_4 : JR.Method
jm_createWHDY_4 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.declare "spriteRotationAnimationFactory" "" (JR.new jnew_7 [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), ((JR.map2 JR.shr (JR.invoke "getHeight_0" (JR.local "image") []) (JR.int 2))), ((JR.map2 JR.shr (JR.invoke "getHeight_0" (JR.local "image") []) (JR.int 2))), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]), 
                    JR.exec (JR.invoke "initWH_2" (JR.local "spriteRotationAnimationFactory") [ (JR.local "dx"), (JR.local "dy") ]), 
                    JR.return (JR.local "spriteRotationAnimationFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_createWH_2 : JR.Method
jm_createWH_2 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic jm_createWHDY_4 [ (JR.local "image"), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createDXY_4 : JR.Method
jm_createDXY_4 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.declare "spriteRotationAnimationFactory" "" (JR.new jnew_7 [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]), 
                    JR.exec (JR.invoke "init_2" (JR.local "spriteRotationAnimationFactory") [ (JR.local "dx"), (JR.local "dy") ]), 
                    JR.return (JR.local "spriteRotationAnimationFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_createDXYQ_4 : JR.Method
jm_createDXYQ_4 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.declare "spriteRotationAnimationFactory" "" (JR.new jnew_7 [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), ((JR.map2 JR.shr (JR.invoke "getHeight_0" (JR.local "image") []) (JR.int 2))), ((JR.map2 JR.shr (JR.invoke "getHeight_0" (JR.local "image") []) (JR.int 2))), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]), 
                    JR.exec (JR.invoke "init_2" (JR.local "spriteRotationAnimationFactory") [ (JR.local "dx"), (JR.local "dy") ]), 
                    JR.return (JR.local "spriteRotationAnimationFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_createQ_2 : JR.Method
jm_createQ_2 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_7 [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), ((JR.map2 JR.shr (JR.invoke "getHeight_0" (JR.local "image") []) (JR.int 2))), ((JR.map2 JR.shr (JR.invoke "getHeight_0" (JR.local "image") []) (JR.int 2))), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createWHF_2 : JR.Method
jm_createWHF_2 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_7 [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN70029 -> (JR.setField "dx" "I" (JR.lit jtN70029) (JR.local "dx")))), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN70065 -> (JR.setField "dy" "I" (JR.lit jtN70065) (JR.local "dy")))) ])
        (jregister jheap)
        jthis
        jargs


jm_initWH_2 : JR.Method
jm_initWH_2 jheap jthis jargs =
    JR.method [ ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "init_2" JR.this [ (JR.local "dx"), (JR.local "dy") ]), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN70203 -> (JR.setField "dx" "I" (JR.lit jtN70203) (JR.map2 JR.add (JR.field "dx" (JR.lit jtN70203)) (JR.map2 JR.div (JR.map JR.neg (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor"))) (JR.int 5)))))), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN70264 -> (JR.setField "dy" "I" (JR.lit jtN70264) (JR.map2 JR.add (JR.field "dy" (JR.lit jtN70264)) (JR.map2 JR.div (JR.map JR.neg (JR.field "height" (JR.thisField "animationFactoryInitializationVisitor"))) (JR.int 5)))))) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "sprite" "" (JR.invoke "createImage_5" (JR.thisField "animationFactorySpriteScaleUtil") [ (JR.invoke "getImage_0" JR.this []), (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "height" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "scaleWidth" (JR.thisField "scaleProperties")), (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]), 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0)) (JR.map2 JR.notEquals (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0))) (JR.run [ 
                        JR.return (JR.new AllBinaryAdjustedSpriteRotationAnimation.jnew_5 [ (JR.local "sprite"), (JR.invoke "getImage_0" JR.this []), (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) (JR.run [ 
                        JR.return (JR.new AllBinarySpriteRotationAnimation.jnew_3 [ (JR.local "sprite"), (JR.invoke "getImage_0" JR.this []), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) ])
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

