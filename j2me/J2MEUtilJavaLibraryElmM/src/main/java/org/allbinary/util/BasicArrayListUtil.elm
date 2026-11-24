module Org.Allbinary.Util.BasicArrayListUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.util
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonPhoneStrings as CommonPhoneStrings
import Org.Allbinary.Util.ImmutableBasicArrayList as ImmutableBasicArrayList
import JSystem
import Org.Allbinary.Game.Rand.MyRandomFactory as MyRandomFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BasicArrayListUtil"


jchain : List String
jchain =
    [ "BasicArrayListUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NULL_ARRAY_OF_ARRAY", JR.defaultOf "" ), ( "myRandomFactory", JR.defaultOf "" ), ( "immutableInstance", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getRandom_1", jm_getRandom_1 )
        , ( "getRandomIndex_1", jm_getRandomIndex_1 )
        , ( "reverse_1", jm_reverse_1 )
        , ( "log_1", jm_log_1 )
        , ( "getImmutableInstance_0", jm_getImmutableInstance_0 )
        , ( "main_1", jm_main_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicArrayListUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getRandom_1", jm_getRandom_1 ), ( "jm_getRandomIndex_1", jm_getRandomIndex_1 ), ( "jm_reverse_1", jm_reverse_1 ), ( "jm_log_1", jm_log_1 ), ( "jm_getImmutableInstance_0", jm_getImmutableInstance_0 ), ( "jm_main_1", jm_main_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "BasicArrayListUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NULL_ARRAY_OF_ARRAY" "" JR.this (JR.newArray "" [ (JR.int 0), (JR.int 0) ])),
                JR.exec (JR.setField "myRandomFactory" "" JR.this (JR.callStatic MyRandomFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "immutableInstance" "" JR.this (JR.new ImmutableBasicArrayList.jnew_2 [ (JR.str "Immutable"), (JR.int 0) ])),
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


jm_getRandom_1 : JR.Method
jm_getRandom_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] ""
        (JR.run [ 
                    JR.declare "i_random" "I" (JR.invoke "getRandomIndex_1" JR.this [ (JR.local "list") ]), 
                    JR.return (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "i_random")) ])
        (jregister jheap)
        jthis
        jargs


jm_getRandomIndex_1 : JR.Method
jm_getRandomIndex_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getAbsoluteNextInt_1" (JR.thisField "myRandomFactory") [ (JR.invoke "size_0" (JR.local "list") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_reverse_1 : JR.Method
jm_reverse_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] ""
        (JR.run [ 
                    JR.declare "lastMinusOneIndex" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.local "list") []) (JR.int 2)), 
                    JR.declare "temp" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "size" "I" (JR.map2 JR.div (JR.local "lastMinusOneIndex") (JR.int 2)), 
                    JR.declare "secondSwapIndex" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.lessEquals (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67575 -> (JR.setLocal "index" "I" (JR.lit jwN67575))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "secondSwapIndex" "I" (JR.map2 JR.sub (JR.local "lastMinusOneIndex") (JR.local "index"))), 
                        JR.exec (JR.setLocal "temp" "" (JR.invoke "removeAt_1" (JR.local "list") [ (JR.local "index") ])), 
                        JR.exec (JR.invoke "addAt_2" (JR.local "list") [ (JR.local "index"), (JR.invoke "removeAt_1" (JR.local "list") [ (JR.local "secondSwapIndex") ]) ]), 
                        JR.exec (JR.invoke "addAt_2" (JR.local "list") [ (JR.map2 JR.add (JR.local "secondSwapIndex") (JR.int 1)), (JR.local "temp") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_log_1 : JR.Method
jm_log_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] ""
        (JR.run [ 
                    JR.declare "S_LABEL" "" (JR.str " s: "), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "TOTAL_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "size") ]), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68059 -> (JR.setLocal "index" "I" (JR.lit jwN68059))) JR.decrement) ]) (JR.run [ 
                        JR.declare "usedList" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "S_LABEL") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.invoke "size_0" (JR.local "usedList") []) ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getImmutableInstance_0 : JR.Method
jm_getImmutableInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "immutableInstance") ])
        (jregister jheap)
        jthis
        jargs


jm_main_1 : JR.Method
jm_main_1 jheap jthis jargs =
    JR.method [ ( "args", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonPhoneStrings" "" (JR.callStatic CommonPhoneStrings.jm_getInstance_0 []), 
                    JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "ONE" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "TWO" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "THREE" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "FOUR" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "FIVE" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "SIX" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "SEVEN" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "EIGHT" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "NINE" (JR.local "commonPhoneStrings")) ]), 
                    JR.exec (JR.invoke "reverse_1" (JR.callStatic jm_getInstance_0 []) [ (JR.local "list") ]), 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.invoke "toString_0" (JR.local "list") []) ]) ])
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

