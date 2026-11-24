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
                    JR.exec (JR.andThen (JR.thisField "charArray") (\jaN66179 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN66186 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN66186))) JR.increment) (\jiN66179 -> (JR.aset (JR.lit jaN66179) (JR.lit jiN66179) (JR.local "c"))))), 
                    JR.return JR.this ])
        (jregister jheap)
        jthis
        jargs


jm_appendCharArray_3 : JR.Method
jm_appendCharArray_3 jheap jthis jargs =
    JR.method [ ( "charArray", "" ), ( "start", "I" ), ( "end", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.map2 JR.add (JR.thisField "currentLength") ((JR.map2 JR.sub (JR.local "end") (JR.local "start")))) ]), 
                    JR.run [ JR.declare "index" "I" (JR.local "start"), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "end")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66481 -> (JR.setLocal "index" "I" (JR.lit jwN66481))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN66369 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN66376 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN66376))) JR.increment) (\jiN66369 -> (JR.aset (JR.lit jaN66369) (JR.lit jiN66369) (JR.aget (JR.local "charArray") (JR.local "index")))))) ]) ], 
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
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67527 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67534 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67534))) JR.increment) (\jiN67527 -> (JR.aset (JR.lit jaN67527) (JR.lit jiN67527) (JR.char 116))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67571 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67578 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67578))) JR.increment) (\jiN67571 -> (JR.aset (JR.lit jaN67571) (JR.lit jiN67571) (JR.char 114))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67615 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67622 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67622))) JR.increment) (\jiN67615 -> (JR.aset (JR.lit jaN67615) (JR.lit jiN67615) (JR.char 117))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67659 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67666 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67666))) JR.increment) (\jiN67659 -> (JR.aset (JR.lit jaN67659) (JR.lit jiN67659) (JR.char 101))))) ]) (JR.run [ 
                        JR.exec (JR.invoke "ensureCapacity_1" JR.this [ (JR.map2 JR.add (JR.thisField "currentLength") (JR.int 5)) ]), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67262 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67269 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67269))) JR.increment) (\jiN67262 -> (JR.aset (JR.lit jaN67262) (JR.lit jiN67262) (JR.char 102))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67306 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67313 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67313))) JR.increment) (\jiN67306 -> (JR.aset (JR.lit jaN67306) (JR.lit jiN67306) (JR.char 97))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67350 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67357 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67357))) JR.increment) (\jiN67350 -> (JR.aset (JR.lit jaN67350) (JR.lit jiN67350) (JR.char 108))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67394 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67401 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67401))) JR.increment) (\jiN67394 -> (JR.aset (JR.lit jaN67394) (JR.lit jiN67394) (JR.char 115))))), 
                        JR.exec (JR.andThen (JR.thisField "charArray") (\jaN67438 -> JR.andThen (JR.postUpdate (JR.thisField "currentLength") (\jwN67445 -> (JR.setField "currentLength" "I" JR.this (JR.lit jwN67445))) JR.increment) (\jiN67438 -> (JR.aset (JR.lit jaN67438) (JR.lit jiN67438) (JR.char 101))))) ]), 
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

