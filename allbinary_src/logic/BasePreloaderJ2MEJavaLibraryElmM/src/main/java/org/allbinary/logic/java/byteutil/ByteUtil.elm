module Org.Allbinary.Logic.Java.Byteutil.ByteUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.java.byteutil
-}

import JR



jclass : String
jclass =
    "ByteUtil"


jchain : List String
jchain =
    [ "ByteUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "xor_2", jm_xor_2 )
        , ( "not_1", jm_not_1 )
        , ( "xorByte_2", jm_xorByte_2 )
        , ( "compare_2", jm_compare_2 )
        , ( "compareWithStats_4", jm_compareWithStats_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ByteUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_xor_2", jm_xor_2 ), ( "jm_not_1", jm_not_1 ), ( "jm_xorByte_2", jm_xorByte_2 ), ( "jm_compare_2", jm_compare_2 ), ( "jm_compareWithStats_4", jm_compareWithStats_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ByteUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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


jm_xor_2 : JR.Method
jm_xor_2 jheap jthis jargs =
    JR.method [ ( "array", "" ), ( "mask", "B" ) ] ""
        (JR.run [ 
                    JR.declare "bytes" "" (JR.newArray "B" [ (JR.alength (JR.local "array")) ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "array")), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "currentByte" "B" (JR.lit (JR.defaultOf "B")), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ 
                        JR.exec (JR.setLocal "currentByte" "B" (JR.aget (JR.local "array") (JR.local "index"))), 
                        JR.exec (JR.andThen (JR.local "bytes") (\jaN65985 -> JR.andThen (JR.local "index") (\jiN65985 -> (JR.aset (JR.lit jaN65985) (JR.lit jiN65985) (JR.cast "B" ((JR.map2 JR.bxor (JR.local "currentByte") (JR.local "mask")))))))), 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN66051 -> (JR.setLocal "index" "I" (JR.lit jwN66051))) JR.increment) ]), 
                    JR.return (JR.local "bytes") ])
        (jregister jheap)
        jthis
        jargs


jm_not_1 : JR.Method
jm_not_1 jheap jthis jargs =
    JR.method [ ( "array", "" ) ] ""
        (JR.run [ 
                    JR.declare "bytes" "" (JR.newArray "B" [ (JR.alength (JR.local "array")) ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "array")), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.while (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "bytes") (\jaN66334 -> JR.andThen (JR.local "index") (\jiN66334 -> (JR.aset (JR.lit jaN66334) (JR.lit jiN66334) (JR.cast "B" (JR.map JR.bnot (JR.aget (JR.local "array") (JR.local "index")))))))), 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN66396 -> (JR.setLocal "index" "I" (JR.lit jwN66396))) JR.increment) ]), 
                    JR.return (JR.local "bytes") ])
        (jregister jheap)
        jthis
        jargs


jm_xorByte_2 : JR.Method
jm_xorByte_2 jheap jthis jargs =
    JR.method [ ( "array", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "mask" "B" (JR.int 0), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "index") (JR.int 0)) (JR.run [ 
                    JR.exec (JR.setLocal "mask" "B" (JR.int 1)) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.local "index") (JR.int 1)) (JR.run [ 
                    JR.exec (JR.setLocal "mask" "B" (JR.int 2)) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.local "index") (JR.int 2)) (JR.run [ 
                    JR.exec (JR.setLocal "mask" "B" (JR.int 4)) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.local "index") (JR.int 3)) (JR.run [ 
                    JR.exec (JR.setLocal "mask" "B" (JR.int 8)) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.local "index") (JR.int 4)) (JR.run [ 
                    JR.exec (JR.setLocal "mask" "B" (JR.int 16)) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.local "index") (JR.int 5)) (JR.run [ 
                    JR.exec (JR.setLocal "mask" "B" (JR.int 32)) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.local "index") (JR.int 6)) (JR.run [ 
                    JR.exec (JR.setLocal "mask" "B" (JR.int 64)) ]) identity, 
                    JR.ifElse (JR.map2 JR.equals (JR.local "index") (JR.int 7)) (JR.run [ 
                    JR.exec (JR.setLocal "mask" "B" (JR.map JR.neg (JR.int 127))) ]) identity, 
                    JR.return (JR.invoke "xor_2" JR.this [ (JR.local "array"), (JR.local "mask") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_compare_2 : JR.Method
jm_compare_2 jheap jthis jargs =
    JR.method [ ( "newByteArray", "" ), ( "oldByteArray", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.alength (JR.local "newByteArray")) (JR.alength (JR.local "oldByteArray"))) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.declare "size" "I" (JR.alength (JR.local "newByteArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67214 -> (JR.setLocal "index" "I" (JR.lit jwN67214))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.local "newByteArray") (JR.local "index")) (JR.aget (JR.local "oldByteArray") (JR.local "index"))) (JR.run [ 
                            JR.return (JR.bool False) ]) identity ]) ], 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_compareWithStats_4 : JR.Method
jm_compareWithStats_4 jheap jthis jargs =
    JR.method [ ( "newByteArray", "" ), ( "newSize", "I" ), ( "oldByteArray", "" ), ( "stats", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "newSize") (JR.alength (JR.local "oldByteArray"))) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "stats") (\jaN67396 -> JR.andThen (JR.int 0) (\jiN67396 -> (JR.aset (JR.lit jaN67396) (JR.lit jiN67396) (JR.map JR.neg (JR.int 1)))))), 
                        JR.exec (JR.andThen (JR.local "stats") (\jaN67430 -> JR.andThen (JR.int 2) (\jiN67430 -> (JR.aset (JR.lit jaN67430) (JR.lit jiN67430) (JR.local "newSize"))))), 
                        JR.exec (JR.andThen (JR.local "stats") (\jaN67463 -> JR.andThen (JR.int 3) (\jiN67463 -> (JR.aset (JR.lit jaN67463) (JR.lit jiN67463) (JR.alength (JR.local "oldByteArray")))))), 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "stats") (\jaN67356 -> JR.andThen (JR.int 0) (\jiN67356 -> (JR.aset (JR.lit jaN67356) (JR.lit jiN67356) (JR.local "newSize"))))) ]), 
                    JR.exec (JR.andThen (JR.local "stats") (\jaN67515 -> JR.andThen (JR.int 1) (\jiN67515 -> (JR.aset (JR.lit jaN67515) (JR.lit jiN67515) (JR.int 0))))), 
                    JR.declare "size" "I" (JR.local "newSize"), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67727 -> (JR.setLocal "index" "I" (JR.lit jwN67727))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.local "newByteArray") (JR.local "index")) (JR.aget (JR.local "oldByteArray") (JR.local "index"))) (JR.run [ 
                            JR.return (JR.bool False) ]) identity, 
                        JR.exec (JR.andThen (JR.local "stats") (\jaN67654 -> JR.andThen (JR.int 1) (\jiN67654 -> (JR.postUpdate (JR.aget (JR.lit jaN67654) (JR.lit jiN67654)) (\jwN67654 -> (JR.aset (JR.lit jaN67654) (JR.lit jiN67654) (JR.lit jwN67654))) JR.increment)))) ]) ], 
                    JR.return (JR.bool True) ])
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

