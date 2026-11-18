module Org.Allbinary.Logic.Util.Cache.BasicArrayListPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR
import Org.Allbinary.Logic.Util.Cache.AbstractArrayListPool as AbstractArrayListPool


jclass : String
jclass =
    "BasicArrayListPool"


jchain : List String
jchain =
    [ "BasicArrayListPool" ]
        ++ AbstractArrayListPool.jchain


jfields : List ( String, JR.JValue )
jfields =
    AbstractArrayListPool.jfields ++ []


jvtable =
    JR.vtable
        [ ( "clear_0", jm_clear_0 )
        , ( "remove_1", jm_remove_1 )
        , ( "addAll_1", jm_addAll_1 )
        , ( "releaseUsedBackToPool_1", jm_releaseUsedBackToPool_1 ) ]
        AbstractArrayListPool.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicArrayListPool"
        [ ( "jm_clear_0", jm_clear_0 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_addAll_1", jm_addAll_1 ), ( "jm_releaseUsedBackToPool_1", jm_releaseUsedBackToPool_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "cacheableInterfaceFactoryInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AbstractArrayListPool.jinit_1 JR.this [ (JR.local "cacheableInterfaceFactoryInterface") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "buffers") []) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "key", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "buffers") []), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "size") (JR.int 0)) (JR.run [ 
                        JR.return (JR.invoke "removeAt_1" (JR.thisField "buffers") [ (JR.map2 JR.sub (JR.local "size") (JR.int 1)) ]) ]) (JR.run [ 
                        JR.return (JR.invoke "getInstance_1" (JR.thisField "cacheableInterfaceFactoryInterface") [ (JR.local "key") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addAll_1 : JR.Method
jm_addAll_1 jheap jthis jargs =
    JR.method [ ( "usedList", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.local "usedList") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN66832 -> (JR.setLocal "index" "I" (JR.lit jwN66832))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.declare "anyType" "" (JR.aget (JR.field "objectArray" (JR.local "usedList")) (JR.local "index")), 
                        JR.exec (JR.invoke "add_1" JR.this [ (JR.local "anyType") ]) ]) ], 
                    JR.exec (JR.invoke "clear_0" (JR.local "usedList") []) ])
        (jregister jheap)
        jthis
        jargs


jm_releaseUsedBackToPool_1 : JR.Method
jm_releaseUsedBackToPool_1 jheap jthis jargs =
    JR.method [ ( "usedList", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.local "usedList") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67139 -> (JR.setLocal "index" "I" (JR.lit jwN67139))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.declare "list" "" (JR.aget (JR.field "objectArray" (JR.local "usedList")) (JR.local "index")), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "size_0" (JR.local "list") []) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.invoke "removeAt_1" (JR.local "usedList") [ (JR.local "index") ]), 
                            JR.exec (JR.invoke "add_1" JR.this [ (JR.local "list") ]) ]) identity ]) ] ])
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

