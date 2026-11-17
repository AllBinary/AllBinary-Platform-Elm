module StringUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.string
-}

import JR



jclass : String
jclass =
    "StringUtil"


jchain : List String
jchain =
    [ "StringUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "INIT_STRING", JR.defaultOf "" ), ( "NULL_STRING", JR.defaultOf "" ), ( "EMPTY_STRING", JR.defaultOf "" ), ( "ONE_EMPTY_STRING_ARRAY", JR.defaultOf "" ), ( "ONE_EMPTY_STRING_ARRAY_OF_ARRAYS", JR.defaultOf "" ), ( "stringArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getNonNull_1", jm_getNonNull_1 )
        , ( "getArrayInstance_0", jm_getArrayInstance_0 )
        , ( "count_2", jm_count_2 )
        , ( "toString_1", jm_toString_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StringUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getNonNull_1", jm_getNonNull_1 ), ( "jm_getArrayInstance_0", jm_getArrayInstance_0 ), ( "jm_count_2", jm_count_2 ), ( "jm_toString_1", jm_toString_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "StringUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "INIT_STRING" "" JR.this (JR.withState JR.newString [ (JR.str "") ])),
                JR.exec (JR.setField "NULL_STRING" "" JR.this (JR.str "null")),
                JR.exec (JR.setField "EMPTY_STRING" "" JR.this (JR.str "")),
                JR.exec (JR.setField "ONE_EMPTY_STRING_ARRAY" "" JR.this (JR.arrayOf "" [ (JR.thisField "EMPTY_STRING") ])),
                JR.exec (JR.setField "ONE_EMPTY_STRING_ARRAY_OF_ARRAYS" "" JR.this (JR.newArray "" [ (JR.int 0), (JR.int 0) ])),
                JR.exec (JR.setField "stringArray" "" JR.this (JR.newArray "" [ (JR.int 0) ])),
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


jm_getNonNull_1 : JR.Method
jm_getNonNull_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.local "string") ])
        (jregister jheap)
        jthis
        jargs


jm_getArrayInstance_0 : JR.Method
jm_getArrayInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "stringArray") ])
        (jregister jheap)
        jthis
        jargs


jm_count_2 : JR.Method
jm_count_2 jheap jthis jargs =
    JR.method [ ( "string", "" ), ( "aChar", "C" ) ] "I"
        (JR.run [ 
                    JR.declare "count" "I" (JR.int 0), 
                    JR.declare "size" "I" (JR.invoke "length_0" (JR.local "string") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66607 -> (JR.setLocal "index" "I" (JR.lit jwN66607))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "charAt_1" (JR.local "string") [ (JR.local "index") ]) (JR.local "aChar")) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "count") (\jwN66539 -> (JR.setLocal "count" "I" (JR.lit jwN66539))) JR.increment) ]) identity ]) ], 
                    JR.return (JR.local "count") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_1 : JR.Method
jm_toString_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "anyType") JR.null) (JR.run [ 
                        JR.return (JR.invoke "toString_0" (JR.local "anyType") []) ]) (JR.run [ 
                        JR.return (JR.thisField "NULL_STRING") ]) ])
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

