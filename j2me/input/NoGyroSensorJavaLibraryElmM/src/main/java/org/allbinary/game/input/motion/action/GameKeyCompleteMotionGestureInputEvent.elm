module Org.Allbinary.Game.Input.Motion.Action.GameKeyCompleteMotionGestureInputEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.motion.action
-}

import JR
import Org.Allbinary.Game.Input.CompleteMotionGestureInputEvent as CompleteMotionGestureInputEvent
import Org.Allbinary.Game.Input.GameKey as GameKey
import Org.Allbinary.Game.Input.Event.GameKeyEvent as GameKeyEvent
import Org.Allbinary.Game.Input.GameKeyEventSourceInterface as GameKeyEventSourceInterface


jclass : String
jclass =
    "GameKeyCompleteMotionGestureInputEvent"


jchain : List String
jchain =
    [ "GameKeyCompleteMotionGestureInputEvent" ]
        ++ CompleteMotionGestureInputEvent.jchain
        ++ GameKeyEventSourceInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    CompleteMotionGestureInputEvent.jfields ++ [ ( "gameKey", JR.defaultOf "" ), ( "gameKeyEvent", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getSourceId_0", jm_getSourceId_0 )
        , ( "update_0", jm_update_0 )
        , ( "setGameKeyEvent_1", jm_setGameKeyEvent_1 )
        , ( "getGameKeyEvent_0", jm_getGameKeyEvent_0 )
        , ( "setGameKey_1", jm_setGameKey_1 )
        , ( "getGameKey_0", jm_getGameKey_0 ) ]
        CompleteMotionGestureInputEvent.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyCompleteMotionGestureInputEvent"
        [ ( "jm_getSourceId_0", jm_getSourceId_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_setGameKeyEvent_1", jm_setGameKeyEvent_1 ), ( "jm_getGameKeyEvent_0", jm_getGameKeyEvent_0 ), ( "jm_setGameKey_1", jm_setGameKey_1 ), ( "jm_getGameKey_0", jm_getGameKey_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "motionGestureInput", "" ), ( "inputToGameKeyMapping", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CompleteMotionGestureInputEvent.jinit_2 JR.this [ (JR.local "name"), (JR.local "motionGestureInput") ]),
                JR.exec (JR.setField "gameKey" "" JR.this GameKey.jstatic_NULL_GAME_KEY),
                JR.exec (JR.setField "gameKeyEvent" "" JR.this GameKeyEvent.jstatic_NONE),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getSourceId_0 : JR.Method
jm_getSourceId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setGameKeyEvent_1 : JR.Method
jm_setGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameKeyEvent" "" JR.this (JR.local "gameKeyEvent")) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameKeyEvent_0 : JR.Method
jm_getGameKeyEvent_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameKeyEvent") ])
        (jregister jheap)
        jthis
        jargs


jm_setGameKey_1 : JR.Method
jm_setGameKey_1 jheap jthis jargs =
    JR.method [ ( "gameKey", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "gameKey" "" JR.this (JR.local "gameKey")) ])
        (jregister jheap)
        jthis
        jargs


jm_getGameKey_0 : JR.Method
jm_getGameKey_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameKey") ])
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

