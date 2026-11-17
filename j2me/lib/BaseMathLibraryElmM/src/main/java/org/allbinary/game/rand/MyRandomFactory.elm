module MyRandomFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.rand
-}

import JR
import CommonSeps
import JInteger
import JRandom
import JSystem
import MathUtil
import StringMaker


jclass : String
jclass =
    "MyRandomFactory"


jchain : List String
jchain =
    [ "MyRandomFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "mathUtil", JR.defaultOf "" ), ( "rand", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setSeed_1", jm_setSeed_1 )
        , ( "getNextInt_1", jm_getNextInt_1 )
        , ( "getAbsoluteNextInt_1", jm_getAbsoluteNextInt_1 )
        , ( "getAbsoluteNextIntAllowZero_1", jm_getAbsoluteNextIntAllowZero_1 )
        , ( "shuffle_1", jm_shuffle_1 )
        , ( "shuffleTotal_2", jm_shuffleTotal_2 )
        , ( "shuffle2_2", jm_shuffle2_2 )
        , ( "shuffle2Total_3", jm_shuffle2Total_3 )
        , ( "main_1", jm_main_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MyRandomFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setSeed_1", jm_setSeed_1 ), ( "jm_getNextInt_1", jm_getNextInt_1 ), ( "jm_getAbsoluteNextInt_1", jm_getAbsoluteNextInt_1 ), ( "jm_getAbsoluteNextIntAllowZero_1", jm_getAbsoluteNextIntAllowZero_1 ), ( "jm_shuffle_1", jm_shuffle_1 ), ( "jm_shuffleTotal_2", jm_shuffleTotal_2 ), ( "jm_shuffle2_2", jm_shuffle2_2 ), ( "jm_shuffle2Total_3", jm_shuffle2Total_3 ), ( "jm_main_1", jm_main_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MyRandomFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "mathUtil" "" JR.this (JR.callStatic MathUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "rand" "" JR.this (JR.new JRandom.jnew_1 [ (JR.callStatic JSystem.jm_currentTimeMillis_0 []) ])) ]) ])
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


jm_setSeed_1 : JR.Method
jm_setSeed_1 jheap jthis jargs =
    JR.method [ ( "seed", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "rand" "" JR.this (JR.new JRandom.jnew_1 [ (JR.local "seed") ])) ])
        (jregister jheap)
        jthis
        jargs


jm_getNextInt_1 : JR.Method
jm_getNextInt_1 jheap jthis jargs =
    JR.method [ ( "range", "I" ) ] "I"
        (JR.run [ 
                    JR.declare "div" "I" (JR.map2 JR.add ((JR.map2 JR.div JInteger.jstatic_MAX_VALUE (JR.local "range"))) (JR.int 1)), 
                    JR.return ((JR.map2 JR.div (JR.invoke "nextInt_0" (JR.thisField "rand") []) (JR.local "div"))) ])
        (jregister jheap)
        jthis
        jargs


jm_getAbsoluteNextInt_1 : JR.Method
jm_getAbsoluteNextInt_1 jheap jthis jargs =
    JR.method [ ( "range", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "abs_1" (JR.thisField "mathUtil") [ (JR.invoke "getNextInt_1" JR.this [ (JR.local "range") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getAbsoluteNextIntAllowZero_1 : JR.Method
jm_getAbsoluteNextIntAllowZero_1 jheap jthis jargs =
    JR.method [ ( "range", "I" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "range") (JR.int 0)) (JR.run [ 
                        JR.return (JR.int 0) ]) (JR.run [ 
                        JR.return (JR.invoke "abs_1" (JR.thisField "mathUtil") [ (JR.invoke "getNextInt_1" JR.this [ (JR.local "range") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_shuffle_1 : JR.Method
jm_shuffle_1 jheap jthis jargs =
    JR.method [ ( "intArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "shuffleTotal_2" JR.this [ (JR.local "intArray"), (JR.map2 JR.mul (JR.alength (JR.local "intArray")) (JR.int 7)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_shuffleTotal_2 : JR.Method
jm_shuffleTotal_2 jheap jthis jargs =
    JR.method [ ( "intArray", "" ), ( "shuffleTotal", "I" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.local "intArray")), 
                    JR.declare "randomIndex" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "randomIndex2" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "value" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "shuffleTotal")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67446 -> (JR.setLocal "index" "I" (JR.lit jwN67446))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "randomIndex" "I" (JR.invoke "getAbsoluteNextIntAllowZero_1" JR.this [ (JR.local "size") ])), 
                        JR.exec (JR.setLocal "randomIndex2" "I" (JR.invoke "getAbsoluteNextIntAllowZero_1" JR.this [ (JR.local "size") ])), 
                        JR.exec (JR.setLocal "value" "I" (JR.aget (JR.local "intArray") (JR.local "randomIndex"))), 
                        JR.exec (JR.andThen (JR.local "intArray") (\jaN67312 -> JR.andThen (JR.local "randomIndex") (\jiN67312 -> (JR.aset (JR.lit jaN67312) (JR.lit jiN67312) (JR.aget (JR.local "intArray") (JR.local "randomIndex2")))))), 
                        JR.exec (JR.andThen (JR.local "intArray") (\jaN67361 -> JR.andThen (JR.local "randomIndex2") (\jiN67361 -> (JR.aset (JR.lit jaN67361) (JR.lit jiN67361) (JR.local "value"))))) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_shuffle2_2 : JR.Method
jm_shuffle2_2 jheap jthis jargs =
    JR.method [ ( "intArray", "" ), ( "intArray2", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "shuffle2Total_3" JR.this [ (JR.local "intArray"), (JR.local "intArray2"), (JR.map2 JR.mul (JR.alength (JR.local "intArray")) (JR.int 7)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_shuffle2Total_3 : JR.Method
jm_shuffle2Total_3 jheap jthis jargs =
    JR.method [ ( "intArray", "" ), ( "intArray2", "" ), ( "shuffleTotal", "I" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.local "intArray")), 
                    JR.declare "randomIndex" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "randomIndex2" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "value" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "value2" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "shuffleTotal")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68214 -> (JR.setLocal "index" "I" (JR.lit jwN68214))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "randomIndex" "I" (JR.invoke "getAbsoluteNextIntAllowZero_1" JR.this [ (JR.local "size") ])), 
                        JR.exec (JR.setLocal "randomIndex2" "I" (JR.invoke "getAbsoluteNextIntAllowZero_1" JR.this [ (JR.local "size") ])), 
                        JR.exec (JR.setLocal "value" "I" (JR.aget (JR.local "intArray") (JR.local "randomIndex"))), 
                        JR.exec (JR.setLocal "value2" "I" (JR.aget (JR.local "intArray2") (JR.local "randomIndex"))), 
                        JR.exec (JR.andThen (JR.local "intArray") (\jaN67994 -> JR.andThen (JR.local "randomIndex") (\jiN67994 -> (JR.aset (JR.lit jaN67994) (JR.lit jiN67994) (JR.aget (JR.local "intArray") (JR.local "randomIndex2")))))), 
                        JR.exec (JR.andThen (JR.local "intArray") (\jaN68043 -> JR.andThen (JR.local "randomIndex2") (\jiN68043 -> (JR.aset (JR.lit jaN68043) (JR.lit jiN68043) (JR.local "value"))))), 
                        JR.exec (JR.andThen (JR.local "intArray2") (\jaN68080 -> JR.andThen (JR.local "randomIndex") (\jiN68080 -> (JR.aset (JR.lit jaN68080) (JR.lit jiN68080) (JR.aget (JR.local "intArray2") (JR.local "randomIndex2")))))), 
                        JR.exec (JR.andThen (JR.local "intArray2") (\jaN68129 -> JR.andThen (JR.local "randomIndex2") (\jiN68129 -> (JR.aset (JR.lit jaN68129) (JR.lit jiN68129) (JR.local "value2"))))) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_main_1 : JR.Method
jm_main_1 jheap jthis jargs =
    JR.method [ ( "args", "" ) ] ""
        (JR.run [ 
                    JR.declare "randomFactory" "" (JR.callStatic jm_getInstance_0 []), 
                    JR.declare "stringBuilder" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                    JR.declare "size2" "I" (JR.int 100), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68650 -> (JR.setLocal "index" "I" (JR.lit jwN68650))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.local "stringBuilder") [ (JR.invoke "getAbsoluteNextInt_1" (JR.local "randomFactory") [ (JR.int 3) ]) ]) [ (JR.field "COMMA" (JR.local "commonSeps")) ]) ]) ], 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.invoke "toString_0" (JR.local "stringBuilder") []) ]), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuilder") []) ]), 
                    JR.declare "intArray" "" (JR.newArray "I" [ (JR.int 52) ]), 
                    JR.declare "intArray2" "" (JR.newArray "I" [ (JR.int 52) ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "intArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69042 -> (JR.setLocal "index" "I" (JR.lit jwN69042))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "intArray") (\jaN68920 -> JR.andThen (JR.local "index") (\jiN68920 -> (JR.aset (JR.lit jaN68920) (JR.lit jiN68920) (JR.local "index"))))), 
                        JR.exec (JR.andThen (JR.local "intArray2") (\jaN68957 -> JR.andThen (JR.local "index") (\jiN68957 -> (JR.aset (JR.lit jaN68957) (JR.lit jiN68957) (JR.local "index"))))) ]) ], 
                    JR.exec (JR.invoke "shuffle2_2" (JR.local "randomFactory") [ (JR.local "intArray"), (JR.local "intArray2") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69225 -> (JR.setLocal "index" "I" (JR.lit jwN69225))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.local "stringBuilder") [ (JR.aget (JR.local "intArray") (JR.local "index")) ]) [ (JR.field "COMMA" (JR.local "commonSeps")) ]) ]) ], 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.invoke "toString_0" (JR.local "stringBuilder") []) ]), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuilder") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuilder") []) ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69459 -> (JR.setLocal "index" "I" (JR.lit jwN69459))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.local "stringBuilder") [ (JR.aget (JR.local "intArray2") (JR.local "index")) ]) [ (JR.field "COMMA" (JR.local "commonSeps")) ]) ]) ], 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.invoke "toString_0" (JR.local "stringBuilder") []) ]), 
                    JR.declare "found" "Z" (JR.lit (JR.defaultOf "Z")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69800 -> (JR.setLocal "index" "I" (JR.lit jwN69800))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "found" "Z" (JR.bool False)), 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN69701 -> (JR.setLocal "index2" "I" (JR.lit jwN69701))) JR.increment) ]) (JR.run [ 
                            JR.ifElse (JR.map2 JR.equals (JR.aget (JR.local "intArray") (JR.local "index2")) (JR.local "index")) (JR.run [ 
                                JR.exec (JR.setLocal "found" "Z" (JR.bool True)) ]) identity ]) ], 
                        JR.ifElse (JR.map JR.not_ (JR.local "found")) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) identity ]) ] ])
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

