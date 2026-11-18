module Org.Allbinary.Time.TimeUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.time
-}

import JR
import JCalendar


jclass : String
jclass =
    "TimeUtil"


jchain : List String
jchain =
    [ "TimeUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setCalendar_5", jm_setCalendar_5 )
        , ( "setCalendarWithTime_7", jm_setCalendarWithTime_7 )
        , ( "setExpirationCalendar_7", jm_setExpirationCalendar_7 )
        , ( "getTotalTime_6", jm_getTotalTime_6 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TimeUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setCalendar_5", jm_setCalendar_5 ), ( "jm_setCalendarWithTime_7", jm_setCalendarWithTime_7 ), ( "jm_setExpirationCalendar_7", jm_setExpirationCalendar_7 ), ( "jm_getTotalTime_6", jm_getTotalTime_6 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ), ( "jstatic_calendar", jstatic_calendar ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TimeUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jstatic_calendar : JR.M
jstatic_calendar s =
    JR.static "TimeUtil" jclinit "calendar"
        (JR.callStatic JCalendar.jm_getInstance_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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


jm_setCalendar_5 : JR.Method
jm_setCalendar_5 jheap jthis jargs =
    JR.method [ ( "calendar", "" ), ( "yearString", "" ), ( "monthString", "" ), ( "dayString", "" ), ( "hourString", "" ) ] ""
        (JR.run [ 
                    JR.declare "year" "I" (JR.invoke "intValue_0" (JR.cast "I" (JR.local "yearString")) []), 
                    JR.declare "month" "I" (JR.invoke "intValue_0" (JR.cast "I" (JR.local "monthString")) []), 
                    JR.declare "day" "I" (JR.invoke "intValue_0" (JR.cast "I" (JR.local "dayString")) []), 
                    JR.declare "hour" "I" (JR.invoke "intValue_0" (JR.cast "I" (JR.local "hourString")) []), 
                    JR.exec (JR.invoke "set_5" (JR.local "calendar") [ (JR.local "year"), (JR.local "month"), (JR.local "day"), (JR.local "hour"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setCalendarWithTime_7 : JR.Method
jm_setCalendarWithTime_7 jheap jthis jargs =
    JR.method [ ( "calendar", "" ), ( "yearString", "" ), ( "monthString", "" ), ( "dayString", "" ), ( "hourString", "" ), ( "minuteString", "" ), ( "secondString", "" ) ] ""
        (JR.run [ 
                    JR.declare "year" "I" (JR.invoke "intValue_0" (JR.cast "I" (JR.local "yearString")) []), 
                    JR.declare "month" "I" (JR.invoke "intValue_0" (JR.cast "I" (JR.local "monthString")) []), 
                    JR.declare "day" "I" (JR.invoke "intValue_0" (JR.cast "I" (JR.local "dayString")) []), 
                    JR.declare "hour" "I" (JR.invoke "intValue_0" (JR.cast "I" (JR.local "hourString")) []), 
                    JR.declare "minute" "I" (JR.invoke "intValue_0" (JR.cast "I" (JR.local "minuteString")) []), 
                    JR.declare "second" "I" (JR.invoke "intValue_0" (JR.cast "I" (JR.local "secondString")) []), 
                    JR.exec (JR.invoke "set_6" (JR.local "calendar") [ (JR.local "year"), (JR.local "month"), (JR.local "day"), (JR.local "hour"), (JR.local "minute"), (JR.local "second") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setExpirationCalendar_7 : JR.Method
jm_setExpirationCalendar_7 jheap jthis jargs =
    JR.method [ ( "calendar", "" ), ( "yearsString", "" ), ( "monthsString", "" ), ( "daysString", "" ), ( "hoursString", "" ), ( "minutesString", "" ), ( "secondsString", "" ) ] ""
        (JR.run [ 
                    JR.declare "year" "I" (JR.plus (JR.invoke "get_1" (JR.local "calendar") [ JCalendar.jstatic_YEAR ]) (JR.invoke "intValue_0" (JR.cast "I" (JR.local "yearsString")) [])), 
                    JR.declare "month" "I" (JR.plus (JR.invoke "get_1" (JR.local "calendar") [ JCalendar.jstatic_MONTH ]) (JR.invoke "intValue_0" (JR.cast "I" (JR.local "monthsString")) [])), 
                    JR.declare "day" "I" (JR.plus (JR.invoke "get_1" (JR.local "calendar") [ JCalendar.jstatic_DAY_OF_MONTH ]) (JR.invoke "intValue_0" (JR.cast "I" (JR.local "daysString")) [])), 
                    JR.declare "hour" "I" (JR.plus (JR.invoke "get_1" (JR.local "calendar") [ JCalendar.jstatic_HOUR ]) (JR.invoke "intValue_0" (JR.cast "I" (JR.local "hoursString")) [])), 
                    JR.declare "minute" "I" (JR.plus (JR.invoke "get_1" (JR.local "calendar") [ JCalendar.jstatic_MINUTE ]) (JR.invoke "intValue_0" (JR.cast "I" (JR.local "minutesString")) [])), 
                    JR.declare "second" "I" (JR.plus (JR.invoke "get_1" (JR.local "calendar") [ JCalendar.jstatic_SECOND ]) (JR.invoke "intValue_0" (JR.cast "I" (JR.local "secondsString")) [])), 
                    JR.exec (JR.invoke "set_6" (JR.local "calendar") [ (JR.local "year"), (JR.local "month"), (JR.local "day"), (JR.local "hour"), (JR.local "minute"), (JR.local "second") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getTotalTime_6 : JR.Method
jm_getTotalTime_6 jheap jthis jargs =
    JR.method [ ( "yearString", "" ), ( "monthString", "" ), ( "dayString", "" ), ( "hourString", "" ), ( "minuteString", "" ), ( "secondString", "" ) ] "J"
        (JR.run [ 
                    JR.declare "time" "J" (JR.invoke "getTimeInMillis_0" jstatic_calendar []), 
                    JR.exec (JR.invoke "setExpirationCalendar_7" JR.this [ jstatic_calendar, (JR.local "yearString"), (JR.local "monthString"), (JR.local "dayString"), (JR.local "hourString"), (JR.local "minuteString"), (JR.local "secondString") ]), 
                    JR.declare "timeDelta" "J" (JR.invoke "getTimeInMillis_0" jstatic_calendar []), 
                    JR.return (JR.map2 JR.sub (JR.local "timeDelta") (JR.local "time")) ])
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

