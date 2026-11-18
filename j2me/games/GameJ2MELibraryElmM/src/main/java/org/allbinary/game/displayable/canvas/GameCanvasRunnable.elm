module Org.Allbinary.Game.Displayable.Canvas.GameCanvasRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Displayable.Canvas.GameRunnable as GameRunnable
import Org.Allbinary.Graphics.Displayable.GameTickDisplayInfoSingleton as GameTickDisplayInfoSingleton
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "GameCanvasRunnable"


jchain : List String
jchain =
    [ "GameCanvasRunnable" ]
        ++ GameRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameRunnable.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "gameTickDisplayInfoSingleton", JR.defaultOf "" ), ( "allBinaryGameCanvas", JR.defaultOf "" ), ( "gameTickTimeDelayHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 )
        , ( "processLoopSleep_0", jm_processLoopSleep_0 ) ]
        GameRunnable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameCanvasRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jm_processLoopSleep_0", jm_processLoopSleep_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameRunnable.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameTickDisplayInfoSingleton" "" JR.this (JR.callStatic GameTickDisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameTickTimeDelayHelper" "" JR.this (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "allBinaryGameCanvas" "" JR.this (JR.local "allBinaryGameCanvas")) ]) ])
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
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "setStartTime_1" (JR.invoke "getLoopTimeHelperP_0" (JR.thisField "allBinaryGameCanvas") []) [ (JR.invoke "setStartTime_0" (JR.thisField "gameTickTimeDelayHelper") []) ]), 
                        JR.exec (JR.invoke "update_0" (JR.thisField "gameTickDisplayInfoSingleton") []), 
                        JR.exec (JR.invoke "processGame_0" (JR.thisField "allBinaryGameCanvas") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "RUN" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_processLoopSleep_0 : JR.Method
jm_processLoopSleep_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "processLoopSleep_0" (JR.thisField "allBinaryGameCanvas") []) ])
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

