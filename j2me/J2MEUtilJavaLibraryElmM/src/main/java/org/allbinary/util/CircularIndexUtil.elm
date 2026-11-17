module CircularIndexUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.util
-}

import JR
import CommonLabels
import StringMaker


jclass : String
jclass =
    "CircularIndexUtil"


jchain : List String
jchain =
    [ "CircularIndexUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "index", JR.defaultOf "I" ), ( "lastIndex", JR.defaultOf "I" ), ( "size", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "next_0", jm_next_0 )
        , ( "previous_0", jm_previous_0 )
        , ( "setIndex_1", jm_setIndex_1 )
        , ( "getIndex_0", jm_getIndex_0 )
        , ( "createInstance_1", jm_createInstance_1 )
        , ( "createInstanceAt_2", jm_createInstanceAt_2 )
        , ( "setSize_1", jm_setSize_1 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CircularIndexUtil"
        [ ( "jm_next_0", jm_next_0 ), ( "jm_previous_0", jm_previous_0 ), ( "jm_setIndex_1", jm_setIndex_1 ), ( "jm_getIndex_0", jm_getIndex_0 ), ( "jm_createInstance_1", jm_createInstance_1 ), ( "jm_createInstanceAt_2", jm_createInstanceAt_2 ), ( "jm_setSize_1", jm_setSize_1 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_CIRCULAR_INDEX_UTIL", jstatic_NULL_CIRCULAR_INDEX_UTIL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_CIRCULAR_INDEX_UTIL : JR.M
jstatic_NULL_CIRCULAR_INDEX_UTIL s =
    JR.static "CircularIndexUtil" jclinit "NULL_CIRCULAR_INDEX_UTIL"
        (JR.new jnew_2 [ (JR.int 0), (JR.int 0) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "size", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "index" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "lastIndex" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "size" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setSize_1" JR.this [ (JR.local "size") ]), 
                    JR.exec (JR.invoke "setIndex_1" JR.this [ (JR.local "index") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_next_0 : JR.Method
jm_next_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.thisField "index") (JR.thisField "lastIndex")) (JR.run [ 
                        JR.exec (JR.setField "index" "I" JR.this (JR.int 0)) ]) (JR.run [ 
                        JR.exec (JR.postUpdate (JR.thisField "index") (\jwN66321 -> (JR.setField "index" "I" JR.this (JR.lit jwN66321))) JR.increment) ]), 
                    JR.return (JR.thisField "index") ])
        (jregister jheap)
        jthis
        jargs


jm_previous_0 : JR.Method
jm_previous_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.thisField "index") (JR.int 1)) (JR.run [ 
                        JR.exec (JR.setField "index" "I" JR.this (JR.thisField "lastIndex")) ]) (JR.run [ 
                        JR.exec (JR.postUpdate (JR.thisField "index") (\jwN66459 -> (JR.setField "index" "I" JR.this (JR.lit jwN66459))) JR.decrement) ]), 
                    JR.return (JR.thisField "index") ])
        (jregister jheap)
        jthis
        jargs


jm_setIndex_1 : JR.Method
jm_setIndex_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "index") (JR.thisField "lastIndex")) (JR.run [ 
                        JR.returnVoid ]) identity, 
                    JR.exec (JR.setField "index" "I" JR.this (JR.local "index")) ])
        (jregister jheap)
        jthis
        jargs


jm_getIndex_0 : JR.Method
jm_getIndex_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "index") ])
        (jregister jheap)
        jthis
        jargs


jm_createInstance_1 : JR.Method
jm_createInstance_1 jheap jthis jargs =
    JR.method [ ( "max", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_2 [ (JR.int 0), (JR.local "max") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createInstanceAt_2 : JR.Method
jm_createInstanceAt_2 jheap jthis jargs =
    JR.method [ ( "index", "I" ), ( "max", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_2 [ (JR.local "index"), (JR.local "max") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setSize_1 : JR.Method
jm_setSize_1 jheap jthis jargs =
    JR.method [ ( "size", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "size" "I" JR.this (JR.local "size")), 
                    JR.exec (JR.setField "lastIndex" "I" JR.this (JR.map2 JR.sub (JR.local "size") (JR.int 1))), 
                    JR.exec (JR.setField "index" "I" JR.this (JR.int 0)) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "size") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "INDEX_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.thisField "index") ]) [ (JR.str "lastIndex: ") ]) [ (JR.thisField "lastIndex") ]) [ (JR.str "size: ") ]) [ (JR.thisField "size") ]) []) ])
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

