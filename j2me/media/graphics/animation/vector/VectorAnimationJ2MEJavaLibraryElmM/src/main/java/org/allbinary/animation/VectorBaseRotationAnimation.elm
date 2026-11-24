module Org.Allbinary.Animation.VectorBaseRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.RotationAnimation as RotationAnimation
import Org.Allbinary.Animation.VectorAnimationInterface as VectorAnimationInterface


jclass : String
jclass =
    "VectorBaseRotationAnimation"


jchain : List String
jchain =
    [ "VectorBaseRotationAnimation" ]
        ++ RotationAnimation.jchain
        ++ VectorAnimationInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    RotationAnimation.jfields ++ [ ( "currentPoints", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getAnimationSize_0", jm_getAnimationSize_0 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "previousFrame_0", jm_previousFrame_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "getPoints_1", jm_getPoints_1 )
        , ( "setPoints_1", jm_setPoints_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 ) ]
        RotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorBaseRotationAnimation"
        [ ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_getPoints_1", jm_getPoints_1 ), ( "jm_setPoints_1", jm_setPoints_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "angleInfo", "" ), ( "currentPoints", "" ), ( "basicColor", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RotationAnimation.jinit_3 JR.this [ (JR.local "angleInfo"), (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.map2 JR.div (JR.int 360) (JR.cast "I" (JR.invoke "getAngleIncrement_0" (JR.invoke "getAngleIncrementInfo_0" (JR.local "angleInfo") []) []))) ]), (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "currentPoints" "" JR.this (JR.field "NULL_INT_ARRAY_ARRAY_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setPoints_1" JR.this [ (JR.local "currentPoints") ]), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ]) ])
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


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setIndex_1" (JR.thisField "circularIndexUtil") [ (JR.local "index") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_previousFrame_0 : JR.Method
jm_previousFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "previous_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.alength (JR.thisField "currentPoints")) ])
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
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.thisField "basicColor") ]), 
                    JR.try (JR.run [ 
                        JR.declare "nextPointX" "I" (JR.int 0), 
                        JR.declare "nextPointY" "I" (JR.int 0), 
                        JR.declare "nextPoint" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "point" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "currentPointsFrame" "" (JR.aget (JR.thisField "currentPoints") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])), 
                        JR.declare "size" "I" (JR.alength (JR.local "currentPointsFrame")), 
                        JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 2)), 
                        JR.while (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN68879 -> (JR.setLocal "index" "I" (JR.lit jwN68879))) JR.decrement) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.setLocal "nextPoint" "" (JR.aget (JR.local "currentPointsFrame") (JR.local "index"))), 
                            JR.exec (JR.setLocal "point" "" (JR.aget (JR.local "currentPointsFrame") (JR.map2 JR.add (JR.local "index") (JR.int 1)))), 
                            JR.exec (JR.setLocal "nextPointX" "I" (JR.aget (JR.local "nextPoint") (JR.int 0))), 
                            JR.exec (JR.setLocal "nextPointY" "I" (JR.aget (JR.local "nextPoint") (JR.int 1))), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "nextPointX") (JR.int 1000)) (JR.run [ 
                                JR.exec (JR.invoke "drawLine_4" (JR.local "graphics") [ (JR.map2 JR.add (JR.aget (JR.local "point") (JR.int 0)) (JR.local "x")), (JR.map2 JR.add (JR.aget (JR.local "point") (JR.int 1)) (JR.local "y")), (JR.map2 JR.add (JR.local "nextPointX") (JR.local "x")), (JR.map2 JR.add (JR.local "nextPointY") (JR.local "y")) ]) ]) (JR.run [ 
                                JR.exec (JR.postUpdate (JR.local "index") (\jwN68722 -> (JR.setLocal "index" "I" (JR.lit jwN68722))) JR.decrement) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "paintVectors"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getPoints_1 : JR.Method
jm_getPoints_1 jheap jthis jargs =
    JR.method [ ( "frame", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "currentPoints") (JR.local "frame")) ])
        (jregister jheap)
        jthis
        jargs


jm_setPoints_1 : JR.Method
jm_setPoints_1 jheap jthis jargs =
    JR.method [ ( "currentPoints", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentPoints" "" JR.this (JR.local "currentPoints")), 
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.alength (JR.thisField "currentPoints")) ])) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callVia RotationAnimation.jvtable "getBasicColorP_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia RotationAnimation.jvtable "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ])
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

