module Org.Allbinary.Game.Midlet.CreateGameRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.midlet
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Midlet.DemoGameMidletEvent as DemoGameMidletEvent
import Org.Allbinary.Game.Midlet.DemoGameMidletEventHandler as DemoGameMidletEventHandler
import Org.Allbinary.Game.Midlet.DemoGameMidletStateFactory as DemoGameMidletStateFactory
import JRunnable
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Displayable.Command.MyCommandsFactory as MyCommandsFactory
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory


jclass : String
jclass =
    "CreateGameRunnable"


jchain : List String
jchain =
    [ "CreateGameRunnable" ]
        ++ JRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "demoGameMidlet", JR.defaultOf "" ), ( "hashtable", JR.defaultOf "" ), ( "startGameMidletEvent", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CreateGameRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "demoGameMidlet", "" ), ( "hashtable", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "demoGameMidlet" "" JR.this (JR.local "demoGameMidlet")), 
                    JR.exec (JR.setField "hashtable" "" JR.this (JR.local "hashtable")), 
                    JR.exec (JR.setField "startGameMidletEvent" "" JR.this (JR.new DemoGameMidletEvent.jnew_2 [ JR.this, (JR.field "START_GAME" (JR.callStatic DemoGameMidletStateFactory.jm_getInstance_0 [])) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                        JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "commandAction_2" (JR.thisField "demoGameMidlet") [ (JR.field "SET_DISPLAYABLE" (JR.callStatic MyCommandsFactory.jm_getInstance_0 [])), (JR.local "progressCanvas") ]), 
                        JR.exec (JR.invoke "stopGameCanvasRunnableInterface_0" (JR.thisField "demoGameMidlet") []), 
                        JR.exec (JR.invoke "setGameCanvasRunnableInterface_1" (JR.thisField "demoGameMidlet") [ (JR.invoke "createGameCanvasRunnableInterface_0" (JR.thisField "demoGameMidlet") []) ]), 
                        JR.exec (JR.invoke "setLoadStateHashtable_1" (JR.invoke "getGameCanvasRunnableInterface_0" (JR.thisField "demoGameMidlet") []) [ (JR.thisField "hashtable") ]), 
                        JR.exec (JR.invoke "startGameCanvasRunnableInterface_0" (JR.thisField "demoGameMidlet") []), 
                        JR.exec (JR.invoke "fireEvent_1" (JR.callStatic DemoGameMidletEventHandler.jm_getInstance_0 []) [ (JR.thisField "startGameMidletEvent") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

