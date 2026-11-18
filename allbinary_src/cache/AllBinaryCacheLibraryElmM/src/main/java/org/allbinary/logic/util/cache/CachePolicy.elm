module Org.Allbinary.Logic.Util.Cache.CachePolicy exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.cache
-}

import JR



jclass : String
jclass =
    "CachePolicy"


jchain : List String
jchain =
    [ "CachePolicy" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "name", JR.defaultOf "" ), ( "maxTime", JR.defaultOf "J" ), ( "maxSize", JR.defaultOf "J" ) ]


jvtable =
    JR.vtable
        [ ( "getMaxTime_0", jm_getMaxTime_0 )
        , ( "setMaxTime_1", jm_setMaxTime_1 )
        , ( "getMaxSize_0", jm_getMaxSize_0 )
        , ( "setMaxSize_1", jm_setMaxSize_1 )
        , ( "getName_0", jm_getName_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CachePolicy"
        [ ( "jm_getMaxTime_0", jm_getMaxTime_0 ), ( "jm_setMaxTime_1", jm_setMaxTime_1 ), ( "jm_getMaxSize_0", jm_getMaxSize_0 ), ( "jm_setMaxSize_1", jm_setMaxSize_1 ), ( "jm_getName_0", jm_getName_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "maxTime", "J" ), ( "maxSize", "J" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.invoke "setMaxTime_1" JR.this [ (JR.local "maxTime") ]), 
                    JR.exec (JR.invoke "setMaxSize_1" JR.this [ (JR.local "maxSize") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getMaxTime_0 : JR.Method
jm_getMaxTime_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.thisField "maxTime") ])
        (jregister jheap)
        jthis
        jargs


jm_setMaxTime_1 : JR.Method
jm_setMaxTime_1 jheap jthis jargs =
    JR.method [ ( "maxTime", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "maxTime" "J" JR.this (JR.local "maxTime")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMaxSize_0 : JR.Method
jm_getMaxSize_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.thisField "maxSize") ])
        (jregister jheap)
        jthis
        jargs


jm_setMaxSize_1 : JR.Method
jm_setMaxSize_1 jheap jthis jargs =
    JR.method [ ( "maxSize", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "maxSize" "J" JR.this (JR.local "maxSize")) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
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

