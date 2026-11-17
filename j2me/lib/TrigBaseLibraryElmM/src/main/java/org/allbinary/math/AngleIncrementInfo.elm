module AngleIncrementInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR
import AngleFactory
import FrameUtil
import SmallIntegerSingletonFactory
import StringMaker


jclass : String
jclass =
    "AngleIncrementInfo"


jchain : List String
jchain =
    [ "AngleIncrementInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "angleIncrement", JR.defaultOf "S" ), ( "DOWN_FRAME", JR.defaultOf "" ), ( "UP_FRAME", JR.defaultOf "" ), ( "LEFT_FRAME", JR.defaultOf "" ), ( "RIGHT_FRAME", JR.defaultOf "" ), ( "frameUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getFrameAngle_1", jm_getFrameAngle_1 )
        , ( "getAngleIncrement_0", jm_getAngleIncrement_0 )
        , ( "toString_0", jm_toString_0 )
        , ( "getClosestGeneralDirection_1", jm_getClosestGeneralDirection_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AngleIncrementInfo"
        [ ( "jm_getFrameAngle_1", jm_getFrameAngle_1 ), ( "jm_getAngleIncrement_0", jm_getAngleIncrement_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jm_getClosestGeneralDirection_1", jm_getClosestGeneralDirection_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_INCREMENT", jstatic_INCREMENT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_INCREMENT : JR.M
jstatic_INCREMENT s =
    JR.static "AngleIncrementInfo" jclinit "INCREMENT"
        (JR.str "Inc: ")
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "angleIncrement", "S" ) ] ""
        (JR.run [ JR.exec (JR.setField "frameUtil" "" JR.this (JR.callStatic FrameUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "angleIncrement" "S" JR.this (JR.local "angleIncrement")), 
                    JR.declare "angleFactory" "" (JR.callStatic AngleFactory.jm_getInstance_0 []), 
                    JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                    JR.exec (JR.setField "DOWN_FRAME" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.map2 JR.div (JR.invoke "getValue_0" (JR.field "DOWN" (JR.local "angleFactory")) []) (JR.thisField "angleIncrement")) ])), 
                    JR.exec (JR.setField "UP_FRAME" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.cast "I" (JR.invoke "getValue_0" (JR.field "UP" (JR.local "angleFactory")) [])) ])), 
                    JR.exec (JR.setField "LEFT_FRAME" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.map2 JR.div (JR.invoke "getValue_0" (JR.field "LEFT" (JR.local "angleFactory")) []) (JR.thisField "angleIncrement")) ])), 
                    JR.exec (JR.setField "RIGHT_FRAME" "" JR.this (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.map2 JR.div (JR.invoke "getValue_0" (JR.field "RIGHT" (JR.local "angleFactory")) []) (JR.thisField "angleIncrement")) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getFrameAngle_1 : JR.Method
jm_getFrameAngle_1 jheap jthis jargs =
    JR.method [ ( "frame", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getFrameAngle_2" (JR.thisField "frameUtil") [ (JR.local "frame"), (JR.cast "I" (JR.thisField "angleIncrement")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAngleIncrement_0 : JR.Method
jm_getAngleIncrement_0 jheap jthis jargs =
    JR.method [] "S"
        (JR.run [ 
                    JR.return (JR.thisField "angleIncrement") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "appendshort_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ jstatic_INCREMENT ]) [ (JR.thisField "angleIncrement") ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getClosestGeneralDirection_1 : JR.Method
jm_getClosestGeneralDirection_1 jheap jthis jargs =
    JR.method [ ( "angle", "S" ) ] "I"
        (JR.run [ 
                    JR.declare "closestDirection" "" (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 360) ]), 
                    JR.ifElse (JR.map2 JR.less (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.thisField "UP_FRAME") []) (JR.local "angle")) (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.local "closestDirection") []) (JR.local "angle"))) (JR.run [ 
                        JR.exec (JR.setLocal "closestDirection" "" (JR.thisField "UP_FRAME")) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.thisField "DOWN_FRAME") []) (JR.local "angle")) (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.local "closestDirection") []) (JR.local "angle"))) (JR.run [ 
                        JR.exec (JR.setLocal "closestDirection" "" (JR.thisField "DOWN_FRAME")) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.thisField "LEFT_FRAME") []) (JR.local "angle")) (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.local "closestDirection") []) (JR.local "angle"))) (JR.run [ 
                        JR.exec (JR.setLocal "closestDirection" "" (JR.thisField "LEFT_FRAME")) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.thisField "RIGHT_FRAME") []) (JR.local "angle")) (JR.map2 JR.sub (JR.invoke "intValue_0" (JR.local "closestDirection") []) (JR.local "angle"))) (JR.run [ 
                        JR.exec (JR.setLocal "closestDirection" "" (JR.thisField "RIGHT_FRAME")) ]) identity, 
                    JR.return (JR.invoke "intValue_0" (JR.local "closestDirection") []) ])
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

