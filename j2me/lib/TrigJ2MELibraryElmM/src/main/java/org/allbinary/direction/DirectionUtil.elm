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
                    JR.exec (JR.andThen (JR.thisField "directionArray") (\jaN66391 -> JR.andThen (JR.invoke "getValue_0" (JR.field "LEFT" (JR.local "directionFactory")) []) (\jiN66391 -> (JR.aset (JR.lit jaN66391) (JR.lit jiN66391) (JR.field "LEFT" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray") (\jaN66455 -> JR.andThen (JR.invoke "getValue_0" (JR.field "RIGHT" (JR.local "directionFactory")) []) (\jiN66455 -> (JR.aset (JR.lit jaN66455) (JR.lit jiN66455) (JR.field "RIGHT" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray") (\jaN66519 -> JR.andThen (JR.invoke "getValue_0" (JR.field "UP" (JR.local "directionFactory")) []) (\jiN66519 -> (JR.aset (JR.lit jaN66519) (JR.lit jiN66519) (JR.field "UP" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray") (\jaN66583 -> JR.andThen (JR.invoke "getValue_0" (JR.field "DOWN" (JR.local "directionFactory")) []) (\jiN66583 -> (JR.aset (JR.lit jaN66583) (JR.lit jiN66583) (JR.field "DOWN" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray2") (\jaN66647 -> JR.andThen (JR.invoke "getValue_0" (JR.field "LEFT" (JR.local "directionFactory")) []) (\jiN66647 -> (JR.aset (JR.lit jaN66647) (JR.lit jiN66647) (JR.field "LEFT" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray2") (\jaN66711 -> JR.andThen (JR.invoke "getValue_0" (JR.field "RIGHT" (JR.local "directionFactory")) []) (\jiN66711 -> (JR.aset (JR.lit jaN66711) (JR.lit jiN66711) (JR.field "RIGHT" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray2") (\jaN66775 -> JR.andThen (JR.invoke "getValue_0" (JR.field "UP" (JR.local "directionFactory")) []) (\jiN66775 -> (JR.aset (JR.lit jaN66775) (JR.lit jiN66775) (JR.field "UP" (JR.local "angleFactory")))))), 
                    JR.exec (JR.andThen (JR.thisField "directionArray2") (\jaN66839 -> JR.andThen (JR.invoke "getValue_0" (JR.field "DOWN" (JR.local "directionFactory")) []) (\jiN66839 -> (JR.aset (JR.lit jaN66839) (JR.lit jiN66839) (JR.field "DOWN" (JR.local "angleFactory")))))) ]) ])
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

