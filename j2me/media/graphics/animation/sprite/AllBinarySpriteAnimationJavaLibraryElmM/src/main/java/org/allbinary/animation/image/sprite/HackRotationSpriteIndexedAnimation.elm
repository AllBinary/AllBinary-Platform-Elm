module Org.Allbinary.Animation.Image.Sprite.HackRotationSpriteIndexedAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image.sprite
-}

import JR
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.RotationAnimation as RotationAnimation


jclass : String
jclass =
    "HackRotationSpriteIndexedAnimation"


jchain : List String
jchain =
    [ "HackRotationSpriteIndexedAnimation" ]
        ++ RotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    RotationAnimation.jfields ++ [ ( "sprite", JR.defaultOf "" ), ( "image", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getAnimationSize_0", jm_getAnimationSize_0 )
        , ( "paintFrame_4", jm_paintFrame_4 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paint_1", jm_paint_1 )
        , ( "nextRotation_0", jm_nextRotation_0 )
        , ( "previousRotation_0", jm_previousRotation_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 ) ]
        RotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HackRotationSpriteIndexedAnimation"
        [ ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jm_paintFrame_4", jm_paintFrame_4 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_nextRotation_0", jm_nextRotation_0 ), ( "jm_previousRotation_0", jm_previousRotation_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "sprite", "" ), ( "image", "" ), ( "angleInfo", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RotationAnimation.jinit_3 JR.this [ (JR.local "angleInfo"), (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.map2 JR.div (JR.int 360) (JR.cast "I" (JR.invoke "getAngleIncrement_0" (JR.invoke "getAngleIncrementInfo_0" (JR.local "angleInfo") []) []))) ]), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "sprite" "" JR.this (JR.local "sprite")), 
                    JR.exec (JR.setField "image" "" JR.this (JR.local "image")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getAnimationSize_0 : JR.Method
jm_getAnimationSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_paintFrame_4 : JR.Method
jm_paintFrame_4 jheap jthis jargs =
    JR.method [ ( "g", "" ), ( "frame", "I" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.local "frame") ]), 
                    JR.exec (JR.invoke "paintXY_3" JR.this [ (JR.local "g"), (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "g", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPosition_2" (JR.thisField "sprite") [ (JR.local "x"), (JR.local "y") ]), 
                    JR.exec (JR.invoke "paint_1" JR.this [ (JR.local "g") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "g", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "sprite") [ (JR.local "g") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_nextRotation_0 : JR.Method
jm_nextRotation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "nextFrame_0" (JR.thisField "sprite") []) ])
        (jregister jheap)
        jthis
        jargs


jm_previousRotation_0 : JR.Method
jm_previousRotation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "prevFrame_0" (JR.thisField "sprite") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getRawFrameCount_0" (JR.thisField "sprite") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "frame", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" (JR.thisField "sprite") [ (JR.local "frame") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getFrame_0" (JR.thisField "sprite") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setSequence_1 : JR.Method
jm_setSequence_1 jheap jthis jargs =
    JR.method [ ( "sequence", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getSequence_0 : JR.Method
jm_getSequence_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []) ])
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

