module Org.Allbinary.Canvas.BaseGameStatistics exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.canvas
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import JInteger
import JLong
import Org.Allbinary.Logic.Math.PrimitiveLongSingleton as PrimitiveLongSingleton
import Org.Allbinary.Logic.Math.ScaleFactorFactory as ScaleFactorFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "BaseGameStatistics"


jchain : List String
jchain =
    [ "BaseGameStatistics" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "timeDelayHelper", JR.defaultOf "" ), ( "updateDelayHelper", JR.defaultOf "" ), ( "totalRefreshes", JR.defaultOf "J" ), ( "totalFrames", JR.defaultOf "J" ), ( "gameTickTimeDelayHelper", JR.defaultOf "" ), ( "DEFAULT_SCALE_FACTOR", JR.defaultOf "I" ), ( "NOT", JR.defaultOf "" ), ( "EMPTY_STRING", JR.defaultOf "" ), ( "STRING_ARRAY", JR.defaultOf "" ), ( "SPACE_CHAR", JR.defaultOf "C" ), ( "PLUS_CHAR", JR.defaultOf "C" ), ( "X_CHAR", JR.defaultOf "C" ), ( "CHAR_ARRAY", JR.defaultOf "" ), ( "primitiveLongSingleton", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "add_1", jm_add_1 )
        , ( "process_0", jm_process_0 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "nextRefresh_0", jm_nextRefresh_0 )
        , ( "getRefreshRate_0", jm_getRefreshRate_0 )
        , ( "getTimeDelayHelper_0", jm_getTimeDelayHelper_0 )
        , ( "to2DCharArray_0", jm_to2DCharArray_0 )
        , ( "toStringArray_0", jm_toStringArray_0 )
        , ( "toStringAt_1", jm_toStringAt_1 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseGameStatistics"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_process_0", jm_process_0 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_nextRefresh_0", jm_nextRefresh_0 ), ( "jm_getRefreshRate_0", jm_getRefreshRate_0 ), ( "jm_getTimeDelayHelper_0", jm_getTimeDelayHelper_0 ), ( "jm_to2DCharArray_0", jm_to2DCharArray_0 ), ( "jm_toStringArray_0", jm_toStringArray_0 ), ( "jm_toStringAt_1", jm_toStringAt_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "timeDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ JInteger.jstatic_MAX_VALUE ])),
                JR.exec (JR.setField "updateDelayHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 2000) ])),
                JR.exec (JR.setField "gameTickTimeDelayHelper" "" JR.this (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "DEFAULT_SCALE_FACTOR" "I" JR.this (JR.field "DEFAULT_SCALE_FACTOR" (JR.callStatic ScaleFactorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "NOT" "" JR.this (JR.str "Not enough Time to Calculate")),
                JR.exec (JR.setField "EMPTY_STRING" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "STRING_ARRAY" "" JR.this (JR.arrayOf "" [ (JR.str " Total Time: "), (JR.thisField "EMPTY_STRING"), (JR.str " Total Frames: "), (JR.thisField "EMPTY_STRING"), (JR.str " Frames/10 Sec: "), (JR.thisField "EMPTY_STRING"), (JR.str " Total Paints: "), (JR.thisField "EMPTY_STRING"), (JR.str " Paints/10 Sec: "), (JR.thisField "EMPTY_STRING") ])),
                JR.exec (JR.setField "SPACE_CHAR" "C" JR.this (JR.char 32)),
                JR.exec (JR.setField "PLUS_CHAR" "C" JR.this (JR.char 43)),
                JR.exec (JR.setField "X_CHAR" "C" JR.this (JR.char 88)),
                JR.exec (JR.setField "CHAR_ARRAY" "" JR.this (JR.arrayOf "" [ (JR.arrayOf "C" [ (JR.char 70), (JR.char 114), (JR.char 97), (JR.char 109), (JR.char 101), (JR.char 115), (JR.char 47), (JR.char 49), (JR.char 48), (JR.char 32), (JR.char 83), (JR.char 101), (JR.char 99), (JR.char 58) ]), (JR.arrayOf "C" [ (JR.char 88), (JR.char 88) ]), (JR.arrayOf "C" [ (JR.char 80), (JR.char 97), (JR.char 105), (JR.char 110), (JR.char 116), (JR.char 115), (JR.char 47), (JR.char 49), (JR.char 48), (JR.char 32), (JR.char 83), (JR.char 101), (JR.char 99), (JR.char 58) ]), (JR.arrayOf "C" [ (JR.char 88), (JR.char 88) ]) ])),
                JR.exec (JR.setField "primitiveLongSingleton" "" JR.this (JR.callStatic PrimitiveLongSingleton.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setStartTimeTNT_0" (JR.thisField "timeDelayHelper") []), 
                    JR.exec (JR.setField "totalRefreshes" "J" JR.this (JR.int 0)), 
                    JR.exec (JR.setField "totalFrames" "J" JR.this (JR.int 0)) ])
        (jregister jheap)
        jthis
        jargs


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.postUpdate (JR.thisField "totalFrames") (\jwN66966 -> (JR.setField "totalFrames" "J" JR.this (JR.lit jwN66966))) JR.increment) ])
        (jregister jheap)
        jthis
        jargs


jm_nextRefresh_0 : JR.Method
jm_nextRefresh_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.postUpdate (JR.thisField "totalRefreshes") (\jwN67011 -> (JR.setField "totalRefreshes" "J" JR.this (JR.lit jwN67011))) JR.increment) ])
        (jregister jheap)
        jthis
        jargs


jm_getRefreshRate_0 : JR.Method
jm_getRefreshRate_0 jheap jthis jargs =
    JR.method [] "S"
        (JR.run [ 
                    JR.declare "elapsed" "J" (JR.invoke "getElapsed_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "elapsed") (JR.long 1)) (JR.run [ 
                        JR.declare "time" "S" (JR.cast "S" ((JR.map2 JR.div (JR.thisField "totalRefreshes") ((JR.map2 JR.shr (JR.local "elapsed") (JR.thisField "DEFAULT_SCALE_FACTOR")))))), 
                        JR.return (JR.local "time") ]) (JR.run [ 
                        JR.return (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getTimeDelayHelper_0 : JR.Method
jm_getTimeDelayHelper_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "timeDelayHelper") ])
        (jregister jheap)
        jthis
        jargs


jm_to2DCharArray_0 : JR.Method
jm_to2DCharArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "totalTime" "J" (JR.invoke "getElapsed_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]), 
                    JR.exec (JR.setLocal "totalTime" "J" ((JR.map2 JR.shr (JR.local "totalTime") (JR.thisField "DEFAULT_SCALE_FACTOR")))), 
                    JR.ifElse (JR.and (JR.map2 JR.greater (JR.local "totalTime") (JR.long 0)) (JR.invoke "isTime_1" (JR.thisField "updateDelayHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ])) (JR.run [ 
                        JR.declare "framesPerSec" "I" (JR.cast "I" ((JR.map2 JR.div (JR.thisField "totalFrames") (JR.local "totalTime")))), 
                        JR.ifElse (JR.map2 JR.less (JR.local "framesPerSec") (JR.int 10)) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68582 -> JR.andThen (JR.int 0) (\jiN68582 -> (JR.aset (JR.lit jaN68582) (JR.lit jiN68582) (JR.thisField "SPACE_CHAR"))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68629 -> JR.andThen (JR.int 1) (\jiN68629 -> (JR.aset (JR.lit jaN68629) (JR.lit jiN68629) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.local "framesPerSec")))))) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.local "framesPerSec") (JR.int 100)) (JR.run [ 
                            JR.declare "tens" "I" (JR.map2 JR.div (JR.local "framesPerSec") (JR.int 10)), 
                            JR.declare "removeTens" "I" (JR.map2 JR.mul (JR.local "tens") (JR.int 10)), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68427 -> JR.andThen (JR.int 0) (\jiN68427 -> (JR.aset (JR.lit jaN68427) (JR.lit jiN68427) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.local "tens")))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68494 -> JR.andThen (JR.int 1) (\jiN68494 -> (JR.aset (JR.lit jaN68494) (JR.lit jiN68494) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.map2 JR.sub (JR.local "framesPerSec") (JR.local "removeTens"))))))) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68246 -> JR.andThen (JR.int 0) (\jiN68246 -> (JR.aset (JR.lit jaN68246) (JR.lit jiN68246) (JR.thisField "PLUS_CHAR"))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68293 -> JR.andThen (JR.int 1) (\jiN68293 -> (JR.aset (JR.lit jaN68293) (JR.lit jiN68293) (JR.thisField "PLUS_CHAR"))))) ]) ]), 
                        JR.declare "refreshesPerSec" "I" (JR.cast "I" ((JR.map2 JR.div (JR.thisField "totalRefreshes") (JR.local "totalTime")))), 
                        JR.ifElse (JR.map2 JR.less (JR.local "refreshesPerSec") (JR.int 10)) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN69148 -> JR.andThen (JR.int 0) (\jiN69148 -> (JR.aset (JR.lit jaN69148) (JR.lit jiN69148) (JR.thisField "X_CHAR"))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN69195 -> JR.andThen (JR.int 1) (\jiN69195 -> (JR.aset (JR.lit jaN69195) (JR.lit jiN69195) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.local "refreshesPerSec")))))) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.local "refreshesPerSec") (JR.int 100)) (JR.run [ 
                            JR.declare "tens" "I" (JR.map2 JR.div (JR.local "refreshesPerSec") (JR.int 10)), 
                            JR.declare "removeTens" "I" (JR.map2 JR.mul (JR.local "tens") (JR.int 10)), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN68984 -> JR.andThen (JR.int 0) (\jiN68984 -> (JR.aset (JR.lit jaN68984) (JR.lit jiN68984) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.map2 JR.div (JR.local "refreshesPerSec") (JR.int 10))))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN69060 -> JR.andThen (JR.int 1) (\jiN69060 -> (JR.aset (JR.lit jaN69060) (JR.lit jiN69060) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.map2 JR.sub (JR.local "refreshesPerSec") (JR.local "removeTens"))))))) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN68803 -> JR.andThen (JR.int 0) (\jiN68803 -> (JR.aset (JR.lit jaN68803) (JR.lit jiN68803) (JR.thisField "PLUS_CHAR"))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN68850 -> JR.andThen (JR.int 1) (\jiN68850 -> (JR.aset (JR.lit jaN68850) (JR.lit jiN68850) (JR.thisField "PLUS_CHAR"))))) ]) ]) ]) identity, 
                    JR.return (JR.thisField "CHAR_ARRAY") ])
        (jregister jheap)
        jthis
        jargs


jm_toStringArray_0 : JR.Method
jm_toStringArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "totalTime" "J" (JR.invoke "getElapsed_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]), 
                    JR.exec (JR.setLocal "totalTime" "J" ((JR.map2 JR.div (JR.local "totalTime") (JR.long 10000)))), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "totalTime") (JR.long 0)) (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69671 -> JR.andThen (JR.int 1) (\jiN69671 -> (JR.aset (JR.lit jaN69671) (JR.lit jiN69671) (JR.callStatic JLong.jm_toString_1 [ (JR.local "totalTime") ]))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69726 -> JR.andThen (JR.int 3) (\jiN69726 -> (JR.aset (JR.lit jaN69726) (JR.lit jiN69726) (JR.callStatic JLong.jm_toString_1 [ (JR.thisField "totalFrames") ]))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69784 -> JR.andThen (JR.int 5) (\jiN69784 -> (JR.aset (JR.lit jaN69784) (JR.lit jiN69784) (JR.callStatic JLong.jm_toString_1 [ (JR.map2 JR.div (JR.thisField "totalFrames") (JR.local "totalTime")) ]))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69855 -> JR.andThen (JR.int 7) (\jiN69855 -> (JR.aset (JR.lit jaN69855) (JR.lit jiN69855) (JR.callStatic JLong.jm_toString_1 [ (JR.thisField "totalRefreshes") ]))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69913 -> JR.andThen (JR.int 9) (\jiN69913 -> (JR.aset (JR.lit jaN69913) (JR.lit jiN69913) (JR.callStatic JLong.jm_toString_1 [ (JR.map2 JR.div (JR.thisField "totalRefreshes") (JR.local "totalTime")) ]))))) ]) (JR.run [ 
                        JR.declare "string" "" (JR.thisField "EMPTY_STRING"), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69484 -> JR.andThen (JR.int 1) (\jiN69484 -> (JR.aset (JR.lit jaN69484) (JR.lit jiN69484) (JR.local "string"))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69520 -> JR.andThen (JR.int 3) (\jiN69520 -> (JR.aset (JR.lit jaN69520) (JR.lit jiN69520) (JR.local "string"))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69556 -> JR.andThen (JR.int 5) (\jiN69556 -> (JR.aset (JR.lit jaN69556) (JR.lit jiN69556) (JR.local "string"))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69592 -> JR.andThen (JR.int 7) (\jiN69592 -> (JR.aset (JR.lit jaN69592) (JR.lit jiN69592) (JR.local "string"))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69628 -> JR.andThen (JR.int 9) (\jiN69628 -> (JR.aset (JR.lit jaN69628) (JR.lit jiN69628) (JR.local "string"))))) ]), 
                    JR.return (JR.thisField "STRING_ARRAY") ])
        (jregister jheap)
        jthis
        jargs


jm_toStringAt_1 : JR.Method
jm_toStringAt_1 jheap jthis jargs =
    JR.method [ ( "totalTime", "J" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "STRING_ARRAY") (JR.int 0)) ]), 
                    JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.local "totalTime") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "STRING_ARRAY") (JR.int 2)) ]), 
                    JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.thisField "totalFrames") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "STRING_ARRAY") (JR.int 4)) ]), 
                    JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.map2 JR.div (JR.thisField "totalFrames") (JR.local "totalTime")) ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.thisField "totalRefreshes") (JR.long 0)) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "STRING_ARRAY") (JR.int 6)) ]), 
                        JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.thisField "totalRefreshes") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.aget (JR.thisField "STRING_ARRAY") (JR.int 8)) ]), 
                        JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.map2 JR.div (JR.thisField "totalRefreshes") (JR.local "totalTime")) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "NEW_LINE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) ]) identity, 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "totalTime" "J" (JR.invoke "getElapsed_1" (JR.thisField "timeDelayHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]), 
                    JR.exec (JR.setLocal "totalTime" "J" ((JR.map2 JR.div (JR.local "totalTime") (JR.long 1000)))), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "totalTime") (JR.long 0)) (JR.run [ 
                        JR.return (JR.invoke "toStringAt_1" JR.this [ (JR.local "totalTime") ]) ]) (JR.run [ 
                        JR.return (JR.thisField "NOT") ]) ])
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

