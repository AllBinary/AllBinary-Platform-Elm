module Org.Allbinary.Thread.ABRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thread
-}

import JR
import Org.Allbinary.Thread.RunnableInterface as RunnableInterface


jclass : String
jclass =
    "ABRunnable"


jchain : List String
jchain =
    [ "ABRunnable" ]
        ++ RunnableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "running", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "setThread_1", jm_setThread_1 )
        , ( "isRunning_0", jm_isRunning_0 )
        , ( "setRunning_1", jm_setRunning_1 )
        , ( "run_0", jm_run_0 )
        , ( "getType_0", jm_getType_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABRunnable"
        [ ( "jm_setThread_1", jm_setThread_1 ), ( "jm_isRunning_0", jm_isRunning_0 ), ( "jm_setRunning_1", jm_setRunning_1 ), ( "jm_run_0", jm_run_0 ), ( "jm_getType_0", jm_getType_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "running" "Z" JR.this (JR.bool False)),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setThread_1 : JR.Method
jm_setThread_1 jheap jthis jargs =
    JR.method [ ( "thread", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isRunning_0 : JR.Method
jm_isRunning_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "running") ])
        (jregister jheap)
        jthis
        jargs


jm_setRunning_1 : JR.Method
jm_setRunning_1 jheap jthis jargs =
    JR.method [ ( "running", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "running" "Z" JR.this (JR.local "running")) ])
        (jregister jheap)
        jthis
        jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
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

