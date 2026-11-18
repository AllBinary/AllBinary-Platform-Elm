module Org.Allbinary.Animation.NullRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Math.AngleInfo as AngleInfo
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Animation.RotationAnimation as RotationAnimation


jclass : String
jclass =
    "NullRotationAnimation"


jchain : List String
jchain =
    [ "NullRotationAnimation" ]
        ++ RotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    RotationAnimation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "createTotalAngle_3", jm_createTotalAngle_3 )
        , ( "createQuarter_1", jm_createQuarter_1 )
        , ( "getAnimationSize_0", jm_getAnimationSize_0 ) ]
        RotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullRotationAnimation"
        [ ( "jm_createTotalAngle_3", jm_createTotalAngle_3 ), ( "jm_createQuarter_1", jm_createQuarter_1 ), ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "angleInfo", "" ), ( "circularIndexUtil", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RotationAnimation.jinit_3 JR.this [ (JR.local "angleInfo"), (JR.local "circularIndexUtil"), (JR.local "animationBehavior") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_createTotalAngle_3 : JR.Method
jm_createTotalAngle_3 jheap jthis jargs =
    JR.method [ ( "angleInfo", "" ), ( "totalAngle", "S" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_3 [ (JR.local "angleInfo"), (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.map2 JR.div (JR.local "totalAngle") (JR.invoke "getAngleIncrement_0" (JR.invoke "getAngleIncrementInfo_0" (JR.local "angleInfo") []) [])) ]), (JR.local "animationBehavior") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createQuarter_1 : JR.Method
jm_createQuarter_1 jheap jthis jargs =
    JR.method [ ( "animationBehavior", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_3 [ (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.field "QUARTER_TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 [])) ]), (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.int 4) ]), (JR.local "animationBehavior") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAnimationSize_0 : JR.Method
jm_getAnimationSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
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

