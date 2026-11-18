module Org.Allbinary.Animation.Caption.CaptionIndexedAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.caption
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.Animation.AnimationEventHandler as AnimationEventHandler
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "CaptionIndexedAnimation"


jchain : List String
jchain =
    [ "CaptionIndexedAnimation" ]
        ++ IndexedAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ [ ( "animationInterface", JR.defaultOf "" ), ( "movieIndexedAnimationInterface", JR.defaultOf "" ), ( "captionDx", JR.defaultOf "I" ), ( "captionDy", JR.defaultOf "I" ), ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ), ( "time", JR.defaultOf "I" ), ( "END_EVENT", JR.defaultOf "" ), ( "timeDelayHelper", JR.defaultOf "" ), ( "player", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "nextFrame_0", jm_nextFrame_0 )
        , ( "isLastFrame_0", jm_isLastFrame_0 )
        , ( "previousFrame_0", jm_previousFrame_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paintThreedXYZ_4", jm_paintThreedXYZ_4 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CaptionIndexedAnimation"
        [ ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_isLastFrame_0", jm_isLastFrame_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paintThreedXYZ_4", jm_paintThreedXYZ_4 ), ( "jnew_9", jnew_9 ), ( "jinit_9", jinit_9 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_9 : JR.Method
jinit_9 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "movieIndexedAnimationInterface", "" ), ( "player", "" ), ( "captionDx", "I" ), ( "captionDy", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "time", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")), 
                    JR.exec (JR.setField "movieIndexedAnimationInterface" "" JR.this (JR.local "movieIndexedAnimationInterface")), 
                    JR.exec (JR.setField "captionDx" "I" JR.this (JR.local "captionDx")), 
                    JR.exec (JR.setField "captionDy" "I" JR.this (JR.local "captionDy")), 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")), 
                    JR.exec (JR.setField "time" "I" JR.this (JR.local "time")), 
                    JR.exec (JR.setField "END_EVENT" "" JR.this (JR.new AllBinaryEventObject.jnew_1 [ JR.this ])), 
                    JR.declare "timePerFrame" "I" (JR.map2 JR.div (JR.thisField "time") (JR.invoke "getSize_0" JR.this [])), 
                    JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.local "timePerFrame") ])), 
                    JR.exec (JR.setField "player" "" JR.this (JR.local "player")), 
                    JR.exec (JR.invoke "start_0" (JR.thisField "player") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_9 : JR.Method
jnew_9 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_9 jheap jthis jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isTime_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.invoke "nextFrame_0" (JR.thisField "movieIndexedAnimationInterface") []) ]) identity, 
                    JR.ifElse (JR.invoke "isLastFrame_0" JR.this []) (JR.run [ 
                        JR.exec (JR.invoke "fireEvent_1" (JR.callStatic AnimationEventHandler.jm_getInstance_0 []) [ (JR.thisField "END_EVENT") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isLastFrame_0 : JR.Method
jm_isLastFrame_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getFrame_0" (JR.thisField "movieIndexedAnimationInterface") []) (JR.map2 JR.sub (JR.invoke "getSize_0" JR.this []) (JR.int 1))) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_previousFrame_0 : JR.Method
jm_previousFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "previousFrame_0" (JR.thisField "movieIndexedAnimationInterface") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" (JR.thisField "movieIndexedAnimationInterface") [ (JR.local "index") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getFrame_0" (JR.thisField "movieIndexedAnimationInterface") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" (JR.thisField "movieIndexedAnimationInterface") []) ])
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


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.map2 JR.add (JR.local "x") (JR.thisField "captionDx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "captionDy")) ]), 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "movieIndexedAnimationInterface") [ (JR.local "graphics"), (JR.map2 JR.add (JR.map2 JR.add (JR.local "x") (JR.thisField "captionDx")) (JR.thisField "dx")), (JR.map2 JR.add (JR.map2 JR.add (JR.local "y") (JR.thisField "captionDy")) (JR.thisField "dy")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreedXYZ_4 : JR.Method
jm_paintThreedXYZ_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintThreedXYZ_4" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.map2 JR.add (JR.local "x") (JR.thisField "captionDx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "captionDy")), (JR.local "z") ]), 
                    JR.exec (JR.invoke "paintThreedXYZ_4" (JR.thisField "movieIndexedAnimationInterface") [ (JR.local "graphics"), (JR.map2 JR.add (JR.map2 JR.add (JR.local "x") (JR.thisField "captionDx")) (JR.thisField "dx")), (JR.map2 JR.add (JR.map2 JR.add (JR.local "y") (JR.thisField "captionDy")) (JR.thisField "dy")), (JR.local "z") ]) ])
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

