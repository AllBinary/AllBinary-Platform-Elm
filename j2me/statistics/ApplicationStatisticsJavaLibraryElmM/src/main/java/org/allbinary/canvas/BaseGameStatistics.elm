module BaseGameStatistics exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.canvas
-}

import JR
import CommonSeps
import GameTickTimeDelayHelperFactory
import JInteger
import JLong
import PrimitiveLongSingleton
import ScaleFactorFactory
import StringMaker
import StringUtil
import TimeDelayHelper


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
                    JR.exec (JR.postUpdate (JR.thisField "totalFrames") (\jwN66957 -> (JR.setField "totalFrames" "J" JR.this (JR.lit jwN66957))) JR.increment) ])
        (jregister jheap)
        jthis
        jargs


jm_nextRefresh_0 : JR.Method
jm_nextRefresh_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.postUpdate (JR.thisField "totalRefreshes") (\jwN67002 -> (JR.setField "totalRefreshes" "J" JR.this (JR.lit jwN67002))) JR.increment) ])
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
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68573 -> JR.andThen (JR.int 0) (\jiN68573 -> (JR.aset (JR.lit jaN68573) (JR.lit jiN68573) (JR.thisField "SPACE_CHAR"))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68620 -> JR.andThen (JR.int 1) (\jiN68620 -> (JR.aset (JR.lit jaN68620) (JR.lit jiN68620) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.local "framesPerSec")))))) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.local "framesPerSec") (JR.int 100)) (JR.run [ 
                            JR.declare "tens" "I" (JR.map2 JR.div (JR.local "framesPerSec") (JR.int 10)), 
                            JR.declare "removeTens" "I" (JR.map2 JR.mul (JR.local "tens") (JR.int 10)), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68418 -> JR.andThen (JR.int 0) (\jiN68418 -> (JR.aset (JR.lit jaN68418) (JR.lit jiN68418) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.local "tens")))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68485 -> JR.andThen (JR.int 1) (\jiN68485 -> (JR.aset (JR.lit jaN68485) (JR.lit jiN68485) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.map2 JR.sub (JR.local "framesPerSec") (JR.local "removeTens"))))))) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68237 -> JR.andThen (JR.int 0) (\jiN68237 -> (JR.aset (JR.lit jaN68237) (JR.lit jiN68237) (JR.thisField "PLUS_CHAR"))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 1)) (\jaN68284 -> JR.andThen (JR.int 1) (\jiN68284 -> (JR.aset (JR.lit jaN68284) (JR.lit jiN68284) (JR.thisField "PLUS_CHAR"))))) ]) ]), 
                        JR.declare "refreshesPerSec" "I" (JR.cast "I" ((JR.map2 JR.div (JR.thisField "totalRefreshes") (JR.local "totalTime")))), 
                        JR.ifElse (JR.map2 JR.less (JR.local "refreshesPerSec") (JR.int 10)) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN69139 -> JR.andThen (JR.int 0) (\jiN69139 -> (JR.aset (JR.lit jaN69139) (JR.lit jiN69139) (JR.thisField "X_CHAR"))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN69186 -> JR.andThen (JR.int 1) (\jiN69186 -> (JR.aset (JR.lit jaN69186) (JR.lit jiN69186) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.local "refreshesPerSec")))))) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.local "refreshesPerSec") (JR.int 100)) (JR.run [ 
                            JR.declare "tens" "I" (JR.map2 JR.div (JR.local "refreshesPerSec") (JR.int 10)), 
                            JR.declare "removeTens" "I" (JR.map2 JR.mul (JR.local "tens") (JR.int 10)), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN68975 -> JR.andThen (JR.int 0) (\jiN68975 -> (JR.aset (JR.lit jaN68975) (JR.lit jiN68975) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.map2 JR.div (JR.local "refreshesPerSec") (JR.int 10))))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN69051 -> JR.andThen (JR.int 1) (\jiN69051 -> (JR.aset (JR.lit jaN69051) (JR.lit jiN69051) (JR.aget (JR.field "NUMBER_CHAR_ARRAY" (JR.thisField "primitiveLongSingleton")) (JR.map2 JR.sub (JR.local "refreshesPerSec") (JR.local "removeTens"))))))) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN68794 -> JR.andThen (JR.int 0) (\jiN68794 -> (JR.aset (JR.lit jaN68794) (JR.lit jiN68794) (JR.thisField "PLUS_CHAR"))))), 
                            JR.exec (JR.andThen (JR.aget (JR.thisField "CHAR_ARRAY") (JR.int 3)) (\jaN68841 -> JR.andThen (JR.int 1) (\jiN68841 -> (JR.aset (JR.lit jaN68841) (JR.lit jiN68841) (JR.thisField "PLUS_CHAR"))))) ]) ]) ]) identity, 
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
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69662 -> JR.andThen (JR.int 1) (\jiN69662 -> (JR.aset (JR.lit jaN69662) (JR.lit jiN69662) (JR.callStatic JLong.jm_toString_1 [ (JR.local "totalTime") ]))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69717 -> JR.andThen (JR.int 3) (\jiN69717 -> (JR.aset (JR.lit jaN69717) (JR.lit jiN69717) (JR.callStatic JLong.jm_toString_1 [ (JR.thisField "totalFrames") ]))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69775 -> JR.andThen (JR.int 5) (\jiN69775 -> (JR.aset (JR.lit jaN69775) (JR.lit jiN69775) (JR.callStatic JLong.jm_toString_1 [ (JR.map2 JR.div (JR.thisField "totalFrames") (JR.local "totalTime")) ]))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69846 -> JR.andThen (JR.int 7) (\jiN69846 -> (JR.aset (JR.lit jaN69846) (JR.lit jiN69846) (JR.callStatic JLong.jm_toString_1 [ (JR.thisField "totalRefreshes") ]))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69904 -> JR.andThen (JR.int 9) (\jiN69904 -> (JR.aset (JR.lit jaN69904) (JR.lit jiN69904) (JR.callStatic JLong.jm_toString_1 [ (JR.map2 JR.div (JR.thisField "totalRefreshes") (JR.local "totalTime")) ]))))) ]) (JR.run [ 
                        JR.declare "string" "" (JR.thisField "EMPTY_STRING"), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69475 -> JR.andThen (JR.int 1) (\jiN69475 -> (JR.aset (JR.lit jaN69475) (JR.lit jiN69475) (JR.local "string"))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69511 -> JR.andThen (JR.int 3) (\jiN69511 -> (JR.aset (JR.lit jaN69511) (JR.lit jiN69511) (JR.local "string"))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69547 -> JR.andThen (JR.int 5) (\jiN69547 -> (JR.aset (JR.lit jaN69547) (JR.lit jiN69547) (JR.local "string"))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69583 -> JR.andThen (JR.int 7) (\jiN69583 -> (JR.aset (JR.lit jaN69583) (JR.lit jiN69583) (JR.local "string"))))), 
                        JR.exec (JR.andThen (JR.thisField "STRING_ARRAY") (\jaN69619 -> JR.andThen (JR.int 9) (\jiN69619 -> (JR.aset (JR.lit jaN69619) (JR.lit jiN69619) (JR.local "string"))))) ]), 
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

