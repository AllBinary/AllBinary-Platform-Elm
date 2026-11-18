module Org.Allbinary.Debug.NoDebug exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.debug
-}

import JR
import Org.Allbinary.Debug.DebugInterface as DebugInterface


jclass : String
jclass =
    "NoDebug"


jchain : List String
jchain =
    [ "NoDebug" ]
        ++ DebugInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "start_0", jm_start_0 )
        , ( "stop_0", jm_stop_0 )
        , ( "getMaxTime_0", jm_getMaxTime_0 )
        , ( "getStartTime_0", jm_getStartTime_0 )
        , ( "isRunning_0", jm_isRunning_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoDebug"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_start_0", jm_start_0 ), ( "jm_stop_0", jm_stop_0 ), ( "jm_getMaxTime_0", jm_getMaxTime_0 ), ( "jm_getStartTime_0", jm_getStartTime_0 ), ( "jm_isRunning_0", jm_isRunning_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "NoDebug" jclinit "SINGLETON"
        (JR.new jnew_0 [])
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_start_0 : JR.Method
jm_start_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_stop_0 : JR.Method
jm_stop_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getMaxTime_0 : JR.Method
jm_getMaxTime_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.long 10000) ])
        (jregister jheap)
        jthis
        jargs


jm_getStartTime_0 : JR.Method
jm_getStartTime_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
        (jregister jheap)
        jthis
        jargs


jm_isRunning_0 : JR.Method
jm_isRunning_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
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

