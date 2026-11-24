module Org.Allbinary.Direction.DirectionUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.direction
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Direction.DirectionFactory as DirectionFactory


jclass : String
jclass =
    "DirectionUtil"


jchain : List String
jchain =
    [ "DirectionUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "directionArray", JR.defaultOf "" ), ( "directionArray2", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getAngle_1", jm_getAngle_1 )
        , ( "getFrameAngle_1", jm_getFrameAngle_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DirectionUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getAngle_1", jm_getAngle_1 ), ( "jm_getFrameAngle_1", jm_getFrameAngle_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DirectionUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "directionArray" "" JR.this (JR.newArray "" [ (JR.int 10) ])),
                JR.exec (JR.setField "directionArray2" "" JR.this (JR.newArray "" [ (JR.int 10) ])),
                identity,
                (JR.run [ 
                    JR.declare "angleFactory" "" (JR.callStatic AngleFactory.jm_getInstance_0 []), 
                    JR.declare "directionFactory" "" (JR.callStatic DirectionFactory.jm_getInstance_0 []), 
                    JR.exec (JR.andThen (JR.thisField "directionArray") (\jaN66399 -> JR.andThen (JR.invoke "getValue_0" (JR.field "LEFT" (JR.local "directionFactory")) []) (\jiN66399 -> (JR.aset (JR.lit jaN66399) (JR.lit jiN66399) (JR.field "LEFT" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray") (\jaN66463 -> JR.andThen (JR.invoke "getValue_0" (JR.field "RIGHT" (JR.local "directionFactory")) []) (\jiN66463 -> (JR.aset (JR.lit jaN66463) (JR.lit jiN66463) (JR.field "RIGHT" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray") (\jaN66527 -> JR.andThen (JR.invoke "getValue_0" (JR.field "UP" (JR.local "directionFactory")) []) (\jiN66527 -> (JR.aset (JR.lit jaN66527) (JR.lit jiN66527) (JR.field "UP" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray") (\jaN66591 -> JR.andThen (JR.invoke "getValue_0" (JR.field "DOWN" (JR.local "directionFactory")) []) (\jiN66591 -> (JR.aset (JR.lit jaN66591) (JR.lit jiN66591) (JR.field "DOWN" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray2") (\jaN66655 -> JR.andThen (JR.invoke "getValue_0" (JR.field "LEFT" (JR.local "directionFactory")) []) (\jiN66655 -> (JR.aset (JR.lit jaN66655) (JR.lit jiN66655) (JR.field "LEFT" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray2") (\jaN66719 -> JR.andThen (JR.invoke "getValue_0" (JR.field "RIGHT" (JR.local "directionFactory")) []) (\jiN66719 -> (JR.aset (JR.lit jaN66719) (JR.lit jiN66719) (JR.field "RIGHT" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray2") (\jaN66783 -> JR.andThen (JR.invoke "getValue_0" (JR.field "UP" (JR.local "directionFactory")) []) (\jiN66783 -> (JR.aset (JR.lit jaN66783) (JR.lit jiN66783) (JR.field "UP" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray2") (\jaN66847 -> JR.andThen (JR.invoke "getValue_0" (JR.field "DOWN" (JR.local "directionFactory")) []) (\jiN66847 -> (JR.aset (JR.lit jaN66847) (JR.lit jiN66847) (JR.field "DOWN" (JR.local "angleFactory")))))) ]) ])
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


jm_getAngle_1 : JR.Method
jm_getAngle_1 jheap jthis jargs =
    JR.method [ ( "direction", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "directionArray2") (JR.invoke "getValue_0" (JR.local "direction") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getFrameAngle_1 : JR.Method
jm_getFrameAngle_1 jheap jthis jargs =
    JR.method [ ( "direction", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "directionArray") (JR.invoke "getValue_0" (JR.local "direction") [])) ])
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

