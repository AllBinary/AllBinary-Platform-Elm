module Org.Allbinary.Logic.Util.Cache.PoolType exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR



jclass : String
jclass =
    "PoolType"


jchain : List String
jchain =
    [ "PoolType" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "cacheType", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getCacheType_0", jm_getCacheType_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PoolType"
        [ ( "jm_getCacheType_0", jm_getCacheType_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "cacheType", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "cacheType" "" JR.this (JR.local "cacheType")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getCacheType_0 : JR.Method
jm_getCacheType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "cacheType") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "POOL_TYPE" "" (JR.str "PoolType: "), 
                    JR.return (JR.concat (JR.local "POOL_TYPE") (JR.invoke "toString_0" (JR.invoke "getCacheType_0" JR.this []) [])) ])
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

