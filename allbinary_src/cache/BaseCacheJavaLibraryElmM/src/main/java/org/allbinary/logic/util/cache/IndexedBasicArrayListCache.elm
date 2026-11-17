module IndexedBasicArrayListCache exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR
import BaseBasicArrayListCache
import CacheInterface
import CommonStrings


jclass : String
jclass =
    "IndexedBasicArrayListCache"


jchain : List String
jchain =
    [ "IndexedBasicArrayListCache" ]
        ++ BaseBasicArrayListCache.jchain
        ++ CacheInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseBasicArrayListCache.jfields ++ [ ( "commonStrings", JR.defaultOf "" ), ( "size", JR.defaultOf "I" ), ( "index", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "createCache_1", jm_createCache_1 )
        , ( "init_1", jm_init_1 )
        , ( "getAt_1", jm_getAt_1 )
        , ( "addDefault_0", jm_addDefault_0 )
        , ( "addObject_1", jm_addObject_1 )
        , ( "add_1", jm_add_1 )
        , ( "addArray_1", jm_addArray_1 )
        , ( "clear_0", jm_clear_0 ) ]
        BaseBasicArrayListCache.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IndexedBasicArrayListCache"
        [ ( "jm_createCache_1", jm_createCache_1 ), ( "jm_init_1", jm_init_1 ), ( "jm_getAt_1", jm_getAt_1 ), ( "jm_addDefault_0", jm_addDefault_0 ), ( "jm_addObject_1", jm_addObject_1 ), ( "jm_add_1", jm_add_1 ), ( "jm_addArray_1", jm_addArray_1 ), ( "jm_clear_0", jm_clear_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BaseBasicArrayListCache.jinit_0 JR.this []),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "size" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "index" "I" JR.this (JR.int 0)),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_createCache_1 : JR.Method
jm_createCache_1 jheap jthis jargs =
    JR.method [ ( "size", "I" ) ] ""
        (JR.run [ 
                    JR.declare "indexedBasicArrayListCache" "" (JR.new jnew_0 []), 
                    JR.exec (JR.invoke "init_1" (JR.local "indexedBasicArrayListCache") [ (JR.local "size") ]), 
                    JR.return (JR.local "indexedBasicArrayListCache") ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "size", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.thisField "size") (JR.local "size")) (JR.run [ 
                        JR.exec (JR.invoke "ensureCapacity_1" (JR.thisField "list") [ (JR.local "size") ]), 
                        JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.thisField "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66779 -> (JR.setLocal "index" "I" (JR.lit jwN66779))) JR.decrement) ]) (JR.run [ 
                            JR.exec (JR.invoke "addDefault_0" JR.this []) ]) ], 
                        JR.exec (JR.setField "size" "I" JR.this (JR.local "size")) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getAt_1 : JR.Method
jm_getAt_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")) ])
        (jregister jheap)
        jthis
        jargs


jm_addDefault_0 : JR.Method
jm_addDefault_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_addObject_1 : JR.Method
jm_addObject_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "anyType") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "cacheableInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "cacheableInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addArray_1 : JR.Method
jm_addArray_1 jheap jthis jargs =
    JR.method [ ( "cacheableInterfaces", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "No Imple") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "index" "I" JR.this (JR.int 0)) ])
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

