module Org.Allbinary.Animation.Image.Sprite.AllBinarySpriteRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image.sprite
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Math.AngleInfo as AngleInfo
import Org.Allbinary.Animation.Image.Sprite.HackRotationSpriteIndexedAnimation as HackRotationSpriteIndexedAnimation


jclass : String
jclass =
    "AllBinarySpriteRotationAnimation"


jchain : List String
jchain =
    [ "AllBinarySpriteRotationAnimation" ]
        ++ HackRotationSpriteIndexedAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    HackRotationSpriteIndexedAnimation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "nextRotation_0", jm_nextRotation_0 )
        , ( "previousRotation_0", jm_previousRotation_0 )
        , ( "setFrameByDirection_1", jm_setFrameByDirection_1 )
        , ( "setFrameToAngle_1", jm_setFrameToAngle_1 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "adjustFrameToAngle_1", jm_adjustFrameToAngle_1 )
        , ( "adjustFrame_1", jm_adjustFrame_1 ) ]
        HackRotationSpriteIndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinarySpriteRotationAnimation"
        [ ( "jm_nextRotation_0", jm_nextRotation_0 ), ( "jm_previousRotation_0", jm_previousRotation_0 ), ( "jm_setFrameByDirection_1", jm_setFrameByDirection_1 ), ( "jm_setFrameToAngle_1", jm_setFrameToAngle_1 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_adjustFrameToAngle_1", jm_adjustFrameToAngle_1 ), ( "jm_adjustFrame_1", jm_adjustFrame_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "sprite", "" ), ( "image", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect HackRotationSpriteIndexedAnimation.jinit_4 JR.this [ (JR.local "sprite"), (JR.local "image"), (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.cast "S" ((JR.map2 JR.div (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 [])) (JR.invoke "getRawFrameCount_0" (JR.local "sprite") [])))) ]), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.invoke "getFrame_0" (JR.thisField "sprite") []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_nextRotation_0 : JR.Method
jm_nextRotation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "nextFrame_0" (JR.thisField "sprite") []), 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.invoke "getFrame_0" (JR.thisField "sprite") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_previousRotation_0 : JR.Method
jm_previousRotation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "prevFrame_0" (JR.thisField "sprite") []), 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.invoke "getFrame_0" (JR.thisField "sprite") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrameByDirection_1 : JR.Method
jm_setFrameByDirection_1 jheap jthis jargs =
    JR.method [ ( "direction", "" ) ] ""
        (JR.run [ 
                    JR.declare "angle" "" (JR.invoke "getFrameAngle_1" (JR.thisField "directionUtil") [ (JR.local "direction") ]), 
                    JR.exec (JR.invoke "adjustFrameToAngle_1" JR.this [ (JR.local "angle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrameToAngle_1 : JR.Method
jm_setFrameToAngle_1 jheap jthis jargs =
    JR.method [ ( "angle", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "adjustFrameToAngle_1" JR.this [ (JR.local "angle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" (JR.thisField "sprite") [ (JR.local "index") ]), 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.invoke "getFrame_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_adjustFrameToAngle_1 : JR.Method
jm_adjustFrameToAngle_1 jheap jthis jargs =
    JR.method [ ( "angle", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "adjustFrame_1" JR.this [ (JR.invoke "getValue_0" (JR.local "angle") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_adjustFrame_1 : JR.Method
jm_adjustFrame_1 jheap jthis jargs =
    JR.method [ ( "angle", "S" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.invoke "getFrameForAngle_2" (JR.thisField "frameUtil") [ (JR.local "angle"), (JR.cast "I" (JR.invoke "getAngleIncrement_0" (JR.invoke "getAngleIncrementInfo_0" (JR.thisField "angleInfo") []) [])) ]) ]) ])
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

