module AngleIncrementInfoFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.math
-}

import JR
import AngleFactory
import AngleIncrementInfo


jclass : String
jclass =
    "AngleIncrementInfoFactory"


jchain : List String
jchain =
    [ "AngleIncrementInfoFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "angleIncrementInfo", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getAt_1", jm_getAt_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AngleIncrementInfoFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getAt_1", jm_getAt_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AngleIncrementInfoFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "angleIncrementInfo" "" JR.this (JR.newArray "" [ (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 []))) ])),
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


jm_getAt_1 : JR.Method
jm_getAt_1 jheap jthis jargs =
    JR.method [ ( "angleIncrement", "S" ) ] ""
        (JR.run [ 
                    JR.declare "halfAngleIncrement" "I" ((JR.map2 JR.shr (JR.cast "I" (JR.local "angleIncrement")) (JR.int 1))), 
                    JR.declare "angleIncrementInfo" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "angleIncrementInfoCanBeNull" "" (JR.aget (JR.thisField "angleIncrementInfo") (JR.local "halfAngleIncrement")), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "angleIncrementInfoCanBeNull") JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "angleIncrementInfo" "" (JR.new AngleIncrementInfo.jnew_1 [ (JR.local "angleIncrement") ])), 
                        JR.exec (JR.andThen (JR.thisField "angleIncrementInfo") (\jaN66363 -> JR.andThen (JR.local "halfAngleIncrement") (\jiN66363 -> (JR.aset (JR.lit jaN66363) (JR.lit jiN66363) (JR.local "angleIncrementInfo"))))), 
                        JR.return (JR.local "angleIncrementInfo") ]) (JR.run [ 
                        JR.exec (JR.setLocal "angleIncrementInfo" "" (JR.local "angleIncrementInfoCanBeNull")) ]), 
                    JR.return (JR.local "angleIncrementInfo") ])
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

