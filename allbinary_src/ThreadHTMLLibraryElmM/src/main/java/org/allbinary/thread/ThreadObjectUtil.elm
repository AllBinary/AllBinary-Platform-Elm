module Org.Allbinary.Thread.ThreadObjectUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thread
-}

import JR
import Org.Allbinary.Thread.NullPriorityRunnable as NullPriorityRunnable


jclass : String
jclass =
    "ThreadObjectUtil"


jchain : List String
jchain =
    [ "ThreadObjectUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NULL_PRIORITY_RUNNABLE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "notifyObject_1", jm_notifyObject_1 )
        , ( "waitObject_1", jm_waitObject_1 )
        , ( "waitObjectFor_2", jm_waitObjectFor_2 )
        , ( "processThread_1", jm_processThread_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ThreadObjectUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_notifyObject_1", jm_notifyObject_1 ), ( "jm_waitObject_1", jm_waitObject_1 ), ( "jm_waitObjectFor_2", jm_waitObjectFor_2 ), ( "jm_processThread_1", jm_processThread_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ThreadObjectUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NULL_PRIORITY_RUNNABLE" "" JR.this (JR.new NullPriorityRunnable.jnew_0 [])),
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


jm_notifyObject_1 : JR.Method
jm_notifyObject_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_waitObject_1 : JR.Method
jm_waitObject_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_waitObjectFor_2 : JR.Method
jm_waitObjectFor_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "delay", "J" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processThread_1 : JR.Method
jm_processThread_1 jheap jthis jargs =
    JR.method [ ( "runnable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "run_0" (JR.local "runnable") []) ])
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

