module Org.Allbinary.Game.Midlet.DemoRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.midlet
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Midlet.DemoGameMidletEvent as DemoGameMidletEvent
import Org.Allbinary.Game.Midlet.DemoGameMidletEventHandler as DemoGameMidletEventHandler
import Org.Allbinary.Game.Midlet.DemoGameMidletStateFactory as DemoGameMidletStateFactory
import JRunnable
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Displayable.Command.MyCommandsFactory as MyCommandsFactory
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "DemoRunnable"


jchain : List String
jchain =
    [ "DemoRunnable" ]
        ++ JRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "demoGameMidlet", JR.defaultOf "" ), ( "startDemoGameMidletEvent", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DemoRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "demoGameMidlet", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "demoGameMidlet" "" JR.this (JR.local "demoGameMidlet")), 
                    JR.exec (JR.setField "startDemoGameMidletEvent" "" JR.this (JR.new DemoGameMidletEvent.jnew_2 [ (JR.thisField "demoGameMidlet"), (JR.field "START_DEMO" (JR.callStatic DemoGameMidletStateFactory.jm_getInstance_0 [])) ])) ]) ])
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
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.str "GameCanvasRunnableInterface") ]) []), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "commandAction_2" (JR.thisField "demoGameMidlet") [ (JR.field "SET_DISPLAYABLE" (JR.callStatic MyCommandsFactory.jm_getInstance_0 [])), (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []) ]), 
                        JR.exec (JR.invoke "setGameCanvasRunnableInterface_1" (JR.thisField "demoGameMidlet") [ (JR.invoke "createDemoGameCanvasRunnableInterface_0" (JR.thisField "demoGameMidlet") []) ]), 
                        JR.exec (JR.invoke "demoSetup_0" (JR.thisField "demoGameMidlet") []), 
                        JR.exec (JR.invoke "fireEvent_1" (JR.callStatic DemoGameMidletEventHandler.jm_getInstance_0 []) [ (JR.thisField "startDemoGameMidletEvent") ]), 
                        JR.exec (JR.invoke "startGameCanvasRunnableInterface_0" (JR.thisField "demoGameMidlet") []), 
                        JR.exec (JR.invoke "postDemoSetup_0" (JR.thisField "demoGameMidlet") []), 
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

