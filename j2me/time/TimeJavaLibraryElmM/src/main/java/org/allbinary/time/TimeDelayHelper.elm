module TimeDelayHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.time
-}

import JR
import CommonLabels
import JLong
import JSystem
import StringMaker
import StringUtil


jclass : String
jclass =
    "TimeDelayHelper"


jchain : List String
jchain =
    [ "TimeDelayHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "startTime", JR.defaultOf "J" ), ( "elapsedTimeAtPause", JR.defaultOf "J" ), ( "delay", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "isTimeTNT_0", jm_isTimeTNT_0 )
        , ( "isTimeSinceTNT_1", jm_isTimeSinceTNT_1 )
        , ( "isTime_1", jm_isTime_1 )
        , ( "isTimeWithoutReset_1", jm_isTimeWithoutReset_1 )
        , ( "isTimeSince_2", jm_isTimeSince_2 )
        , ( "getElapsedTNT_0", jm_getElapsedTNT_0 )
        , ( "getElapsed_1", jm_getElapsed_1 )
        , ( "isElapsed_2", jm_isElapsed_2 )
        , ( "isElapsedTNT_1", jm_isElapsedTNT_1 )
        , ( "setStartTime_1", jm_setStartTime_1 )
        , ( "getStartTime_0", jm_getStartTime_0 )
        , ( "setStartTimeTNT_0", jm_setStartTimeTNT_0 )
        , ( "pause_0", jm_pause_0 )
        , ( "resume_0", jm_resume_0 )
        , ( "toStringAt_1", jm_toStringAt_1 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TimeDelayHelper"
        [ ( "jm_isTimeTNT_0", jm_isTimeTNT_0 ), ( "jm_isTimeSinceTNT_1", jm_isTimeSinceTNT_1 ), ( "jm_isTime_1", jm_isTime_1 ), ( "jm_isTimeWithoutReset_1", jm_isTimeWithoutReset_1 ), ( "jm_isTimeSince_2", jm_isTimeSince_2 ), ( "jm_getElapsedTNT_0", jm_getElapsedTNT_0 ), ( "jm_getElapsed_1", jm_getElapsed_1 ), ( "jm_isElapsed_2", jm_isElapsed_2 ), ( "jm_isElapsedTNT_1", jm_isElapsedTNT_1 ), ( "jm_setStartTime_1", jm_setStartTime_1 ), ( "jm_getStartTime_0", jm_getStartTime_0 ), ( "jm_setStartTimeTNT_0", jm_setStartTimeTNT_0 ), ( "jm_pause_0", jm_pause_0 ), ( "jm_resume_0", jm_resume_0 ), ( "jm_toStringAt_1", jm_toStringAt_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "delay", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "startTime" "J" JR.this (JR.cast "J" (JR.map JR.neg (JR.int 1)))),
                JR.exec (JR.setField "elapsedTimeAtPause" "J" JR.this JLong.jstatic_MIN_VALUE),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "delay" "I" JR.this (JR.local "delay")), 
                    JR.exec (JR.invoke "setStartTimeTNT_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_isTimeTNT_0 : JR.Method
jm_isTimeTNT_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "currentTime" "J" (JR.callStatic JSystem.jm_currentTimeMillis_0 []), 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.sub (JR.local "currentTime") (JR.thisField "startTime")) (JR.cast "J" (JR.thisField "delay"))) (JR.run [ 
                        JR.exec (JR.setField "startTime" "J" JR.this (JR.local "currentTime")), 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isTimeSinceTNT_1 : JR.Method
jm_isTimeSinceTNT_1 jheap jthis jargs =
    JR.method [ ( "delay", "I" ) ] "Z"
        (JR.run [ 
                    JR.declare "currentTime" "J" (JR.callStatic JSystem.jm_currentTimeMillis_0 []), 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.sub (JR.local "currentTime") (JR.thisField "startTime")) (JR.cast "J" (JR.local "delay"))) (JR.run [ 
                        JR.exec (JR.setField "startTime" "J" JR.this (JR.local "currentTime")), 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isTime_1 : JR.Method
jm_isTime_1 jheap jthis jargs =
    JR.method [ ( "currentTime", "J" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.sub (JR.local "currentTime") (JR.thisField "startTime")) (JR.cast "J" (JR.thisField "delay"))) (JR.run [ 
                        JR.exec (JR.setField "startTime" "J" JR.this (JR.local "currentTime")), 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isTimeWithoutReset_1 : JR.Method
jm_isTimeWithoutReset_1 jheap jthis jargs =
    JR.method [ ( "currentTime", "J" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.sub (JR.local "currentTime") (JR.thisField "startTime")) (JR.cast "J" (JR.thisField "delay"))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isTimeSince_2 : JR.Method
jm_isTimeSince_2 jheap jthis jargs =
    JR.method [ ( "delay", "I" ), ( "currentTime", "J" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.map2 JR.sub (JR.local "currentTime") (JR.thisField "startTime")) (JR.cast "J" (JR.thisField "delay"))) (JR.run [ 
                        JR.exec (JR.setField "startTime" "J" JR.this (JR.local "currentTime")), 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getElapsedTNT_0 : JR.Method
jm_getElapsedTNT_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.map2 JR.sub (JR.callStatic JSystem.jm_currentTimeMillis_0 []) (JR.thisField "startTime")) ])
        (jregister jheap)
        jthis
        jargs


jm_getElapsed_1 : JR.Method
jm_getElapsed_1 jheap jthis jargs =
    JR.method [ ( "currentTime", "J" ) ] "J"
        (JR.run [ 
                    JR.return (JR.map2 JR.sub (JR.local "currentTime") (JR.thisField "startTime")) ])
        (jregister jheap)
        jthis
        jargs


jm_isElapsed_2 : JR.Method
jm_isElapsed_2 jheap jthis jargs =
    JR.method [ ( "currentTime", "J" ), ( "time", "J" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getElapsed_1" JR.this [ (JR.local "currentTime") ]) (JR.local "time")) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isElapsedTNT_1 : JR.Method
jm_isElapsedTNT_1 jheap jthis jargs =
    JR.method [ ( "time", "J" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "getElapsedTNT_0" JR.this []) (JR.local "time")) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setStartTime_1 : JR.Method
jm_setStartTime_1 jheap jthis jargs =
    JR.method [ ( "startTime", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "startTime" "J" JR.this (JR.local "startTime")) ])
        (jregister jheap)
        jthis
        jargs


jm_getStartTime_0 : JR.Method
jm_getStartTime_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.thisField "startTime") ])
        (jregister jheap)
        jthis
        jargs


jm_setStartTimeTNT_0 : JR.Method
jm_setStartTimeTNT_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "startTime" "J" JR.this (JR.callStatic JSystem.jm_currentTimeMillis_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_pause_0 : JR.Method
jm_pause_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "elapsedTimeAtPause" "J" JR.this (JR.invoke "getElapsedTNT_0" JR.this [])), 
                    JR.exec (JR.setField "startTime" "J" JR.this JLong.jstatic_MAX_VALUE) ])
        (jregister jheap)
        jthis
        jargs


jm_resume_0 : JR.Method
jm_resume_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "elapsedTimeAtPause") JLong.jstatic_MIN_VALUE) (JR.run [ 
                        JR.exec (JR.setField "startTime" "J" JR.this (JR.map2 JR.add (JR.callStatic JSystem.jm_currentTimeMillis_0 []) (JR.thisField "elapsedTimeAtPause"))), 
                        JR.exec (JR.setField "elapsedTimeAtPause" "J" JR.this JLong.jstatic_MIN_VALUE), 
                        JR.exec (JR.invoke "setStartTimeTNT_0" JR.this []), 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringAt_1 : JR.Method
jm_toStringAt_1 jheap jthis jargs =
    JR.method [ ( "currentTime", "J" ) ] ""
        (JR.run [ 
                    JR.declare "elapsed" "J" (JR.invoke "getElapsed_1" JR.this [ (JR.local "currentTime") ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "elapsed") (JR.long 0)) (JR.run [ 
                        JR.declare "commonLabels" "" (JR.callStatic CommonLabels.jm_getInstance_0 []), 
                        JR.declare "elapsedAsString" "" (JR.callStatic JLong.jm_toString_1 [ (JR.local "elapsed") ]), 
                        JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.local "commonLabels")) ]) [ (JR.thisField "startTime") ]) [ (JR.field "CURRENT" (JR.local "commonLabels")) ]) [ (JR.local "currentTime") ]) [ (JR.field "ELAPSED" (JR.local "commonLabels")) ]) [ (JR.local "elapsedAsString") ]) []) ]) (JR.run [ 
                        JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "currentTime" "J" (JR.callStatic JSystem.jm_currentTimeMillis_0 []), 
                    JR.declare "elapsed" "J" (JR.invoke "getElapsed_1" JR.this [ (JR.local "currentTime") ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "elapsed") (JR.long 0)) (JR.run [ 
                        JR.declare "commonLabels" "" (JR.callStatic CommonLabels.jm_getInstance_0 []), 
                        JR.declare "elapsedAsString" "" (JR.callStatic JLong.jm_toString_1 [ (JR.local "elapsed") ]), 
                        JR.return (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.local "commonLabels")) ]) [ (JR.thisField "startTime") ]) [ (JR.field "CURRENT" (JR.local "commonLabels")) ]) [ (JR.local "currentTime") ]) [ (JR.field "ELAPSED" (JR.local "commonLabels")) ]) [ (JR.local "elapsedAsString") ]) []) ]) (JR.run [ 
                        JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ])
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

