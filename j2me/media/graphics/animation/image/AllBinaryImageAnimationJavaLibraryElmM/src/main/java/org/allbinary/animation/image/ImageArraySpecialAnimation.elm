module Org.Allbinary.Animation.Image.ImageArraySpecialAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Animation.Image.ImageArrayAnimation as ImageArrayAnimation
import Org.Allbinary.Animation.Special.SpecialAnimationInterface as SpecialAnimationInterface
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "ImageArraySpecialAnimation"


jchain : List String
jchain =
    [ "ImageArraySpecialAnimation" ]
        ++ ImageArrayAnimation.jchain
        ++ SpecialAnimationInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    ImageArrayAnimation.jfields ++ [ ( "timeDelayHelper", JR.defaultOf "" ), ( "loopCount", JR.defaultOf "I" ), ( "loopCountTotal", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getLoopCount_0", jm_getLoopCount_0 )
        , ( "setLastFrame_0", jm_setLastFrame_0 )
        , ( "reset_0", jm_reset_0 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "isComplete_0", jm_isComplete_0 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        ImageArrayAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageArraySpecialAnimation"
        [ ( "jm_getLoopCount_0", jm_getLoopCount_0 ), ( "jm_setLastFrame_0", jm_setLastFrame_0 ), ( "jm_reset_0", jm_reset_0 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_isComplete_0", jm_isComplete_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ImageArrayAnimation.jinit_2 JR.this [ (JR.local "imageArray"), (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 270) ])),
                JR.exec (JR.setField "loopCount" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "loopCountTotal" "I" JR.this (JR.int 1)),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "reset_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getLoopCount_0 : JR.Method
jm_getLoopCount_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "loopCount") ])
        (jregister jheap)
        jthis
        jargs


jm_setLastFrame_0 : JR.Method
jm_setLastFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setIndex_1" (JR.thisField "circularIndexUtil") [ (JR.map2 JR.sub (JR.invoke "getSize_0" (JR.thisField "circularIndexUtil") []) (JR.int 1)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_reset_0 : JR.Method
jm_reset_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.map2 JR.sub (JR.invoke "getSize_0" JR.this []) (JR.int 1)) ]), 
                    JR.exec (JR.setField "loopCount" "I" JR.this (JR.int 0)) ])
        (jregister jheap)
        jthis
        jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getFrame_0" JR.this []) (JR.int 0)) (JR.run [ 
                        JR.ifElse (JR.invoke "isTime_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "previousFrame_0" JR.this []), 
                            JR.ifElse (JR.map2 JR.equals (JR.invoke "getFrame_0" JR.this []) (JR.int 0)) (JR.run [ 
                                JR.exec (JR.postUpdate (JR.thisField "loopCount") (\jwN68635 -> (JR.setField "loopCount" "I" JR.this (JR.lit jwN68635))) JR.increment) ]) identity ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isComplete_0 : JR.Method
jm_isComplete_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.less (JR.thisField "loopCount") (JR.thisField "loopCountTotal")) (JR.map2 JR.notEquals (JR.invoke "getFrame_0" JR.this []) (JR.int 0))) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setLocal "x" "I" (JR.map2 JR.sub (JR.invoke "getLastHalfWidth_0" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []) []) ((JR.map2 JR.shr (JR.invoke "getWidth_0" (JR.invoke "getImage_1" JR.this [ (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []) ]) []) (JR.int 1))))), 
                    JR.exec (JR.setLocal "y" "I" (JR.int 5)), 
                    JR.exec (JR.callVia ImageArrayAnimation.jvtable "paintXY_3" JR.this [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ])
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

