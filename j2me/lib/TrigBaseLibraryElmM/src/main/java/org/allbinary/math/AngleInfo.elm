module AngleInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR
import AngleIncrementInfoFactory
import CommonSeps
import FrameUtil
import StringMaker
import StringUtil


jclass : String
jclass =
    "AngleInfo"


jchain : List String
jchain =
    [ "AngleInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "angleIncrementInfo", JR.defaultOf "" ), ( "angle", JR.defaultOf "S" ), ( "frameUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "adjustAngle_1", jm_adjustAngle_1 )
        , ( "getAngle_0", jm_getAngle_0 )
        , ( "setAngle_1", jm_setAngle_1 )
        , ( "getAngleIncrementInfo_0", jm_getAngleIncrementInfo_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AngleInfo"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_adjustAngle_1", jm_adjustAngle_1 ), ( "jm_getAngle_0", jm_getAngle_0 ), ( "jm_setAngle_1", jm_setAngle_1 ), ( "jm_getAngleIncrementInfo_0", jm_getAngleIncrementInfo_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_ANGLE", jstatic_ANGLE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_ANGLE : JR.M
jstatic_ANGLE s =
    JR.static "AngleInfo" jclinit "ANGLE"
        (JR.str "Angle: ")
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "angleIncrementInfo", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "angle" "S" JR.this (JR.int 0)),
                JR.exec (JR.setField "frameUtil" "" JR.this (JR.callStatic FrameUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "angleIncrementInfo" "" JR.this (JR.local "angleIncrementInfo")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "angleIncrement", "S" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.invoke "getAt_1" (JR.callStatic AngleIncrementInfoFactory.jm_getInstance_0 []) [ (JR.local "angleIncrement") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_adjustAngle_1 : JR.Method
jm_adjustAngle_1 jheap jthis jargs =
    JR.method [ ( "frame", "I" ) ] ""
        (JR.run [ 
                    JR.declare "newAngle" "I" (JR.map2 JR.sub (JR.map2 JR.mul (JR.cast "I" (JR.invoke "getAngleIncrement_0" (JR.thisField "angleIncrementInfo") [])) (JR.local "frame")) (JR.int 90)), 
                    JR.exec (JR.invoke "setAngle_1" JR.this [ (JR.cast "S" (JR.invoke "adjustAngleToFrameAngle_1" (JR.thisField "frameUtil") [ (JR.local "newAngle") ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAngle_0 : JR.Method
jm_getAngle_0 jheap jthis jargs =
    JR.method [] "S"
        (JR.run [ 
                    JR.return (JR.thisField "angle") ])
        (jregister jheap)
        jthis
        jargs


jm_setAngle_1 : JR.Method
jm_setAngle_1 jheap jthis jargs =
    JR.method [ ( "angle", "S" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "angle" "S" JR.this (JR.local "angle")) ])
        (jregister jheap)
        jthis
        jargs


jm_getAngleIncrementInfo_0 : JR.Method
jm_getAngleIncrementInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "angleIncrementInfo") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_ANGLE ]), 
                    JR.exec (JR.invoke "appendshort_1" (JR.local "stringBuffer") [ (JR.thisField "angle") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.invoke "getAngleIncrementInfo_0" JR.this []) ]) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

