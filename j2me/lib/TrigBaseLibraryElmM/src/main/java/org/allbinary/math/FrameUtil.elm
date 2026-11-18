module Org.Allbinary.Math.FrameUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory


jclass : String
jclass =
    "FrameUtil"


jchain : List String
jchain =
    [ "FrameUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getFrameForAngle_2", jm_getFrameForAngle_2 )
        , ( "getFrameAngle_2", jm_getFrameAngle_2 )
        , ( "adjustAngleToFrameAngle_1", jm_adjustAngleToFrameAngle_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FrameUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getFrameForAngle_2", jm_getFrameForAngle_2 ), ( "jm_getFrameAngle_2", jm_getFrameAngle_2 ), ( "jm_adjustAngleToFrameAngle_1", jm_adjustAngleToFrameAngle_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FrameUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getFrameForAngle_2 : JR.Method
jm_getFrameForAngle_2 jheap jthis jargs =
    JR.method [ ( "angle", "S" ), ( "angleIncrement", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.div (JR.invoke "adjustAngleToFrameAngle_1" JR.this [ (JR.cast "I" (JR.local "angle")) ]) (JR.local "angleIncrement")) ])
        (jregister jheap)
        jthis
        jargs


jm_getFrameAngle_2 : JR.Method
jm_getFrameAngle_2 jheap jthis jargs =
    JR.method [ ( "frame", "I" ), ( "angleIncrement", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "frameAngle" "I" (JR.map2 JR.sub (JR.map2 JR.mul (JR.local "angleIncrement") (JR.local "frame")) (JR.int 90)), 
                    JR.return (JR.invoke "adjustAngleToFrameAngle_1" JR.this [ (JR.local "frameAngle") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_adjustAngleToFrameAngle_1 : JR.Method
jm_adjustAngleToFrameAngle_1 jheap jthis jargs =
    JR.method [ ( "currentAngle", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "angleFactory" "" (JR.callStatic AngleFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "currentAngle") (JR.int 359)) (JR.run [ 
                        JR.exec (JR.setLocal "currentAngle" "I" ((JR.map2 JR.sub (JR.local "currentAngle") (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.local "angleFactory")))))), 
                        JR.while (JR.map2 JR.greater (JR.local "currentAngle") (JR.int 359)) (JR.run [ 
                            JR.exec (JR.setLocal "currentAngle" "I" ((JR.map2 JR.sub (JR.local "currentAngle") (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.local "angleFactory")))))) ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.local "currentAngle") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "currentAngle" "I" ((JR.map2 JR.add (JR.local "currentAngle") (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.local "angleFactory")))))), 
                        JR.while (JR.map2 JR.less (JR.local "currentAngle") (JR.int 0)) (JR.run [ 
                            JR.exec (JR.setLocal "currentAngle" "I" ((JR.map2 JR.add (JR.local "currentAngle") (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.local "angleFactory")))))) ]) ]) identity, 
                    JR.return (JR.local "currentAngle") ])
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

