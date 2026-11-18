module Org.Allbinary.Game.Input.PlayerGameInput exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Input.GameInput as GameInput
import Org.Allbinary.Game.Input.GameInputStrings as GameInputStrings
import Org.Allbinary.Game.Input.Event.GameKeyEventListenerInterface as GameKeyEventListenerInterface
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "PlayerGameInput"


jchain : List String
jchain =
    [ "PlayerGameInput" ]
        ++ GameInput.jchain
        ++ GameKeyEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameInput.jfields ++ [ ( "gameInputStrings", JR.defaultOf "" ), ( "playerInputId", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "onPressGameKeyEvent_1", jm_onPressGameKeyEvent_1 )
        , ( "onDownGameKeyEvent_1", jm_onDownGameKeyEvent_1 )
        , ( "onDownKeyEvent_1", jm_onDownKeyEvent_1 )
        , ( "onDownKey_1", jm_onDownKey_1 )
        , ( "onUpGameKeyEvent_1", jm_onUpGameKeyEvent_1 )
        , ( "onUpKeyEvent_1", jm_onUpKeyEvent_1 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "getPlayerInputId_0", jm_getPlayerInputId_0 ) ]
        GameInput.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlayerGameInput"
        [ ( "jm_onPressGameKeyEvent_1", jm_onPressGameKeyEvent_1 ), ( "jm_onDownGameKeyEvent_1", jm_onDownGameKeyEvent_1 ), ( "jm_onDownKeyEvent_1", jm_onDownKeyEvent_1 ), ( "jm_onDownKey_1", jm_onDownKey_1 ), ( "jm_onUpGameKeyEvent_1", jm_onUpGameKeyEvent_1 ), ( "jm_onUpKeyEvent_1", jm_onUpKeyEvent_1 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_getPlayerInputId_0", jm_getPlayerInputId_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "gameKeyEventList", "" ), ( "removalGameKeyEventList", "" ), ( "playerInputId", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameInput.jinit_2 JR.this [ (JR.local "gameKeyEventList"), (JR.local "removalGameKeyEventList") ]),
                JR.exec (JR.setField "gameInputStrings" "" JR.this (JR.callStatic GameInputStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "playerInputId" "I" JR.this (JR.local "playerInputId")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_onPressGameKeyEvent_1 : JR.Method
jm_onPressGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" JR.this [ (JR.local "gameKeyEvent") ]), 
                    JR.exec (JR.invoke "addForRemoval_1" JR.this [ (JR.local "gameKeyEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDownGameKeyEvent_1 : JR.Method
jm_onDownGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" JR.this [ (JR.local "gameKeyEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDownKeyEvent_1 : JR.Method
jm_onDownKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" JR.this [ (JR.local "gameKeyEvent") ]), 
                    JR.exec (JR.invoke "addForRemoval_1" JR.this [ (JR.local "gameKeyEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onDownKey_1 : JR.Method
jm_onDownKey_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START_LABEL" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "toString_0" (JR.local "gameKeyEvent") []) ]) []), JR.this, (JR.field "ON_DOWN_GAME_KEY" (JR.thisField "gameInputStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onUpGameKeyEvent_1 : JR.Method
jm_onUpGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addForRemoval_1" JR.this [ (JR.local "gameKeyEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onUpKeyEvent_1 : JR.Method
jm_onUpKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getPlayerInputId_0 : JR.Method
jm_getPlayerInputId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "playerInputId") ])
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

