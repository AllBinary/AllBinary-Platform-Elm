module Org.Allbinary.Animation.Special.TitleAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.special
-}

import JR
import Org.Allbinary.Logic.ABSystemWrapper as ABSystemWrapper
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Animation.IndexedAnimationBehavior as IndexedAnimationBehavior
import JInteger
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.Special.SpecialAnimation as SpecialAnimation


jclass : String
jclass =
    "TitleAnimation"


jchain : List String
jchain =
    [ "TitleAnimation" ]
        ++ SpecialAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    SpecialAnimation.jfields ++ [ ( "systemWrapper", JR.defaultOf "" ), ( "deltaX", JR.defaultOf "F" ), ( "deltaY", JR.defaultOf "F" ), ( "deltaZ", JR.defaultOf "F" ), ( "basicColorArray", JR.defaultOf "" ), ( "dxArray", JR.defaultOf "" ), ( "dyArray", JR.defaultOf "" ), ( "widthP", JR.defaultOf "I" ), ( "animationInterfaceArray", JR.defaultOf "" ), ( "sizeP", JR.defaultOf "I" ), ( "y", JR.defaultOf "I" ), ( "lastFrameStartTime", JR.defaultOf "J" ), ( "displayInfoSingleton", JR.defaultOf "" ), ( "CLEAR_COLOR", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createAnimation_6", jm_createAnimation_6 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "isComplete_0", jm_isComplete_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "setLastFrame_0", jm_setLastFrame_0 )
        , ( "reset_0", jm_reset_0 )
        , ( "previousFrame_0", jm_previousFrame_0 )
        , ( "paintFrameXY_4", jm_paintFrameXY_4 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        SpecialAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TitleAnimation"
        [ ( "jm_createAnimation_6", jm_createAnimation_6 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_isComplete_0", jm_isComplete_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_setLastFrame_0", jm_setLastFrame_0 ), ( "jm_reset_0", jm_reset_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_paintFrameXY_4", jm_paintFrameXY_4 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "animationInterfaceArray", "" ), ( "basicColorArray", "" ), ( "dxArray", "" ), ( "dyArray", "" ), ( "y", "I" ), ( "width", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SpecialAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "systemWrapper" "" JR.this (JR.callStatic ABSystemWrapper.jm_getInstance_0 [])),
                JR.exec (JR.setField "displayInfoSingleton" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "CLEAR_COLOR" "" JR.this (JR.field "CLEAR_COLOR" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "lastFrameStartTime" "J" JR.this (JR.invoke "currentTimeMillis_0" (JR.thisField "systemWrapper") [])), 
                    JR.exec (JR.setField "animationInterfaceArray" "" JR.this (JR.local "animationInterfaceArray")), 
                    JR.exec (JR.setField "sizeP" "I" JR.this (JR.alength (JR.thisField "animationInterfaceArray"))), 
                    JR.exec (JR.setField "basicColorArray" "" JR.this (JR.local "basicColorArray")), 
                    JR.exec (JR.setField "dxArray" "" JR.this (JR.local "dxArray")), 
                    JR.exec (JR.setField "dyArray" "" JR.this (JR.local "dyArray")), 
                    JR.exec (JR.setField "y" "I" JR.this (JR.local "y")), 
                    JR.exec (JR.setField "widthP" "I" JR.this (JR.local "width")), 
                    JR.exec (JR.invoke "reset_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_createAnimation_6 : JR.Method
jm_createAnimation_6 jheap jthis jargs =
    JR.method [ ( "animationInterfaceArray", "" ), ( "basicColorArray", "" ), ( "dxArray", "" ), ( "dyArray", "" ), ( "y", "I" ), ( "width", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_7 [ (JR.local "animationInterfaceArray"), (JR.local "basicColorArray"), (JR.local "dxArray"), (JR.local "dyArray"), (JR.local "y"), (JR.local "width"), (JR.new IndexedAnimationBehavior.jnew_2 [ (JR.int 1), (JR.int 250) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "currentTime" "J" (JR.invoke "currentTimeMillis_0" (JR.thisField "systemWrapper") []), 
                    JR.declare "totalTimeElapsed" "J" (JR.map2 JR.sub (JR.local "currentTime") (JR.thisField "lastFrameStartTime")), 
                    JR.declare "indexedAnimationBehavior" "" (JR.invoke "getAnimationBehavior_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "totalTimeElapsed") (JR.field "frameDelayTime" (JR.local "indexedAnimationBehavior"))) (JR.run [ 
                        JR.exec (JR.invoke "previousFrame_0" JR.this []), 
                        JR.exec (JR.setField "lastFrameStartTime" "J" JR.this (JR.local "currentTime")) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getFrame_0" (JR.aget (JR.thisField "animationInterfaceArray") (JR.int 0)) []) (JR.int 0)) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "indexedAnimationBehavior") (\jtN69667 -> (JR.postUpdate (JR.field "loopIndex" (JR.lit jtN69667)) (\jwN69667 -> (JR.setField "loopIndex" "I" (JR.lit jtN69667) (JR.lit jwN69667))) JR.increment))) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isComplete_0 : JR.Method
jm_isComplete_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "indexedAnimationBehavior" "" (JR.invoke "getAnimationBehavior_0" JR.this []), 
                    JR.ifElse (JR.or (JR.or (JR.map2 JR.equals (JR.field "loopTotal" (JR.local "indexedAnimationBehavior")) (JR.map JR.neg (JR.int 1))) (JR.map2 JR.less (JR.field "loopIndex" (JR.local "indexedAnimationBehavior")) (JR.field "loopTotal" (JR.local "indexedAnimationBehavior")))) (JR.map2 JR.notEquals (JR.invoke "getFrame_0" JR.this []) (JR.int 0))) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) ])
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


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" (JR.aget (JR.thisField "animationInterfaceArray") (JR.int 0)) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getFrame_0" (JR.aget (JR.thisField "animationInterfaceArray") (JR.int 0)) []) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "frame", "I" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "sizeP")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70319 -> (JR.setLocal "index" "I" (JR.lit jwN70319))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "setFrame_1" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index")) [ (JR.local "frame") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_setLastFrame_0 : JR.Method
jm_setLastFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.map2 JR.sub (JR.invoke "getSize_0" JR.this []) (JR.int 1)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_reset_0 : JR.Method
jm_reset_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setLastFrame_0" JR.this []), 
                    JR.declare "indexedAnimationBehavior" "" ((JR.invoke "getAnimationBehavior_0" JR.this [])), 
                    JR.exec (JR.invoke "reset_0" (JR.local "indexedAnimationBehavior") []) ])
        (jregister jheap)
        jthis
        jargs


jm_previousFrame_0 : JR.Method
jm_previousFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "sizeP")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70704 -> (JR.setLocal "index" "I" (JR.lit jwN70704))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "previousFrame_0" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index")) []) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_paintFrameXY_4 : JR.Method
jm_paintFrameXY_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "frame", "I" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.local "frame") ]), 
                    JR.exec (JR.invoke "paintXY_3" JR.this [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "ax", "I" ), ( "ay", "I" ) ] ""
        (JR.run [ 
                    JR.declare "x" "I" (JR.int 0), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "widthP") JInteger.jstatic_MIN_VALUE) (JR.run [ 
                        JR.exec (JR.setLocal "x" "I" ((JR.map2 JR.div ((JR.map2 JR.sub (JR.invoke "getLastWidth_0" (JR.thisField "displayInfoSingleton") []) (JR.thisField "widthP"))) (JR.int 2)))) ]) identity, 
                    JR.declare "deltaX" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "deltaY" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "sizeP")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71530 -> (JR.setLocal "index" "I" (JR.lit jwN71530))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "deltaX" "I" (JR.map2 JR.add (JR.aget (JR.thisField "dxArray") (JR.local "index")) (JR.local "x"))), 
                        JR.exec (JR.setLocal "deltaY" "I" (JR.map2 JR.add (JR.aget (JR.thisField "dyArray") (JR.local "index")) (JR.thisField "y"))), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.thisField "basicColorArray") (JR.local "index")) (JR.thisField "CLEAR_COLOR")) (JR.run [ 
                            JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.aget (JR.thisField "basicColorArray") (JR.local "index")) ]) ]) identity, 
                        JR.exec (JR.invoke "paintXY_3" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index")) [ (JR.local "graphics"), (JR.local "deltaX"), (JR.local "deltaY") ]) ]) ] ])
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

