module NoTimeDelayHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.time
-}

import JR
import TimeDelayHelper


jclass : String
jclass =
    "NoTimeDelayHelper"


jchain : List String
jchain =
    [ "NoTimeDelayHelper" ]
        ++ TimeDelayHelper.jchain


jfields : List ( String, JR.JValue )
jfields =
    TimeDelayHelper.jfields ++ []


jvtable =
    JR.vtable
        [ ( "isTimeTNT_0", jm_isTimeTNT_0 )
        , ( "isTimeSinceTNT_1", jm_isTimeSinceTNT_1 )
        , ( "isTime_1", jm_isTime_1 )
        , ( "isTimeSince_2", jm_isTimeSince_2 ) ]
        TimeDelayHelper.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoTimeDelayHelper"
        [ ( "jm_isTimeTNT_0", jm_isTimeTNT_0 ), ( "jm_isTimeSinceTNT_1", jm_isTimeSinceTNT_1 ), ( "jm_isTime_1", jm_isTime_1 ), ( "jm_isTimeSince_2", jm_isTimeSince_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "NoTimeDelayHelper" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect TimeDelayHelper.jinit_1 JR.this [ (JR.int 0) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_isTimeTNT_0 : JR.Method
jm_isTimeTNT_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isTimeSinceTNT_1 : JR.Method
jm_isTimeSinceTNT_1 jheap jthis jargs =
    JR.method [ ( "delay", "I" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isTime_1 : JR.Method
jm_isTime_1 jheap jthis jargs =
    JR.method [ ( "currentTime", "J" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_isTimeSince_2 : JR.Method
jm_isTimeSince_2 jheap jthis jargs =
    JR.method [ ( "delay", "I" ), ( "currentTime", "J" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
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

