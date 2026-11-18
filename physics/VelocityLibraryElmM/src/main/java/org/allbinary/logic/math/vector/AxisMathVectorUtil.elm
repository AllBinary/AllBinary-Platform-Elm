module Org.Allbinary.Logic.Math.Vector.AxisMathVectorUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math.vector
-}

import JR
import Org.Allbinary.Math.NoDecimalTrigTable as NoDecimalTrigTable


jclass : String
jclass =
    "AxisMathVectorUtil"


jchain : List String
jchain =
    [ "AxisMathVectorUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "noDecimalTrigTable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "calculateX_2", jm_calculateX_2 )
        , ( "calculateY_2", jm_calculateY_2 )
        , ( "calculateZ_2", jm_calculateZ_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AxisMathVectorUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_calculateX_2", jm_calculateX_2 ), ( "jm_calculateY_2", jm_calculateY_2 ), ( "jm_calculateZ_2", jm_calculateZ_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AxisMathVectorUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "noDecimalTrigTable" "" JR.this (JR.callStatic NoDecimalTrigTable.jm_getInstance_0 [])),
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


jm_calculateX_2 : JR.Method
jm_calculateX_2 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "angle", "I" ) ] "J"
        (JR.run [ 
                    JR.return (JR.map2 JR.div (JR.map2 JR.mul (JR.local "magnitude") (JR.invoke "cos_1" (JR.thisField "noDecimalTrigTable") [ (JR.local "angle") ])) (JR.long 10)) ])
        (jregister jheap)
        jthis
        jargs


jm_calculateY_2 : JR.Method
jm_calculateY_2 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "angle", "I" ) ] "J"
        (JR.run [ 
                    JR.return (JR.map2 JR.div (JR.map2 JR.mul (JR.local "magnitude") (JR.invoke "sin_1" (JR.thisField "noDecimalTrigTable") [ (JR.local "angle") ])) (JR.long 10)) ])
        (jregister jheap)
        jthis
        jargs


jm_calculateZ_2 : JR.Method
jm_calculateZ_2 jheap jthis jargs =
    JR.method [ ( "magnitude", "J" ), ( "otherAngle", "I" ) ] "J"
        (JR.run [ 
                    JR.return (JR.map2 JR.div (JR.map2 JR.mul (JR.local "magnitude") (JR.invoke "sin_1" (JR.thisField "noDecimalTrigTable") [ (JR.local "otherAngle") ])) (JR.long 10)) ])
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

