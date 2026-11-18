module Org.Allbinary.Animation.VectorRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Math.AngleInfo as AngleInfo
import Org.Allbinary.Animation.VectorBaseRotationAnimation as VectorBaseRotationAnimation


jclass : String
jclass =
    "VectorRotationAnimation"


jchain : List String
jchain =
    [ "VectorRotationAnimation" ]
        ++ VectorBaseRotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    VectorBaseRotationAnimation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "setFrameByDirection_1", jm_setFrameByDirection_1 )
        , ( "setFrameToAngle_1", jm_setFrameToAngle_1 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "adjustFrame_1", jm_adjustFrame_1 )
        , ( "adjustFrameToAngle_1", jm_adjustFrameToAngle_1 ) ]
        VectorBaseRotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorRotationAnimation"
        [ ( "jm_setFrameByDirection_1", jm_setFrameByDirection_1 ), ( "jm_setFrameToAngle_1", jm_setFrameToAngle_1 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_adjustFrame_1", jm_adjustFrame_1 ), ( "jm_adjustFrameToAngle_1", jm_adjustFrameToAngle_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "currentPoints", "" ), ( "basicColor", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect VectorBaseRotationAnimation.jinit_4 JR.this [ (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.cast "S" ((JR.map2 JR.div (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))) (JR.alength (JR.local "currentPoints"))))) ]), (JR.local "currentPoints"), (JR.local "basicColor"), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.invoke "getFrame_0" JR.this []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


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
                    JR.exec (JR.callVia VectorBaseRotationAnimation.jvtable "setFrame_1" JR.this [ (JR.local "index") ]), 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.invoke "getFrame_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_adjustFrame_1 : JR.Method
jm_adjustFrame_1 jheap jthis jargs =
    JR.method [ ( "newAngle", "S" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.invoke "getFrameForAngle_2" (JR.thisField "frameUtil") [ (JR.local "newAngle"), (JR.cast "I" (JR.invoke "getAngleIncrement_0" (JR.invoke "getAngleIncrementInfo_0" (JR.thisField "angleInfo") []) [])) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_adjustFrameToAngle_1 : JR.Method
jm_adjustFrameToAngle_1 jheap jthis jargs =
    JR.method [ ( "newAngle", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "adjustFrame_1" JR.this [ (JR.invoke "getValue_0" (JR.local "newAngle") []) ]) ])
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

