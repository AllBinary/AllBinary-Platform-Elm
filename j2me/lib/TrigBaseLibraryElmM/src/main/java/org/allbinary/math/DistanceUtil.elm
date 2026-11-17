module DistanceUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR
import MathUtil


jclass : String
jclass =
    "DistanceUtil"


jchain : List String
jchain =
    [ "DistanceUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "mathUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getDistance_4", jm_getDistance_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DistanceUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getDistance_4", jm_getDistance_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DistanceUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "mathUtil" "" JR.this (JR.callStatic MathUtil.jm_getInstance_0 [])),
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


jm_getDistance_4 : JR.Method
jm_getDistance_4 jheap jthis jargs =
    JR.method [ ( "x1", "I" ), ( "y1", "I" ), ( "x2", "I" ), ( "y2", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "dx" "I" (JR.map2 JR.sub (JR.local "x1") (JR.local "x2")), 
                    JR.declare "dy" "I" (JR.map2 JR.sub (JR.local "y1") (JR.local "y2")), 
                    JR.return (JR.invoke "sqrt_1" (JR.thisField "mathUtil") [ (JR.map2 JR.add ((JR.map2 JR.mul (JR.local "dx") (JR.local "dx"))) ((JR.map2 JR.mul (JR.local "dy") (JR.local "dy")))) ]) ])
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

