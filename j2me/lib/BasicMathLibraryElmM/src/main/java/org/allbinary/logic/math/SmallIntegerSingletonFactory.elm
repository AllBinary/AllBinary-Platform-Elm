module SmallIntegerSingletonFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math
-}

import JR
import AndroidUtil
import J2MEUtil
import LogUtil
import StringMaker


jclass : String
jclass =
    "SmallIntegerSingletonFactory"


jchain : List String
jchain =
    [ "SmallIntegerSingletonFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NEGATIVE_MAX", JR.defaultOf "I" ), ( "POSITIVE_MAX", JR.defaultOf "I" ), ( "INTEGER_ARRAY", JR.defaultOf "" ), ( "STRING_ARRAY", JR.defaultOf "" ), ( "MIN", JR.defaultOf "I" ), ( "lastMin", JR.defaultOf "I" ), ( "lastNegativeMin", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getMin_0", jm_getMin_0 )
        , ( "getMinAllowed_0", jm_getMinAllowed_0 )
        , ( "initWithRange_2", jm_initWithRange_2 )
        , ( "init_0", jm_init_0 )
        , ( "getAt_1", jm_getAt_1 )
        , ( "getAtNoThrow_1", jm_getAtNoThrow_1 )
        , ( "createInstance_1", jm_createInstance_1 )
        , ( "getString_1", jm_getString_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SmallIntegerSingletonFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getMin_0", jm_getMin_0 ), ( "jm_getMinAllowed_0", jm_getMinAllowed_0 ), ( "jm_initWithRange_2", jm_initWithRange_2 ), ( "jm_init_0", jm_init_0 ), ( "jm_getAt_1", jm_getAt_1 ), ( "jm_getAtNoThrow_1", jm_getAtNoThrow_1 ), ( "jm_createInstance_1", jm_createInstance_1 ), ( "jm_getString_1", jm_getString_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SmallIntegerSingletonFactory" jclinit "instance"
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
                (JR.run [ 
                    JR.exec (JR.invoke "initWithRange_2" JR.this [ (JR.int 23), (JR.int 0) ]) ]) ])
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


jm_getMin_0 : JR.Method
jm_getMin_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "minAllowed" "I" (JR.invoke "getMinAllowed_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.thisField "MIN") (JR.local "minAllowed")) (JR.run [ 
                        JR.ifElse (JR.callStatic J2MEUtil.jm_isJ2ME_0 []) identity (JR.run [ 
                        JR.ifElse (JR.callStatic AndroidUtil.jm_isAndroid_0 []) (JR.run [ 
                            JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Android InputFactory was initialized before GameMidlet: ") ]) [ (JR.thisField "MIN") ]) []), JR.this, (JR.str "getMin") ]), 
                            JR.exec (JR.invoke "initWithRange_2" JR.this [ (JR.int (JR.i32 0x291)), (JR.int 6) ]) ]) (JR.run [ 
                            JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ") ]) [ (JR.thisField "MIN") ]) []), JR.this, (JR.str "getMin") ]), 
                            JR.exec (JR.invoke "initWithRange_2" JR.this [ (JR.int (JR.i32 0x2D0)), (JR.int 6) ]) ]) ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.thisField "MIN") (JR.local "minAllowed")) (JR.run [ 
                        JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.str "This means you loaded the InputFactory before determining the platform input size requirements."), JR.this, (JR.str "getMin"), (JR.new (JR.newThrowable "Exception" [ "Exception" ]) []) ]) ]) identity, 
                    JR.return (JR.thisField "MIN") ])
        (jregister jheap)
        jthis
        jargs


jm_getMinAllowed_0 : JR.Method
jm_getMinAllowed_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.ifElse (JR.callStatic J2MEUtil.jm_isJ2ME_0 []) (JR.run [ 
                        JR.return (JR.int 0) ]) (JR.run [ 
                        JR.ifElse (JR.callStatic AndroidUtil.jm_isAndroid_0 []) (JR.run [ 
                            JR.return (JR.int (JR.i32 0x101)) ]) (JR.run [ 
                            JR.return (JR.int 23) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initWithRange_2 : JR.Method
jm_initWithRange_2 jheap jthis jargs =
    JR.method [ ( "value", "I" ), ( "negativeValue", "I" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "value") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "lastMin")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67469 -> (JR.setLocal "index" "I" (JR.lit jwN67469))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "INTEGER_ARRAY") (\jaN67334 -> JR.andThen (JR.map2 JR.add (JR.local "index") (JR.thisField "NEGATIVE_MAX")) (\jiN67334 -> (JR.aset (JR.lit jaN67334) (JR.lit jiN67334) (JR.cast "I" (JR.local "index")))))) ]) ], 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "negativeValue") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "lastNegativeMin")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67619 -> (JR.setLocal "index" "I" (JR.lit jwN67619))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "INTEGER_ARRAY") (\jaN67495 -> JR.andThen (JR.local "index") (\jiN67495 -> (JR.aset (JR.lit jaN67495) (JR.lit jiN67495) (JR.cast "I" (JR.map JR.neg (JR.local "index"))))))) ]) ], 
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
                    JR.ifElse (JR.or (JR.map2 JR.less (JR.thisField "lastMin") (JR.thisField "POSITIVE_MAX")) (JR.map2 JR.less (JR.thisField "lastNegativeMin") (JR.thisField "NEGATIVE_MAX"))) (JR.run [ 
                        JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.thisField "POSITIVE_MAX") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "lastMin")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68058 -> (JR.setLocal "index" "I" (JR.lit jwN68058))) JR.decrement) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.thisField "INTEGER_ARRAY") (\jaN67920 -> JR.andThen (JR.map2 JR.add (JR.local "index") (JR.thisField "NEGATIVE_MAX")) (\jiN67920 -> (JR.aset (JR.lit jaN67920) (JR.lit jiN67920) (JR.cast "I" (JR.local "index")))))) ]) ], 
                        JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.thisField "NEGATIVE_MAX") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "lastNegativeMin")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68211 -> (JR.setLocal "index" "I" (JR.lit jwN68211))) JR.decrement) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.thisField "INTEGER_ARRAY") (\jaN68084 -> JR.andThen (JR.local "index") (\jiN68084 -> (JR.aset (JR.lit jaN68084) (JR.lit jiN68084) (JR.cast "I" (JR.map JR.neg (JR.local "index"))))))) ]) ], 
                        JR.exec (JR.setField "lastMin" "I" JR.this (JR.thisField "POSITIVE_MAX")), 
                        JR.exec (JR.setField "MIN" "I" JR.this (JR.thisField "lastMin")), 
                        JR.exec (JR.setField "lastNegativeMin" "I" JR.this (JR.thisField "NEGATIVE_MAX")) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getAt_1 : JR.Method
jm_getAt_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "INTEGER_ARRAY") (JR.map2 JR.add (JR.local "index") (JR.thisField "NEGATIVE_MAX"))) ])
        (jregister jheap)
        jthis
        jargs


jm_getAtNoThrow_1 : JR.Method
jm_getAtNoThrow_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.add (JR.local "index") (JR.thisField "NEGATIVE_MAX")) (JR.map2 JR.sub (JR.alength (JR.thisField "INTEGER_ARRAY")) (JR.int 1))) (JR.run [ 
                        JR.return (JR.aget (JR.thisField "INTEGER_ARRAY") (JR.map2 JR.add (JR.map JR.neg (JR.int 1)) (JR.thisField "NEGATIVE_MAX"))) ]) identity, 
                    JR.return (JR.aget (JR.thisField "INTEGER_ARRAY") (JR.map2 JR.add (JR.local "index") (JR.thisField "NEGATIVE_MAX"))) ])
        (jregister jheap)
        jthis
        jargs


jm_createInstance_1 : JR.Method
jm_createInstance_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "integer" "" (JR.invoke "getAt_1" JR.this [ (JR.local "index") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "integer") JR.null) (JR.run [ 
                        JR.exec (JR.setLocal "integer" "" (JR.cast "I" (JR.local "index"))) ]) identity, 
                    JR.return (JR.local "integer") ])
        (jregister jheap)
        jthis
        jargs


jm_getString_1 : JR.Method
jm_getString_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "i" "I" (JR.map2 JR.add (JR.local "index") (JR.thisField "NEGATIVE_MAX")), 
                    JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "STRING_ARRAY") (JR.local "i")) JR.null) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN68971 -> JR.andThen (JR.local "i") (\jiN68971 -> (JR.aset (JR.lit jaN68971) (JR.lit jiN68971) (JR.invoke "toString_0" (JR.aget (JR.thisField "INTEGER_ARRAY") (JR.local "i")) []))))) ]) identity, 
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

