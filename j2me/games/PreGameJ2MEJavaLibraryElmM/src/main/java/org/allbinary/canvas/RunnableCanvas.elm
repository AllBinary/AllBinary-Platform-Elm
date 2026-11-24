module Org.Allbinary.Canvas.RunnableCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.canvas
-}

import JR
import Org.Allbinary.Logic.ABSystemWrapper as ABSystemWrapper
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import JThread
import Org.Allbinary.Graphics.Displayable.MyCanvas as MyCanvas
import Org.Allbinary.Thread.NullThread as NullThread
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Game.Displayable.Canvas.NullWaitGameRunnable as NullWaitGameRunnable
import Org.Allbinary.Canvas.Processor as Processor
import Org.Allbinary.Canvas.RunnableCanvasRefreshHelper as RunnableCanvasRefreshHelper
import Org.Allbinary.Thread.RunnableInterface as RunnableInterface
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Thread.ThreadObjectUtil as ThreadObjectUtil
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "RunnableCanvas"


jchain : List String
jchain =
    [ "RunnableCanvas" ]
        ++ MyCanvas.jchain
        ++ RunnableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    MyCanvas.jfields ++ [ ( "nullUtil", JR.defaultOf "" ), ( "stdUtil", JR.defaultOf "" ), ( "systemWrapper", JR.defaultOf "" ), ( "tsUtil", JR.defaultOf "" ), ( "thread", JR.defaultOf "" ), ( "currentThread", JR.defaultOf "" ), ( "running", JR.defaultOf "Z" ), ( "loopTimeHelper", JR.defaultOf "" ), ( "runnableCanvasRefreshHelper", JR.defaultOf "" ), ( "commonLabels", JR.defaultOf "" ), ( "threadObjectUtil", JR.defaultOf "" ), ( "SET_RUNNING", JR.defaultOf "" ), ( "IS_RUNNING", JR.defaultOf "" ), ( "THREAD", JR.defaultOf "" ), ( "NOT_EQUAL", JR.defaultOf "" ), ( "PAUSE_SLEEP", JR.defaultOf "" ), ( "START_PAUSE", JR.defaultOf "" ), ( "END_PAUSE", JR.defaultOf "" ), ( "PROCESS_LOOP_SLEEP", JR.defaultOf "" ), ( "pauseWait", JR.defaultOf "J" ), ( "notified", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "initCommands_1", jm_initCommands_1 )
        , ( "isMainCanvas_0", jm_isMainCanvas_0 )
        , ( "setThread_1", jm_setThread_1 )
        , ( "setRunning_1", jm_setRunning_1 )
        , ( "isRunning_0", jm_isRunning_0 )
        , ( "getLoopTimeHelperP_0", jm_getLoopTimeHelperP_0 )
        , ( "setWait_1", jm_setWait_1 )
        , ( "getWait_0", jm_getWait_0 )
        , ( "setCurrentThread_0", jm_setCurrentThread_0 )
        , ( "setCurrentThreadFake_0", jm_setCurrentThreadFake_0 )
        , ( "showNotify_0", jm_showNotify_0 )
        , ( "stopWaiting_0", jm_stopWaiting_0 )
        , ( "waitOnNotify_1", jm_waitOnNotify_1 )
        , ( "processSleep_0", jm_processSleep_0 )
        , ( "isPausable_0", jm_isPausable_0 )
        , ( "processGameSleep_1", jm_processGameSleep_1 )
        , ( "processLoopSleep_0", jm_processLoopSleep_0 )
        , ( "isSingleThread_0", jm_isSingleThread_0 )
        , ( "run_0", jm_run_0 )
        , ( "end2_0", jm_end2_0 )
        , ( "getType_0", jm_getType_0 ) ]
        MyCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RunnableCanvas"
        [ ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_isMainCanvas_0", jm_isMainCanvas_0 ), ( "jm_setThread_1", jm_setThread_1 ), ( "jm_setRunning_1", jm_setRunning_1 ), ( "jm_isRunning_0", jm_isRunning_0 ), ( "jm_getLoopTimeHelperP_0", jm_getLoopTimeHelperP_0 ), ( "jm_setWait_1", jm_setWait_1 ), ( "jm_getWait_0", jm_getWait_0 ), ( "jm_setCurrentThread_0", jm_setCurrentThread_0 ), ( "jm_setCurrentThreadFake_0", jm_setCurrentThreadFake_0 ), ( "jm_showNotify_0", jm_showNotify_0 ), ( "jm_stopWaiting_0", jm_stopWaiting_0 ), ( "jm_waitOnNotify_1", jm_waitOnNotify_1 ), ( "jm_processSleep_0", jm_processSleep_0 ), ( "jm_isPausable_0", jm_isPausable_0 ), ( "jm_processGameSleep_1", jm_processGameSleep_1 ), ( "jm_processLoopSleep_0", jm_processLoopSleep_0 ), ( "jm_isSingleThread_0", jm_isSingleThread_0 ), ( "jm_run_0", jm_run_0 ), ( "jm_end2_0", jm_end2_0 ), ( "jm_getType_0", jm_getType_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "childNameList", "" ), ( "hasParam", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect MyCanvas.jinit_2 JR.this [ (JR.field "UNKNOWN" (JR.callStatic CommonStrings.jm_getInstance_0 [])), (JR.local "childNameList") ]),
                JR.exec (JR.setField "nullUtil" "" JR.this (JR.callStatic NullUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "stdUtil" "" JR.this (JR.callStatic StdUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "systemWrapper" "" JR.this (JR.callStatic ABSystemWrapper.jm_getInstance_0 [])),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "thread" "" JR.this NullThread.jstatic_NULL_THREAD),
                JR.exec (JR.setField "currentThread" "" JR.this NullThread.jstatic_NULL_THREAD),
                JR.exec (JR.setField "loopTimeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.field "WAIT" (JR.callStatic NullWaitGameRunnable.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "runnableCanvasRefreshHelper" "" JR.this (JR.callStatic Processor.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonLabels" "" JR.this (JR.callStatic CommonLabels.jm_getInstance_0 [])),
                JR.exec (JR.setField "threadObjectUtil" "" JR.this (JR.callStatic ThreadObjectUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "SET_RUNNING" "" JR.this (JR.str "setRunning")),
                JR.exec (JR.setField "IS_RUNNING" "" JR.this (JR.str "isRunning")),
                JR.exec (JR.setField "THREAD" "" JR.this (JR.str "Thread: ")),
                JR.exec (JR.setField "NOT_EQUAL" "" JR.this (JR.str " != ")),
                JR.exec (JR.setField "PAUSE_SLEEP" "" JR.this (JR.str "pause sleep")),
                JR.exec (JR.setField "START_PAUSE" "" JR.this (JR.str "start pause - game thread sleep at: ")),
                JR.exec (JR.setField "END_PAUSE" "" JR.this (JR.str "end pause - game thread sleep at: ")),
                JR.exec (JR.setField "PROCESS_LOOP_SLEEP" "" JR.this (JR.str "processLoopSleep")),
                JR.exec (JR.setField "pauseWait" "J" JR.this (JR.long 0)),
                JR.exec (JR.setField "notified" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "RunnableCanvas delay: ") ]) [ (JR.field "delay" (JR.thisField "loopTimeHelper")) ]) []), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.setField "runnableCanvasRefreshHelper" "" JR.this (JR.new RunnableCanvasRefreshHelper.jnew_1 [ JR.this ])), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "commandListener") JR.null) (JR.run [ 
                        JR.exec (JR.invoke "initCommands_1" JR.this [ (JR.local "commandListener") ]) ]) (JR.run [ 
                    JR.ifElse (JR.local "hasParam") (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "commandListener was null"), JR.this, (JR.str "initCommands") ]) ]) identity ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")), JR.this, (JR.str "initCommands") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isMainCanvas_0 : JR.Method
jm_isMainCanvas_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getCustomCommandListener_0" JR.this []) JR.null) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setThread_1 : JR.Method
jm_setThread_1 jheap jthis jargs =
    JR.method [ ( "thread", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "thread" "" JR.this (JR.local "thread")) ])
        (jregister jheap)
        jthis
        jargs


jm_setRunning_1 : JR.Method
jm_setRunning_1 jheap jthis jargs =
    JR.method [ ( "running", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "running" "Z" JR.this (JR.local "running")), 
                    JR.ifElse (JR.map JR.not_ (JR.thisField "running")) (JR.run [ 
                        JR.exec (JR.setField "thread" "" JR.this NullThread.jstatic_NULL_THREAD), 
                        (JR.run [ 
                            JR.exec (JR.invoke "notifyObject_1" (JR.thisField "threadObjectUtil") [ JR.this ]) ]) ]) identity, 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendboolean_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.thisField "IS_RUNNING") ]) [ (JR.thisField "running") ]) []), JR.this, (JR.thisField "SET_RUNNING") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isRunning_0 : JR.Method
jm_isRunning_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "thread") (JR.thisField "currentThread")) (JR.run [ 
                        JR.return (JR.thisField "running") ]) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "THREAD") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.thisField "thread") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.thisField "thread") []) ]) ]) identity, 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "NOT_EQUAL") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.thisField "currentThread") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.thisField "currentThread") ]) ]) ]) identity, 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.thisField "IS_RUNNING") ]), 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getLoopTimeHelperP_0 : JR.Method
jm_getLoopTimeHelperP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "loopTimeHelper") ])
        (jregister jheap)
        jthis
        jargs


jm_setWait_1 : JR.Method
jm_setWait_1 jheap jthis jargs =
    JR.method [ ( "wait", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.andThen (JR.thisField "loopTimeHelper") (\jtN71015 -> (JR.setField "delay" "I" (JR.lit jtN71015) (JR.local "wait")))), 
                    JR.exec (JR.setField "pauseWait" "J" JR.this (JR.map2 JR.mul (JR.cast "J" (JR.local "wait")) (JR.long 3))), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "setWait - delay: ") ]) [ (JR.field "delay" (JR.thisField "loopTimeHelper")) ]) []), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getWait_0 : JR.Method
jm_getWait_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.field "delay" (JR.thisField "loopTimeHelper")) ])
        (jregister jheap)
        jthis
        jargs


jm_setCurrentThread_0 : JR.Method
jm_setCurrentThread_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentThread" "" JR.this (JR.callStatic JThread.jm_currentThread_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_setCurrentThreadFake_0 : JR.Method
jm_setCurrentThreadFake_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentThread" "" JR.this (JR.thisField "thread")) ])
        (jregister jheap)
        jthis
        jargs


jm_showNotify_0 : JR.Method
jm_showNotify_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "stopWaiting_0" JR.this []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "showNotify"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_stopWaiting_0 : JR.Method
jm_stopWaiting_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "notified" "Z" JR.this (JR.bool True)), 
                    (JR.run [ 
                        JR.exec (JR.invoke "notifyObject_1" (JR.thisField "threadObjectUtil") [ JR.this ]) ]), 
                    JR.exec (JR.invoke "repaint_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_waitOnNotify_1 : JR.Method
jm_waitOnNotify_1 jheap jthis jargs =
    JR.method [ ( "wait", "J" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.thisField "notified")) (JR.run [ 
                        JR.ifElse (JR.map2 JR.greater (JR.local "wait") (JR.long 0)) (JR.run [ 
                            JR.exec (JR.invoke "waitObjectFor_2" (JR.thisField "threadObjectUtil") [ JR.this, (JR.local "wait") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "waitObject_1" (JR.thisField "threadObjectUtil") [ JR.this ]) ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_processSleep_0 : JR.Method
jm_processSleep_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic JThread.jm_sleep_1 [ (JR.thisField "pauseWait") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isPausable_0 : JR.Method
jm_isPausable_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_processGameSleep_1 : JR.Method
jm_processGameSleep_1 jheap jthis jargs =
    JR.method [ ( "sleep", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic JThread.jm_sleep_1 [ (JR.local "sleep") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processLoopSleep_0 : JR.Method
jm_processLoopSleep_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_0" (JR.thisField "runnableCanvasRefreshHelper") []), 
                    JR.ifElse (JR.invoke "isPaused_0" JR.this []) (JR.run [ 
                        JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                        JR.ifElse (JR.and (JR.invoke "isRunning_0" JR.this []) (JR.map JR.not_ (JR.invoke "isSingleThread_0" JR.this []))) (JR.run [ 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                            JR.declare "currentTimeMillis" "J" (JR.invoke "currentTimeMillis_0" (JR.thisField "systemWrapper") []), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "START_PAUSE") ]) [ (JR.local "currentTimeMillis") ]) [ (JR.thisField "PAUSE_SLEEP") ]) [ (JR.thisField "pauseWait") ]) []), JR.this, (JR.thisField "PROCESS_LOOP_SLEEP") ]), 
                            JR.while (JR.and (JR.and (JR.invoke "isPaused_0" JR.this []) (JR.invoke "isRunning_0" JR.this [])) (JR.map JR.not_ (JR.invoke "isSingleThread_0" JR.this []))) (JR.run [ 
                                JR.exec (JR.invoke "processSleep_0" JR.this []), 
                                JR.ifElse (JR.map JR.not_ (JR.invoke "isPausable_0" JR.this [])) (JR.run [ 
                                    JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.thisField "END_PAUSE") ]) [ (JR.local "currentTimeMillis") ]) []), JR.this, (JR.thisField "PROCESS_LOOP_SLEEP") ]), 
                                    JR.returnVoid ]) identity ]) ]) identity ]) identity, 
                    JR.declare "elapsedTime" "J" (JR.invoke "getElapsedTNT_0" (JR.thisField "loopTimeHelper") []), 
                    JR.declare "wait" "J" (JR.cast "J" (JR.field "delay" (JR.thisField "loopTimeHelper"))), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "elapsedTime") (JR.local "wait")) (JR.run [ 
                        JR.exec (JR.setLocal "elapsedTime" "J" (JR.local "wait")) ]) (JR.run [ 
                        JR.exec (JR.invoke "processGameSleep_1" JR.this [ (JR.map2 JR.sub (JR.local "wait") (JR.local "elapsedTime")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isSingleThread_0 : JR.Method
jm_isSingleThread_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setCurrentThread_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_end2_0 : JR.Method
jm_end2_0 jheap jthis jargs =
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

