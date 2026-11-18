module Org.Allbinary.Game.Midlet.DemoGameMidlet exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.midlet
-}

import JR
import Org.Allbinary.Game.Midlet.CreateGameRunnable as CreateGameRunnable
import Org.Allbinary.Game.Midlet.DemoRunnable as DemoRunnable
import Org.Allbinary.Game.Midlet.GameMidlet as GameMidlet
import Org.Allbinary.Game.Displayable.Canvas.NullGameCanvasRunnable as NullGameCanvasRunnable
import Org.Allbinary.Thread.PrimaryThreadPool as PrimaryThreadPool
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Logic.StdUtil as StdUtil


jclass : String
jclass =
    "DemoGameMidlet"


jchain : List String
jchain =
    [ "DemoGameMidlet" ]
        ++ GameMidlet.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameMidlet.jfields ++ []


jvtable =
    JR.vtable
        [ ( "isContinue_0", jm_isContinue_0 )
        , ( "getHighestLevel_0", jm_getHighestLevel_0 )
        , ( "createDemoGameCanvasRunnableInterface_0", jm_createDemoGameCanvasRunnableInterface_0 )
        , ( "createGameCanvasRunnable_1", jm_createGameCanvasRunnable_1 )
        , ( "createGameCanvasRunnableInterface_0", jm_createGameCanvasRunnableInterface_0 )
        , ( "demoSetup_0", jm_demoSetup_0 )
        , ( "postDemoSetup_0", jm_postDemoSetup_0 )
        , ( "setDemo_0", jm_setDemo_0 )
        , ( "createGame_0", jm_createGame_0 )
        , ( "isReady_0", jm_isReady_0 ) ]
        GameMidlet.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DemoGameMidlet"
        [ ( "jm_isContinue_0", jm_isContinue_0 ), ( "jm_getHighestLevel_0", jm_getHighestLevel_0 ), ( "jm_createDemoGameCanvasRunnableInterface_0", jm_createDemoGameCanvasRunnableInterface_0 ), ( "jm_createGameCanvasRunnable_1", jm_createGameCanvasRunnable_1 ), ( "jm_createGameCanvasRunnableInterface_0", jm_createGameCanvasRunnableInterface_0 ), ( "jm_demoSetup_0", jm_demoSetup_0 ), ( "jm_postDemoSetup_0", jm_postDemoSetup_0 ), ( "jm_setDemo_0", jm_setDemo_0 ), ( "jm_createGame_0", jm_createGame_0 ), ( "jm_isReady_0", jm_isReady_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "clientInformationFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameMidlet.jinit_1 JR.this [ (JR.local "clientInformationFactory") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_isContinue_0 : JR.Method
jm_isContinue_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "hashtable" "" (JR.invoke "getStartStateHashtable_0" JR.this []), 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.local "hashtable") JR.null) (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "hashtable") []) (JR.int 0))) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getHighestLevel_0 : JR.Method
jm_getHighestLevel_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 1) ])
        (jregister jheap)
        jthis
        jargs


jm_createDemoGameCanvasRunnableInterface_0 : JR.Method
jm_createDemoGameCanvasRunnableInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")), JR.this, (JR.field "CREATE" (JR.thisField "commonStrings")) ]), 
                    JR.return NullGameCanvasRunnable.jstatic_NULL_GAME_CANVAS_RUNNABLE ])
        (jregister jheap)
        jthis
        jargs


jm_createGameCanvasRunnable_1 : JR.Method
jm_createGameCanvasRunnable_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createGameCanvasRunnableInterface_0 : JR.Method
jm_createGameCanvasRunnableInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "createGameCanvasRunnable_1" JR.this [ (JR.invoke "createGameLayerManager_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_demoSetup_0 : JR.Method
jm_demoSetup_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_postDemoSetup_0 : JR.Method
jm_postDemoSetup_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setDemo_0 : JR.Method
jm_setDemo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "setDemo") ]), 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "start_0" (JR.local "progressCanvas") []), 
                    JR.exec (JR.invoke "runTask_1" (JR.callStatic PrimaryThreadPool.jm_getInstance_0 []) [ (JR.new DemoRunnable.jnew_1 [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createGame_0 : JR.Method
jm_createGame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "CREATE_GAME" "" (JR.str "createGame"), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.local "CREATE_GAME") ]), 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "start_0" (JR.local "progressCanvas") []), 
                    JR.declare "hashtable" "" (JR.invoke "getStartStateHashtable_0" JR.this []), 
                    JR.exec (JR.invoke "setStartStateHashtable_1" JR.this [ (JR.field "NULL_TABLE" (JR.callStatic StdUtil.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "runTask_1" (JR.callStatic PrimaryThreadPool.jm_getInstance_0 []) [ (JR.new CreateGameRunnable.jnew_2 [ JR.this, (JR.local "hashtable") ]) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "END" (JR.thisField "commonStrings")), JR.this, (JR.local "CREATE_GAME") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isReady_0 : JR.Method
jm_isReady_0 jheap jthis jargs =
    JR.method [] "Z"
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

