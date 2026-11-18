module Org.Allbinary.Thread.PooledThread exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.thread
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import JThread
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Thread.ThreadObjectUtil as ThreadObjectUtil


jclass : String
jclass =
    "PooledThread"


jchain : List String
jchain =
    [ "PooledThread" ]
        ++ JThread.jchain


jfields : List ( String, JR.JValue )
jfields =
    JThread.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "threadObjectUtil", JR.defaultOf "" ), ( "threadPool", JR.defaultOf "" ), ( "INTERRUPT_EXCEPTION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 ) ]
        JThread.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PooledThread"
        [ ( "jm_run_0", jm_run_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "threadPool", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect JThread.jinit_1 JR.this [ (JR.invoke "createName_0" (JR.local "threadPool") []) ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "threadObjectUtil" "" JR.this (JR.callStatic ThreadObjectUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "INTERRUPT_EXCEPTION" "" JR.this (JR.str "Exit InterruptedException")),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.setField "threadPool" "" JR.this (JR.local "threadPool")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "threadStarted_0" (JR.thisField "threadPool") []), 
                    JR.while (JR.bool True) (JR.run [ 
                        JR.declare "task2" "" (JR.field "NULL_PRIORITY_RUNNABLE" (JR.thisField "threadObjectUtil")), 
                        JR.try (JR.run [ 
                            JR.exec (JR.setLocal "task2" "" (JR.invoke "getTask_0" (JR.thisField "threadPool") [])), 
                            JR.exec (JR.andThen (JR.thisField "threadPool") (\jtN67389 -> (JR.setField "runningTask" "Z" (JR.lit jtN67389) (JR.bool True)))), 
                            JR.exec (JR.invoke "startTask_1" (JR.thisField "threadPool") [ (JR.local "task2") ]) ]) [ ( [ "InterruptedException" ], "ex", (JR.run [ 
                            JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.thisField "INTERRUPT_EXCEPTION"), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                            JR.break ]) ) ] identity, 
                        JR.ifElse (JR.map2 JR.equals (JR.local "task2") (JR.field "NULL_PRIORITY_RUNNABLE" (JR.thisField "threadObjectUtil"))) (JR.run [ 
                            JR.break ]) identity, 
                        JR.try (JR.run [ 
                            JR.exec (JR.invoke "run_0" (JR.local "task2") []), 
                            JR.exec (JR.invoke "completedTask_1" (JR.thisField "threadPool") [ (JR.local "task2") ]), 
                            JR.exec (JR.andThen (JR.thisField "threadPool") (\jtN67710 -> (JR.setField "runningTask" "Z" (JR.lit jtN67710) (JR.bool False)))) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "EXCEPTION_LABEL" (JR.thisField "commonStrings")) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "task2") ]) ]) []), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]), 
                    JR.exec (JR.invoke "threadStopped_0" (JR.thisField "threadPool") []) ])
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

