module Org.Allbinary.Logic.Math.SmallLongFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math
-}

import JR



jclass : String
jclass =
    "SmallLongFactory"


jchain : List String
jchain =
    [ "SmallLongFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NEGATIVE_MAX", JR.defaultOf "I" ), ( "POSITIVE_MAX", JR.defaultOf "I" ), ( "INTEGER_ARRAY", JR.defaultOf "" ), ( "STRING_ARRAY", JR.defaultOf "" ), ( "MIN", JR.defaultOf "I" ), ( "lastMin", JR.defaultOf "I" ), ( "lastNegativeMin", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "initWithRange_2", jm_initWithRange_2 )
        , ( "init_0", jm_init_0 )
        , ( "getInstanceNoThrow_1", jm_getInstanceNoThrow_1 )
        , ( "getString_1", jm_getString_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SmallLongFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_initWithRange_2", jm_initWithRange_2 ), ( "jm_init_0", jm_init_0 ), ( "jm_getInstanceNoThrow_1", jm_getInstanceNoThrow_1 ), ( "jm_getString_1", jm_getString_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SmallLongFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NEGATIVE_MAX" "I" JR.this (JR.int 500)),
                JR.exec (JR.setField "POSITIVE_MAX" "I" JR.this (JR.int (JR.i32 0x2D1))),
                JR.exec (JR.setField "INTEGER_ARRAY" "" JR.this (JR.newArray "" [ (JR.map2 JR.add (JR.thisField "NEGATIVE_MAX") (JR.thisField "POSITIVE_MAX")) ])),
                JR.exec (JR.setField "STRING_ARRAY" "" JR.this (JR.newArray "" [ (JR.map2 JR.add (JR.thisField "NEGATIVE_MAX") (JR.thisField "POSITIVE_MAX")) ])),
                JR.exec (JR.setField "MIN" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "lastMin" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "lastNegativeMin" "I" JR.this (JR.int 0)),
                identity,
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


jm_initWithRange_2 : JR.Method
jm_initWithRange_2 jheap jthis jargs =
    JR.method [ ( "value", "I" ), ( "negativeValue", "I" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "value") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "lastMin")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66260 -> (JR.setLocal "index" "I" (JR.lit jwN66260))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "INTEGER_ARRAY") (\jaN66125 -> JR.andThen (JR.map2 JR.add (JR.local "index") (JR.thisField "NEGATIVE_MAX")) (\jiN66125 -> (JR.aset (JR.lit jaN66125) (JR.lit jiN66125) (JR.cast "J" (JR.local "index")))))) ]) ], 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "negativeValue") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "lastNegativeMin")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66410 -> (JR.setLocal "index" "I" (JR.lit jwN66410))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "INTEGER_ARRAY") (\jaN66286 -> JR.andThen (JR.local "index") (\jiN66286 -> (JR.aset (JR.lit jaN66286) (JR.lit jiN66286) (JR.cast "J" (JR.map JR.neg (JR.local "index"))))))) ]) ], 
                    JR.ifElse (JR.map2 JR.less (JR.thisField "lastMin") (JR.local "value")) (JR.run [ 
                        JR.exec (JR.setField "lastMin" "I" JR.this (JR.local "value")), 
                        JR.exec (JR.setField "MIN" "I" JR.this (JR.local "value")) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.thisField "lastNegativeMin") (JR.local "negativeValue")) (JR.run [ 
                        JR.exec (JR.setField "lastNegativeMin" "I" JR.this (JR.local "negativeValue")) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "INTEGER_ARRAY") (JR.int 0)) JR.null) (JR.run [ 
                        JR.ifElse (JR.or (JR.map2 JR.less (JR.thisField "lastMin") (JR.thisField "POSITIVE_MAX")) (JR.map2 JR.less (JR.thisField "lastNegativeMin") (JR.thisField "NEGATIVE_MAX"))) (JR.run [ 
                            JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.thisField "POSITIVE_MAX") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "lastMin")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66884 -> (JR.setLocal "index" "I" (JR.lit jwN66884))) JR.decrement) ]) (JR.run [ 
                                JR.exec (JR.andThen (JR.thisField "INTEGER_ARRAY") (\jaN66746 -> JR.andThen (JR.map2 JR.add (JR.local "index") (JR.thisField "NEGATIVE_MAX")) (\jiN66746 -> (JR.aset (JR.lit jaN66746) (JR.lit jiN66746) (JR.cast "J" (JR.local "index")))))) ]) ], 
                            JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.thisField "NEGATIVE_MAX") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "lastNegativeMin")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67037 -> (JR.setLocal "index" "I" (JR.lit jwN67037))) JR.decrement) ]) (JR.run [ 
                                JR.exec (JR.andThen (JR.thisField "INTEGER_ARRAY") (\jaN66910 -> JR.andThen (JR.local "index") (\jiN66910 -> (JR.aset (JR.lit jaN66910) (JR.lit jiN66910) (JR.cast "J" (JR.map JR.neg (JR.local "index"))))))) ]) ], 
                            JR.exec (JR.setField "lastMin" "I" JR.this (JR.thisField "POSITIVE_MAX")), 
                            JR.exec (JR.setField "lastNegativeMin" "I" JR.this (JR.thisField "NEGATIVE_MAX")) ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceNoThrow_1 : JR.Method
jm_getInstanceNoThrow_1 jheap jthis jargs =
    JR.method [ ( "index", "J" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.add (JR.local "index") (JR.cast "J" (JR.thisField "NEGATIVE_MAX"))) (JR.cast "J" (JR.map2 JR.sub (JR.alength (JR.thisField "INTEGER_ARRAY")) (JR.int 1)))) (JR.run [ 
                        JR.return (JR.aget (JR.thisField "INTEGER_ARRAY") (JR.map2 JR.add (JR.map JR.neg (JR.int 1)) (JR.thisField "NEGATIVE_MAX"))) ]) identity, 
                    JR.return (JR.aget (JR.thisField "INTEGER_ARRAY") (JR.map2 JR.add ((JR.cast "I" (JR.local "index"))) (JR.thisField "NEGATIVE_MAX"))) ])
        (jregister jheap)
        jthis
        jargs


jm_getString_1 : JR.Method
jm_getString_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "i" "I" (JR.map2 JR.add (JR.local "index") (JR.thisField "NEGATIVE_MAX")), 
                    JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "STRING_ARRAY") (JR.local "i")) JR.null) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN67480 -> JR.andThen (JR.local "i") (\jiN67480 -> (JR.aset (JR.lit jaN67480) (JR.lit jiN67480) (JR.invoke "toString_0" (JR.aget (JR.thisField "INTEGER_ARRAY") (JR.local "i")) []))))) ]) identity, 
                    JR.return (JR.aget (JR.thisField "STRING_ARRAY") (JR.local "i")) ])
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

