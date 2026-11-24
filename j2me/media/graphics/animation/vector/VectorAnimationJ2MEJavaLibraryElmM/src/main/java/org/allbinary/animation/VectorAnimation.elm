module Org.Allbinary.Animation.VectorAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.VectorAnimationInterface as VectorAnimationInterface


jclass : String
jclass =
    "VectorAnimation"


jchain : List String
jchain =
    [ "VectorAnimation" ]
        ++ IndexedAnimation.jchain
        ++ VectorAnimationInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ [ ( "currentPoints", JR.defaultOf "" ), ( "circularIndexUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createVectorAnimation_3", jm_createVectorAnimation_3 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "changeBasicColor_1", jm_changeBasicColor_1 )
        , ( "setAlpha_1", jm_setAlpha_1 )
        , ( "setScale_2", jm_setScale_2 )
        , ( "setMaxScale_2", jm_setMaxScale_2 )
        , ( "updateModifiers_0", jm_updateModifiers_0 )
        , ( "getAnimationSize_0", jm_getAnimationSize_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "previousFrame_0", jm_previousFrame_0 )
        , ( "paintVectors_3", jm_paintVectors_3 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "getPoints_1", jm_getPoints_1 )
        , ( "setPoints_1", jm_setPoints_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorAnimation"
        [ ( "jm_createVectorAnimation_3", jm_createVectorAnimation_3 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_changeBasicColor_1", jm_changeBasicColor_1 ), ( "jm_setAlpha_1", jm_setAlpha_1 ), ( "jm_setScale_2", jm_setScale_2 ), ( "jm_setMaxScale_2", jm_setMaxScale_2 ), ( "jm_updateModifiers_0", jm_updateModifiers_0 ), ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_paintVectors_3", jm_paintVectors_3 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_getPoints_1", jm_getPoints_1 ), ( "jm_setPoints_1", jm_setPoints_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "currentPoints", "" ), ( "basicColor", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "currentPoints" "" JR.this (JR.field "NULL_INT_ARRAY_ARRAY_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.int 0) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setPoints_1" JR.this [ (JR.local "currentPoints") ]), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_createVectorAnimation_3 : JR.Method
jm_createVectorAnimation_3 jheap jthis jargs =
    JR.method [ ( "currentPoints2", "" ), ( "basicColor", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ 
                    JR.declare "currentPoints" "" (JR.newArray "I" [ (JR.int 1), (JR.alength (JR.local "currentPoints2")), (JR.int 2) ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "currentPoints2")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67369 -> (JR.setLocal "index" "I" (JR.lit jwN67369))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "currentPoints") (JR.int 0)) (JR.local "index")) (\jaN67175 -> JR.andThen (JR.int 0) (\jiN67175 -> (JR.aset (JR.lit jaN67175) (JR.lit jiN67175) (JR.aget (JR.aget (JR.local "currentPoints2") (JR.local "index")) (JR.int 0)))))), 
                        JR.exec (JR.andThen (JR.aget (JR.aget (JR.local "currentPoints") (JR.int 0)) (JR.local "index")) (\jaN67248 -> JR.andThen (JR.int 1) (\jiN67248 -> (JR.aset (JR.lit jaN67248) (JR.lit jiN67248) (JR.aget (JR.aget (JR.local "currentPoints2") (JR.local "index")) (JR.int 1)))))) ]) ], 
                    JR.return (JR.new jnew_3 [ (JR.local "currentPoints"), (JR.local "basicColor"), (JR.local "animationBehavior") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "changed" "Z" (JR.bool False), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.invoke "getBasicColorP_0" JR.this []) JR.null) (JR.map2 JR.notEquals (JR.invoke "intValue_0" (JR.invoke "getBasicColorP_0" JR.this []) []) (JR.invoke "intValue_0" (JR.local "basicColor") []))) (JR.run [ 
                        JR.exec (JR.setLocal "changed" "Z" (JR.bool True)) ]) identity, 
                    JR.exec (JR.callVia IndexedAnimation.jvtable "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.ifElse (JR.local "changed") (JR.run [ 
                        JR.exec (JR.invoke "updateModifiers_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_changeBasicColor_1 : JR.Method
jm_changeBasicColor_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "changed" "Z" (JR.bool False), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.invoke "getChangeBasicColor_0" JR.this []) JR.null) (JR.map2 JR.notEquals (JR.invoke "intValue_0" (JR.invoke "getChangeBasicColor_0" JR.this []) []) (JR.invoke "intValue_0" (JR.local "basicColor") []))) (JR.run [ 
                        JR.exec (JR.setLocal "changed" "Z" (JR.bool True)) ]) identity, 
                    JR.exec (JR.callVia IndexedAnimation.jvtable "changeBasicColor_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.ifElse (JR.local "changed") (JR.run [ 
                        JR.exec (JR.invoke "updateModifiers_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setAlpha_1 : JR.Method
jm_setAlpha_1 jheap jthis jargs =
    JR.method [ ( "alpha", "I" ) ] ""
        (JR.run [ 
                    JR.declare "changed" "Z" (JR.bool False), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "alphaP") (JR.local "alpha")) (JR.run [ 
                        JR.exec (JR.setLocal "changed" "Z" (JR.bool True)) ]) identity, 
                    JR.exec (JR.callVia IndexedAnimation.jvtable "setAlpha_1" JR.this [ (JR.local "alpha") ]), 
                    JR.ifElse (JR.local "changed") (JR.run [ 
                        JR.exec (JR.invoke "updateModifiers_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setScale_2 : JR.Method
jm_setScale_2 jheap jthis jargs =
    JR.method [ ( "scaleX", "F" ), ( "scaleY", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setMaxScale_2 : JR.Method
jm_setMaxScale_2 jheap jthis jargs =
    JR.method [ ( "maxScaleX", "F" ), ( "maxScaleY", "F" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_updateModifiers_0 : JR.Method
jm_updateModifiers_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getAnimationSize_0 : JR.Method
jm_getAnimationSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" JR.this []) ])
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


jm_paintVectors_3 : JR.Method
jm_paintVectors_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "nextPointX" "I" (JR.int 0), 
                        JR.declare "nextPointY" "I" (JR.int 0), 
                        JR.declare "nextPoint" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "point" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "currentPointsFrame" "" (JR.aget (JR.thisField "currentPoints") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])), 
                        JR.declare "size" "I" (JR.alength (JR.local "currentPointsFrame")), 
                        JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 2)), 
                        JR.while (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN69704 -> (JR.setLocal "index" "I" (JR.lit jwN69704))) JR.decrement) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.setLocal "nextPoint" "" (JR.aget (JR.local "currentPointsFrame") (JR.local "index"))), 
                            JR.exec (JR.setLocal "point" "" (JR.aget (JR.local "currentPointsFrame") (JR.map2 JR.add (JR.local "index") (JR.int 1)))), 
                            JR.exec (JR.setLocal "nextPointX" "I" (JR.aget (JR.local "nextPoint") (JR.int 0))), 
                            JR.exec (JR.setLocal "nextPointY" "I" (JR.aget (JR.local "nextPoint") (JR.int 1))), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "nextPointX") (JR.int 1000)) (JR.run [ 
                                JR.exec (JR.invoke "drawLine_4" (JR.local "graphics") [ (JR.map2 JR.add (JR.aget (JR.local "point") (JR.int 0)) (JR.local "x")), (JR.map2 JR.add (JR.aget (JR.local "point") (JR.int 1)) (JR.local "y")), (JR.map2 JR.add (JR.local "nextPointX") (JR.local "x")), (JR.map2 JR.add (JR.local "nextPointY") (JR.local "y")) ]) ]) (JR.run [ 
                                JR.exec (JR.postUpdate (JR.local "index") (\jwN69547 -> (JR.setLocal "index" "I" (JR.lit jwN69547))) JR.decrement) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "paintVectors"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.thisField "basicColor") ]), 
                    JR.exec (JR.invoke "paintVectors_3" JR.this [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ])
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
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.alength (JR.local "currentPoints")) ])) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callVia IndexedAnimation.jvtable "getBasicColorP_0" JR.this []) ])
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

