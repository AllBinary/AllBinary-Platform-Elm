module Org.Allbinary.Game.Init.DefaultGameInitializationListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.init
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Game.Resource.FeatureResourceInitializationUtil as FeatureResourceInitializationUtil
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Configuration.Event.GameInitializedEventHandler as GameInitializedEventHandler
import Org.Allbinary.Game.Configuration.Event.GameInitializedListenerInterface as GameInitializedListenerInterface
import JThread
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Threed.SWTJOGLProcessor as SWTJOGLProcessor


jclass : String
jclass =
    "DefaultGameInitializationListener"


jchain : List String
jchain =
    [ "DefaultGameInitializationListener" ]
        ++ GameInitializedListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "swtJOGLProcessor", JR.defaultOf "" ), ( "firstTime", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onGameInitialized_1", jm_onGameInitialized_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DefaultGameInitializationListener"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onGameInitialized_1", jm_onGameInitialized_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "swtJOGLProcessor" "" JR.this (JR.callStatic SWTJOGLProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "firstTime" "Z" JR.this (JR.bool True)),
                identity,
                (JR.run [ 
                    JR.declare "gameInitializedEventHandler" "" (JR.callStatic GameInitializedEventHandler.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "removeAllListeners_0" (JR.local "gameInitializedEventHandler") []), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.local "gameInitializedEventHandler") [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onGameInitialized_1 : JR.Method
jm_onGameInitialized_1 jheap jthis jargs =
    JR.method [ ( "gameInitializedEvent", "" ) ] ""
        (JR.run [ 
                    JR.declare "ON_GAME_INITIALIZED" "" (JR.str "onGameInitialized"), 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.local "commonStrings")), JR.this, (JR.local "ON_GAME_INITIALIZED") ]), 
                        JR.while (JR.map JR.not_ (JR.invoke "isHolderCreated_0" (JR.thisField "swtJOGLProcessor") [])) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "UPDATE" (JR.local "commonStrings")), JR.this, (JR.local "ON_GAME_INITIALIZED") ]), 
                            JR.exec (JR.callStatic JThread.jm_sleep_1 [ (JR.int 20) ]) ]), 
                        JR.exec (JR.invoke "init_1" (JR.callStatic FeatureResourceInitializationUtil.jm_getInstance_0 []) [ (JR.invoke "getLevel_0" (JR.local "gameInitializedEvent") []) ]), 
                        JR.ifElse (JR.thisField "firstTime") (JR.run [ 
                            JR.exec (JR.setField "firstTime" "Z" JR.this (JR.bool False)) ]) (JR.run [ 
                            JR.exec (JR.invoke "onSurfaceChanged_0" (JR.thisField "swtJOGLProcessor") []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.local "ON_GAME_INITIALIZED"), (JR.local "e") ]) ]) ) ] identity ])
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

