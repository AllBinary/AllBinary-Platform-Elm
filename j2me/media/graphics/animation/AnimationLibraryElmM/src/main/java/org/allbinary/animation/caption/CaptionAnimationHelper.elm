module Org.Allbinary.Animation.Caption.CaptionAnimationHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.caption
-}

import JR
import Org.Allbinary.Animation.AnimationBehavior as AnimationBehavior
import Org.Allbinary.Animation.Caption.CaptionAnimation as CaptionAnimation
import Org.Allbinary.Animation.Caption.CaptionAnimationHelperBase as CaptionAnimationHelperBase
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Animation.Text.TextAnimation as TextAnimation
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "CaptionAnimationHelper"


jchain : List String
jchain =
    [ "CaptionAnimationHelper" ]
        ++ CaptionAnimationHelperBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    CaptionAnimationHelperBase.jfields ++ [ ( "timeHelper", JR.defaultOf "" ), ( "textAnimation", JR.defaultOf "" ), ( "captionAnimation", JR.defaultOf "" ), ( "animation", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "isShowing_0", jm_isShowing_0 )
        , ( "tick_0", jm_tick_0 )
        , ( "update_2", jm_update_2 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        CaptionAnimationHelperBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CaptionAnimationHelper"
        [ ( "jm_isShowing_0", jm_isShowing_0 ), ( "jm_tick_0", jm_tick_0 ), ( "jm_update_2", jm_update_2 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "captionAnimation", "" ), ( "captionDx", "I" ), ( "captionDy", "I" ), ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CaptionAnimationHelperBase.jinit_0 JR.this []),
                JR.exec (JR.setField "timeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 620) ])),
                JR.exec (JR.setField "textAnimation" "" JR.this (JR.new TextAnimation.jnew_2 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.callStatic AnimationBehavior.jm_getInstance_0 []) ])),
                JR.exec (JR.setField "animation" "" JR.this (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "captionAnimation" "" JR.this (JR.new CaptionAnimation.jnew_6 [ (JR.local "captionAnimation"), (JR.thisField "textAnimation"), (JR.local "captionDx"), (JR.local "captionDy"), (JR.local "dx"), (JR.local "dy") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_isShowing_0 : JR.Method
jm_isShowing_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "animation") (JR.thisField "captionAnimation")) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_tick_0 : JR.Method
jm_tick_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTime_1" (JR.thisField "timeHelper") [ (JR.field "startTime" (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.setField "animation" "" JR.this (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ])) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_update_2 : JR.Method
jm_update_2 jheap jthis jargs =
    JR.method [ ( "message", "" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setBasicColorP_1" (JR.thisField "textAnimation") [ (JR.local "basicColor") ]), 
                    JR.exec (JR.invoke "setText_1" (JR.thisField "textAnimation") [ (JR.local "message") ]), 
                    JR.exec (JR.setField "animation" "" JR.this (JR.thisField "captionAnimation")), 
                    JR.exec (JR.invoke "setStartTimeTNT_0" (JR.thisField "timeHelper") []) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animation") [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ])
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

