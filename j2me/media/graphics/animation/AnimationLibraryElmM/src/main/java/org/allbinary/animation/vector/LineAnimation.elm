module Org.Allbinary.Animation.Vector.LineAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.vector
-}

import JR
import Org.Allbinary.Animation.Animation as Animation
import Org.Allbinary.Graphics.Color.ColorCompositeInterface as ColorCompositeInterface
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Layer.PositionInterface as PositionInterface


jclass : String
jclass =
    "LineAnimation"


jchain : List String
jchain =
    [ "LineAnimation" ]
        ++ Animation.jchain
        ++ ColorCompositeInterface.jchain
        ++ PositionInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Animation.jfields ++ [ ( "newLine", JR.defaultOf "" ), ( "tempLine", JR.defaultOf "" ), ( "line", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_2", jm_init_2 )
        , ( "setPosition_3", jm_setPosition_3 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 ) ]
        Animation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LineAnimation"
        [ ( "jm_init_2", jm_init_2 ), ( "jm_setPosition_3", jm_setPosition_3 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Animation.jinit_0 JR.this []),
                JR.exec (JR.setField "newLine" "" JR.this (JR.newArray "I" [ (JR.int 2), (JR.int 2) ])),
                JR.exec (JR.setField "tempLine" "" JR.this (JR.field "NULL_INT_ARRAY_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "line" "" JR.this (JR.newArray "I" [ (JR.int 2), (JR.int 2) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.aget (JR.thisField "newLine") (JR.int 0)) (\jaN66551 -> JR.andThen (JR.int 0) (\jiN66551 -> (JR.aset (JR.lit jaN66551) (JR.lit jiN66551) (JR.local "x"))))), 
                    JR.exec (JR.andThen (JR.aget (JR.thisField "newLine") (JR.int 0)) (\jaN66595 -> JR.andThen (JR.int 1) (\jiN66595 -> (JR.aset (JR.lit jaN66595) (JR.lit jiN66595) (JR.local "y"))))), 
                    JR.exec (JR.andThen (JR.aget (JR.thisField "newLine") (JR.int 1)) (\jaN66639 -> JR.andThen (JR.int 0) (\jiN66639 -> (JR.aset (JR.lit jaN66639) (JR.lit jiN66639) (JR.local "x"))))), 
                    JR.exec (JR.andThen (JR.aget (JR.thisField "newLine") (JR.int 1)) (\jaN66683 -> JR.andThen (JR.int 1) (\jiN66683 -> (JR.aset (JR.lit jaN66683) (JR.lit jiN66683) (JR.local "y"))))), 
                    JR.exec (JR.setField "tempLine" "" JR.this (JR.thisField "line")), 
                    JR.exec (JR.setField "line" "" JR.this (JR.thisField "newLine")), 
                    JR.exec (JR.setField "newLine" "" JR.this (JR.thisField "tempLine")) ])
        (jregister jheap)
        jthis
        jargs


jm_setPosition_3 : JR.Method
jm_setPosition_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.aget (JR.thisField "newLine") (JR.int 0)) (\jaN66874 -> JR.andThen (JR.int 0) (\jiN66874 -> (JR.aset (JR.lit jaN66874) (JR.lit jiN66874) (JR.aget (JR.aget (JR.thisField "line") (JR.int 1)) (JR.int 0)))))), 
                    JR.exec (JR.andThen (JR.aget (JR.thisField "newLine") (JR.int 0)) (\jaN66937 -> JR.andThen (JR.int 1) (\jiN66937 -> (JR.aset (JR.lit jaN66937) (JR.lit jiN66937) (JR.aget (JR.aget (JR.thisField "line") (JR.int 1)) (JR.int 1)))))), 
                    JR.exec (JR.andThen (JR.aget (JR.thisField "newLine") (JR.int 1)) (\jaN67000 -> JR.andThen (JR.int 0) (\jiN67000 -> (JR.aset (JR.lit jaN67000) (JR.lit jiN67000) (JR.local "x"))))), 
                    JR.exec (JR.andThen (JR.aget (JR.thisField "newLine") (JR.int 1)) (\jaN67044 -> JR.andThen (JR.int 1) (\jiN67044 -> (JR.aset (JR.lit jaN67044) (JR.lit jiN67044) (JR.local "y"))))), 
                    JR.exec (JR.setField "tempLine" "" JR.this (JR.thisField "line")), 
                    JR.exec (JR.setField "line" "" JR.this (JR.thisField "newLine")), 
                    JR.exec (JR.setField "newLine" "" JR.this (JR.thisField "tempLine")) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.declare "currentLine" "" (JR.thisField "line"), 
                    JR.exec (JR.invoke "setBasicColorP3_3" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.invoke "getBasicColorP_0" JR.this []), (JR.invoke "getColor_0" JR.this []) ]), 
                    JR.exec (JR.invoke "drawLine_4" (JR.local "graphics") [ (JR.aget (JR.aget (JR.local "currentLine") (JR.int 0)) (JR.int 0)), (JR.aget (JR.aget (JR.local "currentLine") (JR.int 0)) (JR.int 1)), (JR.aget (JR.aget (JR.local "currentLine") (JR.int 1)) (JR.int 0)), (JR.aget (JR.aget (JR.local "currentLine") (JR.int 1)) (JR.int 1)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callVia Animation.jvtable "getBasicColorP_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia Animation.jvtable "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ])
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

