module Org.Allbinary.Time.GameTickTimeDelayHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.time
-}

import JR
import JLong
import JSystem


jclass : String
jclass =
    "GameTickTimeDelayHelper"


jchain : List String
jchain =
    [ "GameTickTimeDelayHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "timeDelta", JR.defaultOf "J" ), ( "startTime", JR.defaultOf "J" ), ( "lastStartTime", JR.defaultOf "J" ) ]


jvtable =
    JR.vtable
        [ ( "setStartTime_0", jm_setStartTime_0 )
        , ( "loop_0", jm_loop_0 )
        , ( "getTimeFromStart_0", jm_getTimeFromStart_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameTickTimeDelayHelper"
        [ ( "jm_setStartTime_0", jm_setStartTime_0 ), ( "jm_loop_0", jm_loop_0 ), ( "jm_getTimeFromStart_0", jm_getTimeFromStart_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "startTime", "J" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "startTime" "J" JR.this (JR.local "startTime")), 
                    JR.exec (JR.setField "lastStartTime" "J" JR.this (JR.int 0)) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setStartTime_0 : JR.Method
jm_setStartTime_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.exec (JR.setField "startTime" "J" JR.this (JR.callStatic JSystem.jm_currentTimeMillis_0 [])), 
                    JR.return (JR.thisField "startTime") ])
        (jregister jheap)
        jthis
        jargs


jm_loop_0 : JR.Method
jm_loop_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "lastStartTime") JLong.jstatic_MIN_VALUE) (JR.run [ 
                        JR.exec (JR.setField "timeDelta" "J" JR.this (JR.int 0)) ]) (JR.run [ 
                        JR.exec (JR.setField "timeDelta" "J" JR.this (JR.map2 JR.sub (JR.callStatic JSystem.jm_currentTimeMillis_0 []) (JR.thisField "lastStartTime"))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getTimeFromStart_0 : JR.Method
jm_getTimeFromStart_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.map2 JR.sub (JR.thisField "startTime") (JR.thisField "lastStartTime")) ])
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

