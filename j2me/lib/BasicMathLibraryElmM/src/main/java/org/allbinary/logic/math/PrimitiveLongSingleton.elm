module Org.Allbinary.Logic.Math.PrimitiveLongSingleton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.math
-}

import JR
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "PrimitiveLongSingleton"


jchain : List String
jchain =
    [ "PrimitiveLongSingleton" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "UNK", JR.defaultOf "" ), ( "NUMBER_ARRAY", JR.defaultOf "" ), ( "NUMBER_CHAR_ARRAY", JR.defaultOf "" ), ( "NUMBER_CHAR_ARRAYS", JR.defaultOf "" ), ( "ZERO", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getNumberFromChar_1", jm_getNumberFromChar_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PrimitiveLongSingleton"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getNumberFromChar_1", jm_getNumberFromChar_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PrimitiveLongSingleton" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "UNK" "" JR.this (JR.arrayOf "C" [ (JR.char 85), (JR.char 110), (JR.char 107) ])),
                JR.exec (JR.setField "NUMBER_ARRAY" "" JR.this (JR.arrayOf "B" [ (JR.int 0), (JR.int 1), (JR.int 2), (JR.int 3), (JR.int 4), (JR.int 5), (JR.int 6), (JR.int 7), (JR.int 8), (JR.int 9) ])),
                JR.exec (JR.setField "NUMBER_CHAR_ARRAY" "" JR.this (JR.arrayOf "C" [ (JR.char 48), (JR.char 49), (JR.char 50), (JR.char 51), (JR.char 52), (JR.char 53), (JR.char 54), (JR.char 55), (JR.char 56), (JR.char 57) ])),
                JR.exec (JR.setField "NUMBER_CHAR_ARRAYS" "" JR.this (JR.arrayOf "" [ (JR.arrayOf "C" [ (JR.char 48) ]), (JR.arrayOf "C" [ (JR.char 49) ]), (JR.arrayOf "C" [ (JR.char 50) ]), (JR.arrayOf "C" [ (JR.char 51) ]), (JR.arrayOf "C" [ (JR.char 52) ]), (JR.arrayOf "C" [ (JR.char 53) ]), (JR.arrayOf "C" [ (JR.char 54) ]), (JR.arrayOf "C" [ (JR.char 55) ]), (JR.arrayOf "C" [ (JR.char 56) ]), (JR.arrayOf "C" [ (JR.char 57) ]) ])),
                JR.exec (JR.setField "ZERO" "" JR.this (JR.arrayOf "C" [ (JR.aget (JR.thisField "NUMBER_CHAR_ARRAY") (JR.int 0)) ])),
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


jm_getNumberFromChar_1 : JR.Method
jm_getNumberFromChar_1 jheap jthis jargs =
    JR.method [ ( "numberAsChar", "C" ) ] "B"
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.thisField "NUMBER_CHAR_ARRAY")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66521 -> (JR.setLocal "index" "I" (JR.lit jwN66521))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.aget (JR.thisField "NUMBER_CHAR_ARRAY") (JR.local "index")) (JR.local "numberAsChar")) (JR.run [ 
                            JR.return (JR.aget (JR.thisField "NUMBER_ARRAY") (JR.local "index")) ]) identity ]) ], 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "appendchar_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "numberAsChar was not in array: ") ]) [ (JR.local "numberAsChar") ]) []) ]) ])
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

