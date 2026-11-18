module Org.Allbinary.Game.Input.Motion.Action.GameKeyFromMotionGestureEventListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.motion.action
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.CompleteMotionGestureInputEventListener as CompleteMotionGestureInputEventListener
import Org.Allbinary.Game.Input.Event.DownGameKeyEventHandler as DownGameKeyEventHandler
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Input.Event.GameKeyEvent as GameKeyEvent
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Input.Event.UpGameKeyEventHandler as UpGameKeyEventHandler


jclass : String
jclass =
    "GameKeyFromMotionGestureEventListener"


jchain : List String
jchain =
    [ "GameKeyFromMotionGestureEventListener" ]
        ++ CompleteMotionGestureInputEventListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    CompleteMotionGestureInputEventListener.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "previousGameKeyEvent", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onCompleteMotionGestureInputEvent_1", jm_onCompleteMotionGestureInputEvent_1 ) ]
        CompleteMotionGestureInputEventListener.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyFromMotionGestureEventListener"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onCompleteMotionGestureInputEvent_1", jm_onCompleteMotionGestureInputEvent_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect CompleteMotionGestureInputEventListener.jinit_0 JR.this []),
            JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "previousGameKeyEvent" "" JR.this GameKeyEvent.jstatic_NONE),
                identity ])
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


jm_onCompleteMotionGestureInputEvent_1 : JR.Method
jm_onCompleteMotionGestureInputEvent_1 jheap jthis jargs =
    JR.method [ ( "completeMotionGestureInputEvent", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "gameKeyCompleteMotionGestureInputEvent" "" (JR.local "completeMotionGestureInputEvent"), 
                        JR.declare "gameKeyEvent" "" (JR.invoke "getGameKeyEvent_0" (JR.local "gameKeyCompleteMotionGestureInputEvent") []), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "gameKeyEvent") (JR.thisField "previousGameKeyEvent")) (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.thisField "previousGameKeyEvent") GameKeyEvent.jstatic_NONE) (JR.run [ 
                                JR.exec (JR.invoke "fireEvent_1" (JR.callStatic UpGameKeyEventHandler.jm_getInstance_0 []) [ (JR.thisField "previousGameKeyEvent") ]) ]) identity, 
                            JR.exec (JR.setField "previousGameKeyEvent" "" JR.this (JR.local "gameKeyEvent")), 
                            JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.local "gameKeyEvent") JR.null) (JR.map2 JR.notEquals (JR.local "gameKeyEvent") GameKeyEvent.jstatic_NONE)) (JR.run [ 
                                JR.exec (JR.invoke "fireEvent_1" (JR.callStatic DownGameKeyEventHandler.jm_getInstance_0 []) [ (JR.local "gameKeyEvent") ]) ]) identity ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "onCompleteMotionGestureInputEvent"), (JR.local "e") ]) ]) ) ] identity ])
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

