module Org.Allbinary.Thread.SecondaryThreadPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thread
-}

import JR
import JSystem
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Thread.ThreadPool as ThreadPool


jclass : String
jclass =
    "SecondaryThreadPool"


jchain : List String
jchain =
    [ "SecondaryThreadPool" ]
        ++ ThreadPool.jchain


jfields : List ( String, JR.JValue )
jfields =
    ThreadPool.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "runTask_1", jm_runTask_1 )
        , ( "startTask_1", jm_startTask_1 )
        , ( "completedTask_1", jm_completedTask_1 ) ]
        ThreadPool.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SecondaryThreadPool"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_runTask_1", jm_runTask_1 ), ( "jm_startTask_1", jm_startTask_1 ), ( "jm_completedTask_1", jm_completedTask_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SecondaryThreadPool" jclinit "instance"
        (JR.new jnew_3 [ (JR.str "Secondary"), (JR.int 1), ThreadPool.jstatic_NORMAL_PRIORITY ])
        s


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "poolName", "" ), ( "numThreads", "I" ), ( "priority", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ThreadPool.jinit_3 JR.this [ (JR.local "poolName"), (JR.local "numThreads"), (JR.local "priority") ]),
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


jm_runTask_1 : JR.Method
jm_runTask_1 jheap jthis jargs =
    JR.method [ ( "task", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "task") ]) ]) [ (JR.callStatic JSystem.jm_currentTimeMillis_0 []) ]) []), JR.this, (JR.field "ADD_TASK" (JR.thisField "threadPoolStrings")) ]), 
                    JR.exec (JR.callVia ThreadPool.jvtable "runTask_1" JR.this [ (JR.local "task") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_startTask_1 : JR.Method
jm_startTask_1 jheap jthis jargs =
    JR.method [ ( "task", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_TASK" (JR.thisField "threadPoolStrings")) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "task") ]) ]) [ (JR.callStatic JSystem.jm_currentTimeMillis_0 []) ]) []), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_completedTask_1 : JR.Method
jm_completedTask_1 jheap jthis jargs =
    JR.method [ ( "task", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "COMPLETE_TASK" (JR.thisField "threadPoolStrings")) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "task") ]) ]) [ (JR.callStatic JSystem.jm_currentTimeMillis_0 []) ]) []), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]) ])
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

