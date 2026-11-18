module Org.Allbinary.Animation.Image.Sprite.ImageCaptionIndexedAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image.sprite
-}

import JR
import Org.Allbinary.Animation.AnimationBehaviorFactory as AnimationBehaviorFactory
import Org.Allbinary.Image.AnimationFactoryImageScaleUtil as AnimationFactoryImageScaleUtil
import Org.Allbinary.Image.Sprite.AnimationFactorySpriteScaleUtil as AnimationFactorySpriteScaleUtil
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Graphics.Color.BasicColorUtil as BasicColorUtil
import Org.Allbinary.Animation.Caption.CaptionIndexedAnimation as CaptionIndexedAnimation
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Animation.Image.ImageAnimation as ImageAnimation
import Org.Allbinary.Media.ScaleProperties as ScaleProperties
import Org.Allbinary.Animation.Image.Sprite.SpriteIndexedAnimation as SpriteIndexedAnimation


jclass : String
jclass =
    "ImageCaptionIndexedAnimationFactory"


jchain : List String
jchain =
    [ "ImageCaptionIndexedAnimationFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "animationFactoryImageScaleUtil", JR.defaultOf "" ), ( "animationFactorySpriteScaleUtil", JR.defaultOf "" ), ( "captionImage", JR.defaultOf "" ), ( "spriteMovieImage", JR.defaultOf "" ), ( "frameWidth", JR.defaultOf "I" ), ( "frameHeight", JR.defaultOf "I" ), ( "captionDx", JR.defaultOf "I" ), ( "captionDy", JR.defaultOf "I" ), ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ), ( "time", JR.defaultOf "I" ), ( "soundInterface", JR.defaultOf "" ), ( "scaleProperties", JR.defaultOf "" ), ( "animationBehaviorFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageCaptionIndexedAnimationFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_11", jnew_11 ), ( "jinit_11", jinit_11 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_11 : JR.Method
jinit_11 jheap jthis jargs =
    JR.method [ ( "captionImage", "" ), ( "spriteMovieImage", "" ), ( "soundInterface", "" ), ( "frameWidth", "I" ), ( "frameHeight", "I" ), ( "captionDx", "I" ), ( "captionDy", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "time", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "animationFactoryImageScaleUtil" "" JR.this (JR.callStatic AnimationFactoryImageScaleUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "animationFactorySpriteScaleUtil" "" JR.this (JR.callStatic AnimationFactorySpriteScaleUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "scaleProperties" "" JR.this ScaleProperties.jstatic_instance),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "animationBehaviorFactory") (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.str "Using default AnimationBehaviorFactory with IndexedAnimationFactory"), JR.this ]) ]) identity, 
                    JR.exec (JR.setField "captionImage" "" JR.this (JR.local "captionImage")), 
                    JR.exec (JR.setField "spriteMovieImage" "" JR.this (JR.local "spriteMovieImage")), 
                    JR.exec (JR.setField "frameWidth" "I" JR.this (JR.local "frameWidth")), 
                    JR.exec (JR.setField "frameHeight" "I" JR.this (JR.local "frameHeight")), 
                    JR.exec (JR.setField "captionDx" "I" JR.this (JR.local "captionDx")), 
                    JR.exec (JR.setField "captionDy" "I" JR.this (JR.local "captionDy")), 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")), 
                    JR.exec (JR.setField "time" "I" JR.this (JR.local "time")), 
                    JR.exec (JR.setField "soundInterface" "" JR.this (JR.local "soundInterface")), 
                    JR.exec (JR.setField "animationBehaviorFactory" "" JR.this (JR.local "animationBehaviorFactory")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_11 : JR.Method
jnew_11 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_11 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "scaledImage" "" (JR.invoke "createImage_5" (JR.thisField "animationFactoryImageScaleUtil") [ (JR.thisField "captionImage"), (JR.invoke "getWidth_0" (JR.thisField "captionImage") []), (JR.invoke "getHeight_0" (JR.thisField "captionImage") []), (JR.field "scaleWidth" (JR.thisField "scaleProperties")), (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]), 
                    JR.declare "animationInterface" "" (JR.new ImageAnimation.jnew_2 [ (JR.local "scaledImage"), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]), 
                    JR.declare "sprite" "" (JR.invoke "createImage_5" (JR.thisField "animationFactorySpriteScaleUtil") [ (JR.thisField "spriteMovieImage"), (JR.thisField "frameWidth"), (JR.thisField "frameHeight"), (JR.field "scaleWidth" (JR.thisField "scaleProperties")), (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]), 
                    JR.declare "movieIndexedAnimationInterface" "" (JR.new SpriteIndexedAnimation.jnew_4 [ (JR.local "sprite"), (JR.thisField "spriteMovieImage"), (JR.field "ZERO_ARRAY" (JR.callStatic BasicColorUtil.jm_getInstance_0 [])), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]), 
                    JR.declare "player" "" (JR.invoke "getPlayerP_0" (JR.thisField "soundInterface") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "player") JR.null) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Sound Was not Initialized") ]) ]) identity, 
                    JR.return (JR.new CaptionIndexedAnimation.jnew_9 [ (JR.local "animationInterface"), (JR.local "movieIndexedAnimationInterface"), (JR.local "player"), (JR.thisField "captionDx"), (JR.thisField "captionDy"), (JR.thisField "dx"), (JR.thisField "dy"), (JR.thisField "time"), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialScale_1 : JR.Method
jm_setInitialScale_1 jheap jthis jargs =
    JR.method [ ( "scaleProperties", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "scaleProperties" "" JR.this (JR.local "scaleProperties")) ])
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

