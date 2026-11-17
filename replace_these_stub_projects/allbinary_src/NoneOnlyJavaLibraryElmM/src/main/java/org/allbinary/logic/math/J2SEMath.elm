module J2SEMath exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math
-}

import JR



jclass : String
jclass =
    "J2SEMath"


jchain : List String
jchain =
    [ "J2SEMath" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "round_1", jm_round_1 )
        , ( "abs_1", jm_abs_1 )
        , ( "absdouble_1", jm_absdouble_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "J2SEMath"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_round_1", jm_round_1 ), ( "jm_abs_1", jm_abs_1 ), ( "jm_absdouble_1", jm_absdouble_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "J2SEMath" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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


jm_round_1 : JR.Method
jm_round_1 jheap jthis jargs =
    JR.method [ ( "value", "F" ) ] "I"
        (JR.run [ 
                    JR.return (JR.math "round" [ (JR.local "value") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_abs_1 : JR.Method
jm_abs_1 jheap jthis jargs =
    JR.method [ ( "value", "F" ) ] "F"
        (JR.run [ 
                    JR.return (JR.cond ((JR.map2 JR.less (JR.local "value") (JR.float 0.0))) (JR.map JR.neg (JR.local "value")) (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_absdouble_1 : JR.Method
jm_absdouble_1 jheap jthis jargs =
    JR.method [ ( "value", "D" ) ] "D"
        (JR.run [ 
                    JR.return (JR.cond ((JR.map2 JR.less (JR.local "value") (JR.float 0.0))) (JR.map JR.neg (JR.local "value")) (JR.local "value")) ])
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

