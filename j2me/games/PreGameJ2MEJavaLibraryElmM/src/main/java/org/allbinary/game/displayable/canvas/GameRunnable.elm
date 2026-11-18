module Org.Allbinary.Game.Displayable.Canvas.GameRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import JRunnable
import JThread


jclass : String
jclass =
    "GameRunnable"


jchain : List String
jchain =
    [ "GameRunnable" ]
        ++ JRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "WAIT", JR.defaultOf "I" ), ( "FAST", JR.defaultOf "I" ), ( "waitInMillis", JR.defaultOf "J" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 )
        , ( "processLoopSleep_0", jm_processLoopSleep_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jm_processLoopSleep_0", jm_processLoopSleep_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "WAIT" "I" JR.this (JR.int 240)),
                JR.exec (JR.setField "FAST" "I" JR.this (JR.int 60)),
                JR.exec (JR.setField "waitInMillis" "J" JR.this (JR.cast "J" (JR.thisField "WAIT"))),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_0" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_processLoopSleep_0 : JR.Method
jm_processLoopSleep_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic JThread.jm_sleep_1 [ (JR.thisField "waitInMillis") ]) ])
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

