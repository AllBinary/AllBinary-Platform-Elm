module PathFindingThreadPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thread
-}

import JR
import ThreadPool


jclass : String
jclass =
    "PathFindingThreadPool"


jchain : List String
jchain =
    [ "PathFindingThreadPool" ]
        ++ ThreadPool.jchain


jfields : List ( String, JR.JValue )
jfields =
    ThreadPool.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "runTaskWithPriority_1", jm_runTaskWithPriority_1 )
        , ( "runTask_1", jm_runTask_1 )
        , ( "startTask_1", jm_startTask_1 )
        , ( "completedTask_1", jm_completedTask_1 ) ]
        ThreadPool.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PathFindingThreadPool"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_runTaskWithPriority_1", jm_runTaskWithPriority_1 ), ( "jm_runTask_1", jm_runTask_1 ), ( "jm_startTask_1", jm_startTask_1 ), ( "jm_completedTask_1", jm_completedTask_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "PathFindingThreadPool" jclinit "instance"
        (JR.new jnew_3 [ (JR.str "PathFinding"), (JR.int 1), (JR.int 1) ])
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "poolName", "" ), ( "numThreads", "I" ), ( "priority", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ThreadPool.jinit_3 JR.this [ (JR.local "poolName"), (JR.local "numThreads"), ThreadPool.jstatic_NORMAL_PRIORITY ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_runTaskWithPriority_1 : JR.Method
jm_runTaskWithPriority_1 jheap jthis jargs =
    JR.method [ ( "task", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ThreadPool.jvtable "runTaskWithPriority_1" JR.this [ (JR.local "task") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_runTask_1 : JR.Method
jm_runTask_1 jheap jthis jargs =
    JR.method [ ( "task", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ThreadPool.jvtable "runTask_1" JR.this [ (JR.local "task") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_startTask_1 : JR.Method
jm_startTask_1 jheap jthis jargs =
    JR.method [ ( "task", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_completedTask_1 : JR.Method
jm_completedTask_1 jheap jthis jargs =
    JR.method [ ( "task", "" ) ] ""
        identity
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

