module Org.Allbinary.Animation.Image.Sprite.OneRowSpriteIndexedAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image.sprite
-}

import JR
import Org.Allbinary.Animation.Image.Sprite.AdjustedSpriteIndexedAnimation as AdjustedSpriteIndexedAnimation
import Org.Allbinary.Image.Sprite.AnimationFactorySpriteScaleUtil as AnimationFactorySpriteScaleUtil
import Org.Allbinary.Animation.Image.BaseImageAnimationFactory as BaseImageAnimationFactory
import Org.Allbinary.Graphics.Color.BasicColorUtil as BasicColorUtil
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.Image.Sprite.SpriteIndexedAnimation as SpriteIndexedAnimation


jclass : String
jclass =
    "OneRowSpriteIndexedAnimationFactory"


jchain : List String
jchain =
    [ "OneRowSpriteIndexedAnimationFactory" ]
        ++ BaseImageAnimationFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseImageAnimationFactory.jfields ++ [ ( "animationFactorySpriteScaleUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createFactoryDX_3", jm_createFactoryDX_3 )
        , ( "createFactoryDXY_4", jm_createFactoryDXY_4 )
        , ( "createFactoryWH_4", jm_createFactoryWH_4 )
        , ( "createFactory_2", jm_createFactory_2 )
        , ( "init_2", jm_init_2 )
        , ( "initW_1", jm_initW_1 )
        , ( "getInstance_1", jm_getInstance_1 ) ]
        BaseImageAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OneRowSpriteIndexedAnimationFactory"
        [ ( "jm_createFactoryDX_3", jm_createFactoryDX_3 ), ( "jm_createFactoryDXY_4", jm_createFactoryDXY_4 ), ( "jm_createFactoryWH_4", jm_createFactoryWH_4 ), ( "jm_createFactory_2", jm_createFactory_2 ), ( "jm_init_2", jm_init_2 ), ( "jm_initW_1", jm_initW_1 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
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
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_createFactoryDX_3 : JR.Method
jm_createFactoryDX_3 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "dx", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.declare "oneRowSpriteIndexedAnimationFactory" "" (JR.new jnew_7 [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]), 
                    JR.exec (JR.invoke "initW_1" (JR.local "oneRowSpriteIndexedAnimationFactory") [ (JR.local "dx") ]), 
                    JR.return (JR.local "oneRowSpriteIndexedAnimationFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_createFactoryDXY_4 : JR.Method
jm_createFactoryDXY_4 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.declare "oneRowSpriteIndexedAnimationFactory" "" (JR.new jnew_7 [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]), 
                    JR.exec (JR.invoke "init_2" (JR.local "oneRowSpriteIndexedAnimationFactory") [ (JR.local "dx"), (JR.local "dy") ]), 
                    JR.return (JR.local "oneRowSpriteIndexedAnimationFactory") ])
        (jregister jheap)
        jthis
        jargs


jm_createFactoryWH_4 : JR.Method
jm_createFactoryWH_4 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_7 [ (JR.local "image"), (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []), (JR.local "width"), (JR.local "height"), (JR.int 0), (JR.int 0), (JR.local "animationBehaviorFactory") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createFactory_2 : JR.Method
jm_createFactory_2 jheap jthis jargs =
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
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN69033 -> (JR.setField "dx" "I" (JR.lit jtN69033) (JR.local "dx")))), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN69069 -> (JR.setField "dy" "I" (JR.lit jtN69069) (JR.local "dy")))) ])
        (jregister jheap)
        jthis
        jargs


jm_initW_1 : JR.Method
jm_initW_1 jheap jthis jargs =
    JR.method [ ( "dx", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "init_2" JR.this [ (JR.local "dx"), (JR.int 0) ]), 
                    JR.exec (JR.andThen (JR.thisField "animationFactoryInitializationVisitor") (\jtN69203 -> (JR.setField "dx" "I" (JR.lit jtN69203) (JR.map2 JR.add (JR.field "dx" (JR.lit jtN69203)) (JR.map JR.neg ((JR.map2 JR.shr (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 2)))))))) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "sprite" "" (JR.invoke "createImage_5" (JR.thisField "animationFactorySpriteScaleUtil") [ (JR.invoke "getImage_0" JR.this []), (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "height" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "scaleWidth" (JR.thisField "scaleProperties")), (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]), 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0)) (JR.map2 JR.notEquals (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0))) (JR.run [ 
                        JR.return (JR.new AdjustedSpriteIndexedAnimation.jnew_6 [ (JR.local "sprite"), (JR.invoke "getImage_0" JR.this []), (JR.field "ZERO_ARRAY" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) (JR.run [ 
                        JR.return (JR.new SpriteIndexedAnimation.jnew_4 [ (JR.local "sprite"), (JR.invoke "getImage_0" JR.this []), (JR.field "ZERO_ARRAY" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) ])
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

