module Org.Allbinary.Logic.String.StringMaker exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.string
-}

import JR
import JFloat
import JInteger
import JLong


jclass : String
jclass =
    "StringMaker"


jchain : List String
jchain =
    [ "StringMaker" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "charArray", JR.defaultOf "" ), ( "currentLength", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "append_1", jm_append_1 )
        , ( "appendchar_1", jm_appendchar_1 )
        , ( "appendCharArray_3", jm_appendCharArray_3 )
        , ( "appendbyte_1", jm_appendbyte_1 )
        , ( "appendshort_1", jm_appendshort_1 )
        , ( "appendint_1", jm_appendint_1 )
        , ( "appendlong_1", jm_appendlong_1 )
        , ( "appendfloat_1", jm_appendfloat_1 )
        , ( "appendboolean_1", jm_appendboolean_1 )
        , ( "ensureCapacity_1", jm_ensureCapacity_1 )
        , ( "min_2", jm_min_2 )
        , ( "delete_2", jm_delete_2 )
        , ( "length_0", jm_length_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StringMaker"
        [ ( "jm_append_1", jm_append_1 ), ( "jm_appendchar_1", jm_appendchar_1 ), ( "jm_appendCharArray_3", jm_appendCharArray_3 ), ( "jm_appendbyte_1", jm_appendbyte_1 ), ( "jm_appendshort_1", jm_appendshort_1 ), ( "jm_appendint_1", jm_appendint_1 ), ( "jm_appendlong_1", jm_appendlong_1 ), ( "jm_appendfloat_1", jm_appendfloat_1 ), ( "jm_appendboolean_1", jm_appendboolean_1 ), ( "jm_ensureCapacity_1", jm_ensureCapacity_1 ), ( "jm_min_2", jm_min_2 ), ( "jm_delete_2", jm_delete_2 ), ( "jm_length_0", jm_length_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "charArray" "" JR.this (JR.newArray "C" [ (JR.int 20) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_append_1 : JR.Method
jm_append_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringLength" "I" (JR.invoke "length_0" (JR.local "string") []), 
                    JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.map2 JR.add (JR.thisField "currentLength") (JR.local "stringLength")) ]), 
                    JR.exec (JR.invoke "getChars_4" (JR.local "string") [ (JR.int 0), (JR.local "stringLength"), (JR.thisField "charArray"), (JR.thisField "currentLength") ]), 
                    JR.exec (JR.setField "currentLength" "I" JR.this (JR.map2 JR.add (JR.thisField "currentLength") (JR.local "stringLength"))), 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_appendchar_1 : JR.Method
jm_appendchar_1 jheap jthis jargs =
    JR.method [ ( "c", "C" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.map2 JR.add (JR.thisField "currentLength") (JR.int 1)) ]), 
                    JR.exec (JR.andThen (JR.thisField "charArray") (\jaN66178 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN66185 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN66185))) JR.increment) (\jiN66178 -> (JR.aset (JR.lit jaN66178) (JR.lit jiN66178) (JR.local "c"))))), 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_appendCharArray_3 : JR.Method
jm_appendCharArray_3 jheap jthis jargs =
    JR.method [ ( "charArray", "" ), ( "start", "I" ), ( "end", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.map2 JR.add (JR.thisField "currentLength") ((JR.map2 JR.sub (JR.local "end") (JR.local "start")))) ]), 
                    JR.run [ JR.declare "index" "I" (JR.local "start"), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "end")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66480 -> (JR.setLocal "index" "I" (JR.lit jwN66480))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN66368 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN66375 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN66375))) JR.increment) (\jiN66368 -> (JR.aset (JR.lit jaN66368) (JR.lit jiN66368) (JR.aget (JR.local "charArray") (JR.local "index")))))) ]) ], 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_appendbyte_1 : JR.Method
jm_appendbyte_1 jheap jthis jargs =
    JR.method [ ( "b", "B" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "append_1" JR.this [ (JR.callStatic JInteger.jm_toString_1 [ (JR.local "b") ]) ]), 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_appendshort_1 : JR.Method
jm_appendshort_1 jheap jthis jargs =
    JR.method [ ( "b", "S" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "append_1" JR.this [ (JR.callStatic JInteger.jm_toString_1 [ (JR.local "b") ]) ]), 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_appendint_1 : JR.Method
jm_appendint_1 jheap jthis jargs =
    JR.method [ ( "i", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "append_1" JR.this [ (JR.callStatic JInteger.jm_toString_1 [ (JR.local "i") ]) ]), 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_appendlong_1 : JR.Method
jm_appendlong_1 jheap jthis jargs =
    JR.method [ ( "l", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "append_1" JR.this [ (JR.callStatic JLong.jm_toString_1 [ (JR.local "l") ]) ]), 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_appendfloat_1 : JR.Method
jm_appendfloat_1 jheap jthis jargs =
    JR.method [ ( "f", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "append_1" JR.this [ (JR.callStatic JFloat.jm_toString_1 [ (JR.local "f") ]) ]), 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_appendboolean_1 : JR.Method
jm_appendboolean_1 jheap jthis jargs =
    JR.method [ ( "bool", "Z" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.local "bool") (JR.run [ 
                        JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.map2 JR.add (JR.thisField "currentLength") (JR.int 4)) ]), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67526 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67533 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67533))) JR.increment) (\jiN67526 -> (JR.aset (JR.lit jaN67526) (JR.lit jiN67526) (JR.char 116))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67570 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67577 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67577))) JR.increment) (\jiN67570 -> (JR.aset (JR.lit jaN67570) (JR.lit jiN67570) (JR.char 114))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67614 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67621 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67621))) JR.increment) (\jiN67614 -> (JR.aset (JR.lit jaN67614) (JR.lit jiN67614) (JR.char 117))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67658 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67665 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67665))) JR.increment) (\jiN67658 -> (JR.aset (JR.lit jaN67658) (JR.lit jiN67658) (JR.char 101))))) ]) (JR.run [ 
                        JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.map2 JR.add (JR.thisField "currentLength") (JR.int 5)) ]), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67261 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67268 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67268))) JR.increment) (\jiN67261 -> (JR.aset (JR.lit jaN67261) (JR.lit jiN67261) (JR.char 102))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67305 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67312 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67312))) JR.increment) (\jiN67305 -> (JR.aset (JR.lit jaN67305) (JR.lit jiN67305) (JR.char 97))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67349 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67356 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67356))) JR.increment) (\jiN67349 -> (JR.aset (JR.lit jaN67349) (JR.lit jiN67349) (JR.char 108))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67393 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67400 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67400))) JR.increment) (\jiN67393 -> (JR.aset (JR.lit jaN67393) (JR.lit jiN67393) (JR.char 115))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67437 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67444 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67444))) JR.increment) (\jiN67437 -> (JR.aset (JR.lit jaN67437) (JR.lit jiN67437) (JR.char 101))))) ]), 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_ensureCapacity_1 : JR.Method
jm_ensureCapacity_1 jheap jthis jargs =
    JR.method [ ( "minSize", "I" ) ] ""
        (JR.run [ 
                    JR.declare "oldCapacity" "I" (JR.alength (JR.thisField "charArray")), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "minSize") (JR.local "oldCapacity")) (JR.run [ 
                        JR.declare "newCapacity" "I" (JR.map2 JR.mul (JR.local "oldCapacity") (JR.int 3)), 
                        JR.ifElse (JR.map2 JR.less (JR.local "newCapacity") (JR.local "minSize")) (JR.run [ 
                        JR.exec (JR.setLocal "newCapacity" "I" (JR.local "minSize")) ]) identity, 
                        JR.declare "copy" "" (JR.newArray "C" [ (JR.local "newCapacity") ]), 
                        JR.declare "min" "I" (JR.invoke "min_2" JR.this [ (JR.alength (JR.thisField "charArray")), (JR.local "newCapacity") ]), 
                        JR.exec (JR.withState JR.arraycopy [ (JR.thisField "charArray"), (JR.int 0), (JR.local "copy"), (JR.int 0), (JR.local "min") ]), 
                        JR.exec (JR.setField "charArray" "" JR.this (JR.local "copy")) ]) identity ])
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


jm_delete_2 : JR.Method
jm_delete_2 jheap jthis jargs =
    JR.method [ ( "start", "I" ), ( "end", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentLength" "I" JR.this (JR.map2 JR.sub (JR.thisField "currentLength") ((JR.map2 JR.sub (JR.local "end") (JR.local "start"))))), 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_length_0 : JR.Method
jm_length_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "currentLength") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.withState JR.newString [ (JR.thisField "charArray"), (JR.int 0), (JR.thisField "currentLength") ]) ])
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

