module Org.Allbinary.Logic.Math.MathUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math
-}

import JR



jclass : String
jclass =
    "MathUtil"


jchain : List String
jchain =
    [ "MathUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "ACCURACY", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getTotalDigits_1", jm_getTotalDigits_1 )
        , ( "sqrt_1", jm_sqrt_1 )
        , ( "sqrtd_1", jm_sqrtd_1 )
        , ( "abs_1", jm_abs_1 )
        , ( "abslong_1", jm_abslong_1 )
        , ( "min_2", jm_min_2 )
        , ( "max_2", jm_max_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MathUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getTotalDigits_1", jm_getTotalDigits_1 ), ( "jm_sqrt_1", jm_sqrt_1 ), ( "jm_sqrtd_1", jm_sqrtd_1 ), ( "jm_abs_1", jm_abs_1 ), ( "jm_abslong_1", jm_abslong_1 ), ( "jm_min_2", jm_min_2 ), ( "jm_max_2", jm_max_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MathUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "ACCURACY" "I" JR.this (JR.int 100)),
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


jm_getTotalDigits_1 : JR.Method
jm_getTotalDigits_1 jheap jthis jargs =
    JR.method [ ( "digits", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "total" "I" (JR.int 0), 
                    JR.while (JR.map2 JR.greater (JR.local "digits") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "digits" "I" (JR.map2 JR.div (JR.local "digits") (JR.int 10))), 
                        JR.exec (JR.postUpdate (JR.local "total") (\jwN65857 -> (JR.setLocal "total" "I" (JR.lit jwN65857))) JR.increment) ]), 
                    JR.return (JR.local "total") ])
        (jregister jheap)
        jthis
        jargs


jm_sqrt_1 : JR.Method
jm_sqrt_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.local "value") (JR.int 1)) (JR.run [ 
                        JR.return (JR.local "value") ]) identity, 
                    JR.declare "accumulated" "I" (JR.map2 JR.shr (JR.local "value") (JR.int 1)), 
                    JR.declare "result" "I" (JR.map2 JR.shr ((JR.map2 JR.add (JR.local "accumulated") ((JR.map2 JR.div (JR.local "value") (JR.local "accumulated"))))) (JR.int 1)), 
                    JR.doWhile (JR.map2 JR.greater (JR.local "accumulated") (JR.local "result")) (JR.run [ 
                        JR.exec (JR.setLocal "accumulated" "I" (JR.local "result")), 
                        JR.exec (JR.setLocal "result" "I" (JR.map2 JR.shr ((JR.map2 JR.add (JR.local "accumulated") ((JR.map2 JR.div (JR.local "value") (JR.local "accumulated"))))) (JR.int 1))) ]), 
                    JR.return (JR.local "accumulated") ])
        (jregister jheap)
        jthis
        jargs


jm_sqrtd_1 : JR.Method
jm_sqrtd_1 jheap jthis jargs =
    JR.method [ ( "x", "I" ) ] "D"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "x") (JR.int 0)) (JR.run [ 
                        JR.return (JR.cast "D" (JR.float 0.0)) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.local "x") (JR.int 0)) (JR.run [ 
                        JR.return (JR.cast "D" (JR.map JR.neg (JR.float 1.0))) ]) identity, 
                    JR.declare "result" "D" (JR.cast "D" (JR.local "x")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "ACCURACY")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66585 -> (JR.setLocal "index" "I" (JR.lit jwN66585))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "result" "D" (JR.map2 JR.div ((JR.map2 JR.add (JR.local "result") ((JR.map2 JR.div (JR.cast "D" (JR.local "x")) (JR.local "result"))))) (JR.float 2.0))) ]) ], 
                    JR.return (JR.local "result") ])
        (jregister jheap)
        jthis
        jargs


jm_abs_1 : JR.Method
jm_abs_1 jheap jthis jargs =
    JR.method [ ( "value", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.cond ((JR.map2 JR.less (JR.local "value") (JR.int 0))) (JR.map JR.neg (JR.local "value")) (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_abslong_1 : JR.Method
jm_abslong_1 jheap jthis jargs =
    JR.method [ ( "value", "J" ) ] "J"
        (JR.run [ 
                    JR.return (JR.cond ((JR.map2 JR.less (JR.local "value") (JR.long 0))) (JR.map JR.neg (JR.local "value")) (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_min_2 : JR.Method
jm_min_2 jheap jthis jargs =
    JR.method [ ( "value", "I" ), ( "value2", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.cond ((JR.map2 JR.lessEquals (JR.local "value") (JR.local "value2"))) (JR.local "value") (JR.local "value2")) ])
        (jregister jheap)
        jthis
        jargs


jm_max_2 : JR.Method
jm_max_2 jheap jthis jargs =
    JR.method [ ( "value", "I" ), ( "value2", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.cond ((JR.map2 JR.greaterEquals (JR.local "value") (JR.local "value2"))) (JR.local "value") (JR.local "value2")) ])
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

