module Org.Allbinary.Thread.ThreadPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thread
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Util.BasicArrayListUtil as BasicArrayListUtil
import Org.Allbinary.String.CommonStrings as CommonStrings
import JThread
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Thread.NullRunnable as NullRunnable
import Org.Allbinary.Thread.PooledThread as PooledThread
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Thread.ThreadObjectUtil as ThreadObjectUtil
import Org.Allbinary.Thread.ThreadPoolStrings as ThreadPoolStrings


jclass : String
jclass =
    "ThreadPool"


jchain : List String
jchain =
    [ "ThreadPool" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "NULL_RUNNABLE", JR.defaultOf "" ), ( "threadPoolStrings", JR.defaultOf "" ), ( "threadObjectUtil", JR.defaultOf "" ), ( "poolName", JR.defaultOf "" ), ( "priority", JR.defaultOf "I" ), ( "isAlive", JR.defaultOf "Z" ), ( "taskQueue", JR.defaultOf "" ), ( "threadID", JR.defaultOf "I" ), ( "numThreads", JR.defaultOf "I" ), ( "runningTask", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "runAPriorityTask_0", jm_runAPriorityTask_0 )
        , ( "runTaskWithPriority_1", jm_runTaskWithPriority_1 )
        , ( "runTask_1", jm_runTask_1 )
        , ( "getTask_0", jm_getTask_0 )
        , ( "clear_0", jm_clear_0 )
        , ( "close_0", jm_close_0 )
        , ( "join_0", jm_join_0 )
        , ( "isBusy_0", jm_isBusy_0 )
        , ( "threadStarted_0", jm_threadStarted_0 )
        , ( "threadStopped_0", jm_threadStopped_0 )
        , ( "startTask_1", jm_startTask_1 )
        , ( "completedTask_1", jm_completedTask_1 )
        , ( "createName_0", jm_createName_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ThreadPool"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_runAPriorityTask_0", jm_runAPriorityTask_0 ), ( "jm_runTaskWithPriority_1", jm_runTaskWithPriority_1 ), ( "jm_runTask_1", jm_runTask_1 ), ( "jm_getTask_0", jm_getTask_0 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_join_0", jm_join_0 ), ( "jm_isBusy_0", jm_isBusy_0 ), ( "jm_threadStarted_0", jm_threadStarted_0 ), ( "jm_threadStopped_0", jm_threadStopped_0 ), ( "jm_startTask_1", jm_startTask_1 ), ( "jm_completedTask_1", jm_completedTask_1 ), ( "jm_createName_0", jm_createName_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_ROOT_NAME", jstatic_ROOT_NAME ), ( "jstatic_NORMAL_PRIORITY", jstatic_NORMAL_PRIORITY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_ROOT_NAME : JR.M
jstatic_ROOT_NAME s =
    JR.static "ThreadPool" jclinit "ROOT_NAME"
        (JR.str "-PooledThread-")
        s


jstatic_NORMAL_PRIORITY : JR.M
jstatic_NORMAL_PRIORITY s =
    JR.static "ThreadPool" jclinit "NORMAL_PRIORITY"
        JThread.jstatic_NORM_PRIORITY
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "poolName", "" ), ( "numThreads", "I" ), ( "priority", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "NULL_RUNNABLE" "" JR.this (JR.callStatic NullRunnable.jm_getInstance_0 [])),
                JR.exec (JR.setField "threadPoolStrings" "" JR.this (JR.callStatic ThreadPoolStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "threadObjectUtil" "" JR.this (JR.callStatic ThreadObjectUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "isAlive" "Z" JR.this (JR.bool False)),
                JR.exec (JR.setField "taskQueue" "" JR.this (JR.invoke "getImmutableInstance_0" (JR.callStatic BasicArrayListUtil.jm_getInstance_0 []) [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "poolName" "" JR.this (JR.local "poolName")), 
                    JR.exec (JR.setField "priority" "I" JR.this (JR.local "priority")), 
                    JR.exec (JR.setField "numThreads" "I" JR.this (JR.local "numThreads")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.thisField "isAlive")) (JR.run [ 
                        JR.exec (JR.setField "isAlive" "Z" JR.this (JR.bool True)), 
                        JR.exec (JR.setField "taskQueue" "" JR.this (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.declare "pooledThread" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.thisField "numThreads")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN68120 -> (JR.setLocal "i" "I" (JR.lit jwN68120))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "pooledThread" "" (JR.new PooledThread.jnew_1 [ JR.this ])), 
                            JR.exec (JR.invoke "setPriority_1" (JR.local "pooledThread") [ (JR.thisField "priority") ]), 
                            JR.exec (JR.invoke "start_0" (JR.local "pooledThread") []) ]) ] ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_runAPriorityTask_0 : JR.Method
jm_runAPriorityTask_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_runTaskWithPriority_1 : JR.Method
jm_runTaskWithPriority_1 jheap jthis jargs =
    JR.method [ ( "task", "" ) ] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.ifElse (JR.map JR.not_ (JR.thisField "isAlive")) (JR.run [ 
                            JR.exec (JR.invoke "init_0" JR.this []) ]) identity, 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "task") JR.null) (JR.run [ 
                            JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "taskQueue") []), 
                            JR.declare "runnable" "" (JR.lit (JR.defaultOf "")), 
                            JR.declare "lowerPriorityRunnable" "" (JR.field "NULL_PRIORITY_RUNNABLE" (JR.thisField "threadObjectUtil")), 
                            JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68613 -> (JR.setLocal "index" "I" (JR.lit jwN68613))) JR.increment) ]) (JR.run [ 
                                JR.exec (JR.setLocal "runnable" "" (JR.invoke "get_1" (JR.thisField "taskQueue") [ (JR.local "index") ])), 
                                JR.ifElse (JR.map2 JR.greater (JR.invoke "getPriority_0" (JR.local "runnable") []) (JR.invoke "getPriority_0" (JR.local "task") [])) (JR.run [ 
                                    JR.exec (JR.setLocal "lowerPriorityRunnable" "" (JR.local "runnable")), 
                                    JR.break ]) identity ]) ], 
                            JR.ifElse (JR.map2 JR.equals (JR.local "lowerPriorityRunnable") (JR.field "NULL_PRIORITY_RUNNABLE" (JR.thisField "threadObjectUtil"))) (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.thisField "taskQueue") [ (JR.local "task") ]) ]) (JR.run [ 
                                JR.declare "index" "I" (JR.invoke "indexOf_1" (JR.thisField "taskQueue") [ (JR.local "lowerPriorityRunnable") ]), 
                                JR.exec (JR.invoke "addAt_2" (JR.thisField "taskQueue") [ (JR.local "index"), (JR.local "task") ]) ]), 
                            JR.exec (JR.invoke "notify_0" JR.this []) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_runTask_1 : JR.Method
jm_runTask_1 jheap jthis jargs =
    JR.method [ ( "task", "" ) ] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.ifElse (JR.map JR.not_ (JR.thisField "isAlive")) (JR.run [ 
                            JR.exec (JR.invoke "init_0" JR.this []) ]) identity, 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "task") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.thisField "taskQueue") [ (JR.local "task") ]), 
                            JR.exec (JR.invoke "notify_0" JR.this []) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getTask_0 : JR.Method
jm_getTask_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.while (JR.map2 JR.equals (JR.invoke "size_0" (JR.thisField "taskQueue") []) (JR.int 0)) (JR.run [ 
                            JR.ifElse (JR.map JR.not_ (JR.thisField "isAlive")) (JR.run [ 
                                JR.return (JR.thisField "NULL_RUNNABLE") ]) identity, 
                            JR.exec (JR.invoke "wait_0" JR.this []) ]), 
                        JR.declare "runnable" "" (JR.invoke "removeAt_1" (JR.thisField "taskQueue") [ (JR.int 0) ]), 
                        JR.return (JR.local "runnable") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.ifElse (JR.thisField "isAlive") (JR.run [ 
                            JR.exec (JR.invoke "clear_0" (JR.thisField "taskQueue") []) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.ifElse (JR.thisField "isAlive") (JR.run [ 
                            JR.exec (JR.setField "isAlive" "Z" JR.this (JR.bool False)), 
                            JR.exec (JR.invoke "clear_0" (JR.thisField "taskQueue") []) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_join_0 : JR.Method
jm_join_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    (JR.run [ 
                        JR.exec (JR.setField "isAlive" "Z" JR.this (JR.bool False)), 
                        JR.exec (JR.invoke "clear_0" (JR.thisField "taskQueue") []), 
                        JR.exec (JR.invoke "notifyAll_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isBusy_0 : JR.Method
jm_isBusy_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.thisField "isAlive")) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.thisField "taskQueue") []) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.ifElse (JR.thisField "runningTask") (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_threadStarted_0 : JR.Method
jm_threadStarted_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_threadStopped_0 : JR.Method
jm_threadStopped_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "numThreads") (JR.int 1)) (JR.run [ 
                        JR.exec (JR.setField "isAlive" "Z" JR.this (JR.bool False)), 
                        JR.exec (JR.invoke "clear_0" (JR.thisField "taskQueue") []) ]) identity ])
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


jm_createName_0 : JR.Method
jm_createName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "poolName") ]) [ jstatic_ROOT_NAME ]) [ (JR.postUpdate (JR.thisField "threadID") (\jwN70076 -> (JR.setField "threadID" "I" JR.this (JR.lit jwN70076))) JR.increment) ]) []) ])
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

