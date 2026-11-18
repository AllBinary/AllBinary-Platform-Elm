module Org.Allbinary.Animation.RotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Direction.DirectionUtil as DirectionUtil
import Org.Allbinary.Math.FrameUtil as FrameUtil
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation
import Org.Allbinary.Animation.RotationAnimationInterface as RotationAnimationInterface
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "RotationAnimation"


jchain : List String
jchain =
    [ "RotationAnimation" ]
        ++ IndexedAnimation.jchain
        ++ RotationAnimationInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ [ ( "frameUtil", JR.defaultOf "" ), ( "directionUtil", JR.defaultOf "" ), ( "angleInfo", JR.defaultOf "" ), ( "circularIndexUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "nextRotationX_0", jm_nextRotationX_0 )
        , ( "previousRotationX_0", jm_previousRotationX_0 )
        , ( "nextRotation_0", jm_nextRotation_0 )
        , ( "previousRotation_0", jm_previousRotation_0 )
        , ( "nextRotationZ_0", jm_nextRotationZ_0 )
        , ( "previousRotationZ_0", jm_previousRotationZ_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "setFrameByDirection_1", jm_setFrameByDirection_1 )
        , ( "setFrameToAngle_1", jm_setFrameToAngle_1 )
        , ( "adjustFrameToAngle_1", jm_adjustFrameToAngle_1 )
        , ( "adjustFrame_1", jm_adjustFrame_1 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "getAngleInfoP_0", jm_getAngleInfoP_0 )
        , ( "toString_0", jm_toString_0 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RotationAnimation"
        [ ( "jm_nextRotationX_0", jm_nextRotationX_0 ), ( "jm_previousRotationX_0", jm_previousRotationX_0 ), ( "jm_nextRotation_0", jm_nextRotation_0 ), ( "jm_previousRotation_0", jm_previousRotation_0 ), ( "jm_nextRotationZ_0", jm_nextRotationZ_0 ), ( "jm_previousRotationZ_0", jm_previousRotationZ_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_setFrameByDirection_1", jm_setFrameByDirection_1 ), ( "jm_setFrameToAngle_1", jm_setFrameToAngle_1 ), ( "jm_adjustFrameToAngle_1", jm_adjustFrameToAngle_1 ), ( "jm_adjustFrame_1", jm_adjustFrame_1 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_getAngleInfoP_0", jm_getAngleInfoP_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "angleInfo", "" ), ( "circularIndexUtil", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "frameUtil" "" JR.this (JR.callStatic FrameUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "directionUtil" "" JR.this (JR.callStatic DirectionUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "angleInfo" "" JR.this (JR.local "angleInfo")), 
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.local "circularIndexUtil")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_nextRotationX_0 : JR.Method
jm_nextRotationX_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_previousRotationX_0 : JR.Method
jm_previousRotationX_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_nextRotation_0 : JR.Method
jm_nextRotation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_previousRotation_0 : JR.Method
jm_previousRotation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.invoke "previous_0" (JR.thisField "circularIndexUtil") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_nextRotationZ_0 : JR.Method
jm_nextRotationZ_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_previousRotationZ_0 : JR.Method
jm_previousRotationZ_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setIndex_1" (JR.thisField "circularIndexUtil") [ (JR.local "index") ]), 
                    JR.declare "newFrame" "I" (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []), 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.local "newFrame") ]) ])
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


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getAngleInfoP_0 : JR.Method
jm_getAngleInfoP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "angleInfo") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.callVia IndexedAnimation.jvtable "toString_0" JR.this []) ]) [ (JR.str "circularIndexUtil: ") ]) [ (JR.invoke "toString_0" (JR.thisField "circularIndexUtil") []) ]) [ (JR.str "angleInfo: ") ]) [ (JR.invoke "toString_0" (JR.thisField "angleInfo") []) ]) []) ])
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

