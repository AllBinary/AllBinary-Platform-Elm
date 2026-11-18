module Org.Allbinary.Game.Displayable.Canvas.NullGameCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.AllBinaryGameCanvas as AllBinaryGameCanvas
import Org.Allbinary.Game.Layer.AllBinaryGameLayerManager as AllBinaryGameLayerManager
import Org.Allbinary.Game.Init.BasicBuildGameInitializerFactory as BasicBuildGameInitializerFactory
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Score.NoHighScoresFactory as NoHighScoresFactory
import Javax.Microedition.Lcdui.NullCommandListener as NullCommandListener
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "NullGameCanvas"


jchain : List String
jchain =
    [ "NullGameCanvas" ]
        ++ AllBinaryGameCanvas.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryGameCanvas.jfields ++ [ ( "runningNull", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "createNull_0", jm_createNull_0 )
        , ( "getInstance_0", jm_getInstance_0 )
        , ( "createCanvas_1", jm_createCanvas_1 )
        , ( "isGameOver_0", jm_isGameOver_0 )
        , ( "setRunning_1", jm_setRunning_1 )
        , ( "isRunning_0", jm_isRunning_0 )
        , ( "pause_0", jm_pause_0 )
        , ( "unPause_0", jm_unPause_0 )
        , ( "initCommands_1", jm_initCommands_1 )
        , ( "buildGameInit_1", jm_buildGameInit_1 )
        , ( "draw_1", jm_draw_1 )
        , ( "run_0", jm_run_0 )
        , ( "getType_0", jm_getType_0 ) ]
        AllBinaryGameCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullGameCanvas"
        [ ( "jm_createNull_0", jm_createNull_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createCanvas_1", jm_createCanvas_1 ), ( "jm_isGameOver_0", jm_isGameOver_0 ), ( "jm_setRunning_1", jm_setRunning_1 ), ( "jm_isRunning_0", jm_isRunning_0 ), ( "jm_pause_0", jm_pause_0 ), ( "jm_unPause_0", jm_unPause_0 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_buildGameInit_1", jm_buildGameInit_1 ), ( "jm_draw_1", jm_draw_1 ), ( "jm_run_0", jm_run_0 ), ( "jm_getType_0", jm_getType_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_instance", jstatic_instance ), ( "jstatic_NO_GAME", jstatic_NO_GAME ), ( "jstatic_TYPE", jstatic_TYPE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NullGameCanvas" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jstatic_NO_GAME : JR.M
jstatic_NO_GAME s =
    JR.static "NullGameCanvas" jclinit "NO_GAME"
        (JR.str "No Background Game")
        s


jstatic_TYPE : JR.M
jstatic_TYPE s =
    JR.static "NullGameCanvas" jclinit "TYPE"
        (JR.int 1)
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "gameLayerManager", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryGameCanvas.jinit_5 JR.this [ NullCommandListener.jstatic_NULL_COMMAND_LISTENER, (JR.local "gameLayerManager"), (JR.callStatic NoHighScoresFactory.jm_getInstance_0 []), BasicBuildGameInitializerFactory.jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, (JR.bool False) ]),
                JR.exec (JR.setField "runningNull" "Z" JR.this (JR.bool True)),
                identity,
                (JR.run [ 
                    JR.exec (JR.callVia AllBinaryGameCanvas.jvtable "setWait_1" JR.this [ (JR.int 1200) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_createNull_0 : JR.Method
jm_createNull_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.new jnew_1 [ (JR.callStatic AllBinaryGameLayerManager.jm_getNullInstance_0 []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.callStatic LogUtil.jm_getInstance_0 []) [ (JR.field "EXCEPTION" (JR.callStatic CommonStrings.jm_getInstance_0 [])), (JR.str "NullGameCanvas"), (JR.field "GET_INSTANCE" (JR.callStatic CommonStrings.jm_getInstance_0 [])), (JR.local "e") ]), 
                        JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "NullGameCanvas.instance" "" (JR.callStatic jm_createNull_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_createCanvas_1 : JR.Method
jm_createCanvas_1 jheap jthis jargs =
    JR.method [ ( "gameLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.declare "nullGameCanvas" "" (JR.new jnew_1 [ (JR.local "gameLayerManager") ]), 
                    JR.exec (JR.invoke "setInitialized_1" (JR.local "nullGameCanvas") [ (JR.bool True) ]), 
                    JR.exec (JR.invoke "setTitle_1" (JR.local "nullGameCanvas") [ jstatic_NO_GAME ]), 
                    JR.return (JR.local "nullGameCanvas") ])
        (jregister jheap)
        jthis
        jargs


jm_isGameOver_0 : JR.Method
jm_isGameOver_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_setRunning_1 : JR.Method
jm_setRunning_1 jheap jthis jargs =
    JR.method [ ( "running", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "runningNull" "Z" JR.this (JR.local "running")) ])
        (jregister jheap)
        jthis
        jargs


jm_isRunning_0 : JR.Method
jm_isRunning_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "runningNull") ])
        (jregister jheap)
        jthis
        jargs


jm_pause_0 : JR.Method
jm_pause_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPaused_1" JR.this [ (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_unPause_0 : JR.Method
jm_unPause_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPaused_1" JR.this [ (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_buildGameInit_1 : JR.Method
jm_buildGameInit_1 jheap jthis jargs =
    JR.method [ ( "isProgress", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_draw_1 : JR.Method
jm_draw_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END_RUNNABLE" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "RUN" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return jstatic_TYPE ])
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

