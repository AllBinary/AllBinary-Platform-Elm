module Org.Allbinary.Logic.Math.Permutations.OrderedObjectArrayPermutationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math.permutations
-}

import JR
import Org.Allbinary.Logic.Math.Permutations.ComparableObject as ComparableObject
import JArrays
import JSystem
import Org.Allbinary.Logic.Math.Permutations.ObjectPermutationVisitor as ObjectPermutationVisitor
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "OrderedObjectArrayPermutationUtil"


jchain : List String
jchain =
    [ "OrderedObjectArrayPermutationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "TOTAL_ITERATIONS_TABLE", JR.defaultOf "" ), ( "FINISHED", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getNext_1", jm_getNext_1 )
        , ( "swap_3", jm_swap_3 )
        , ( "factorial_1", jm_factorial_1 )
        , ( "generate_2", jm_generate_2 )
        , ( "main_1", jm_main_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OrderedObjectArrayPermutationUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getNext_1", jm_getNext_1 ), ( "jm_swap_3", jm_swap_3 ), ( "jm_factorial_1", jm_factorial_1 ), ( "jm_generate_2", jm_generate_2 ), ( "jm_main_1", jm_main_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "OrderedObjectArrayPermutationUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "TOTAL_ITERATIONS_TABLE" "" JR.this (JR.str "Total Iterations: ")),
                JR.exec (JR.setField "FINISHED" "" JR.this (JR.str "\nFINISHED")),
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


jm_getNext_1 : JR.Method
jm_getNext_1 jheap jthis jargs =
    JR.method [ ( "data", "" ) ] ""
        (JR.run [ 
                    JR.declare "length" "I" (JR.alength (JR.local "data")), 
                    JR.declare "i" "I" (JR.map2 JR.sub (JR.local "length") (JR.int 1)), 
                    JR.declare "tsUtil" "" (JR.callStatic TsUtil.jm_getInstance_0 []), 
                    JR.while (JR.map2 JR.greaterEquals (JR.invoke "hashCode_1" (JR.local "tsUtil") [ (JR.aget (JR.local "data") (JR.map2 JR.sub (JR.local "i") (JR.int 1))) ]) (JR.invoke "hashCode_1" (JR.local "tsUtil") [ (JR.aget (JR.local "data") (JR.local "i")) ])) (JR.run [ 
                        JR.exec (JR.setLocal "i" "I" (JR.map2 JR.sub (JR.local "i") (JR.int 1))) ]), 
                    JR.declare "j" "I" (JR.local "length"), 
                    JR.while (JR.map2 JR.lessEquals (JR.invoke "hashCode_1" (JR.local "tsUtil") [ (JR.aget (JR.local "data") (JR.map2 JR.sub (JR.local "j") (JR.int 1))) ]) (JR.invoke "hashCode_1" (JR.local "tsUtil") [ (JR.aget (JR.local "data") (JR.map2 JR.sub (JR.local "i") (JR.int 1))) ])) (JR.run [ 
                        JR.exec (JR.setLocal "j" "I" (JR.map2 JR.sub (JR.local "j") (JR.int 1))) ]), 
                    JR.exec (JR.invoke "swap_3" JR.this [ (JR.local "data"), (JR.map2 JR.sub (JR.local "i") (JR.int 1)), (JR.map2 JR.sub (JR.local "j") (JR.int 1)) ]), 
                    JR.exec (JR.postUpdate (JR.local "i") (\jwN66824 -> (JR.setLocal "i" "I" (JR.lit jwN66824))) JR.increment), 
                    JR.exec (JR.setLocal "j" "I" (JR.local "length")), 
                    JR.while (JR.map2 JR.less (JR.local "i") (JR.local "j")) (JR.run [ 
                        JR.exec (JR.invoke "swap_3" JR.this [ (JR.local "data"), (JR.map2 JR.sub (JR.local "i") (JR.int 1)), (JR.map2 JR.sub (JR.local "j") (JR.int 1)) ]), 
                        JR.exec (JR.postUpdate (JR.local "i") (\jwN66934 -> (JR.setLocal "i" "I" (JR.lit jwN66934))) JR.increment), 
                        JR.exec (JR.postUpdate (JR.local "j") (\jwN66951 -> (JR.setLocal "j" "I" (JR.lit jwN66951))) JR.decrement) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_swap_3 : JR.Method
jm_swap_3 jheap jthis jargs =
    JR.method [ ( "data", "" ), ( "a", "I" ), ( "b", "I" ) ] ""
        (JR.run [ 
                    JR.declare "temp" "" (JR.aget (JR.local "data") (JR.local "a")), 
                    JR.exec (JR.andThen (JR.local "data") (\jaN67089 -> JR.andThen (JR.local "a") (\jiN67089 -> (JR.aset (JR.lit jaN67089) (JR.lit jiN67089) (JR.aget (JR.local "data") (JR.local "b")))))), 
                    JR.exec (JR.andThen (JR.local "data") (\jaN67138 -> JR.andThen (JR.local "b") (\jiN67138 -> (JR.aset (JR.lit jaN67138) (JR.lit jiN67138) (JR.local "temp"))))) ])
        (jregister jheap)
        jthis
        jargs


jm_factorial_1 : JR.Method
jm_factorial_1 jheap jthis jargs =
    JR.method [ ( "dataLength", "I" ) ] "J"
        (JR.run [ 
                    JR.declare "temp" "J" (JR.long 1), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "dataLength") (JR.int 1)) (JR.run [ 
                        JR.run [ JR.declare "i" "I" (JR.int 1), JR.for (JR.map2 JR.lessEquals (JR.local "i") (JR.local "dataLength")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN67384 -> (JR.setLocal "i" "I" (JR.lit jwN67384))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "temp" "J" (JR.map2 JR.mul (JR.local "temp") (JR.local "i"))) ]) ] ]) identity, 
                    JR.return (JR.local "temp") ])
        (jregister jheap)
        jthis
        jargs


jm_generate_2 : JR.Method
jm_generate_2 jheap jthis jargs =
    JR.method [ ( "data", "" ), ( "visitor", "" ) ] ""
        (JR.run [ 
                    JR.declare "iterations" "J" (JR.invoke "factorial_1" JR.this [ (JR.alength (JR.local "data")) ]), 
                    JR.exec (JR.invoke "print_1" JSystem.jstatic_out [ (JR.thisField "TOTAL_ITERATIONS_TABLE") ]), 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.local "iterations") ]), 
                    JR.run [ JR.declare "count" "J" (JR.long 0), JR.for (JR.map2 JR.less (JR.local "count") (JR.map2 JR.sub (JR.local "iterations") (JR.long 1))) (JR.run [ JR.exec (JR.postUpdate (JR.local "count") (\jwN67714 -> (JR.setLocal "count" "J" (JR.lit jwN67714))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "getNext_1" JR.this [ (JR.local "data") ]), 
                        JR.exec (JR.invoke "visit_1" (JR.local "visitor") [ JR.this ]) ]) ], 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.thisField "FINISHED") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_main_1 : JR.Method
jm_main_1 jheap jthis jargs =
    JR.method [ ( "args", "" ) ] ""
        (JR.run [ 
                    JR.declare "TOTAL" "I" (JR.int 7), 
                    JR.declare "data" "" (JR.newArray "" [ (JR.local "TOTAL") ]), 
                    JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.local "TOTAL")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN68042 -> (JR.setLocal "i" "I" (JR.lit jwN68042))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "data") (\jaN67953 -> JR.andThen (JR.local "i") (\jiN67953 -> (JR.aset (JR.lit jaN67953) (JR.lit jiN67953) (JR.new ComparableObject.jnew_0 []))))) ]) ], 
                    JR.exec (JR.callStatic JArrays.jm_sort_1 [ (JR.local "data") ]), 
                    JR.declare "permutationVisitor" "" (JR.new ObjectPermutationVisitor.jnew_1 [ (JR.local "data") ]), 
                    JR.declare "ORIGINAL_DATA_LABEL" "" (JR.str "Original Data: "), 
                    JR.exec (JR.invoke "print_1" JSystem.jstatic_out [ (JR.local "ORIGINAL_DATA_LABEL") ]), 
                    JR.exec (JR.invoke "visit_1" (JR.local "permutationVisitor") [ (JR.local "data") ]), 
                    JR.exec (JR.invoke "generate_2" (JR.callStatic jm_getInstance_0 []) [ (JR.local "data"), (JR.local "permutationVisitor") ]) ])
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

