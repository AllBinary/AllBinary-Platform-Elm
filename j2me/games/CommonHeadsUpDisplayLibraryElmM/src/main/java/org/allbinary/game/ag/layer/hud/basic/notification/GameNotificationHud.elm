module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Notification.GameNotificationHud exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.notification
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Game.Graphics.Hud.BasicHud as BasicHud
import Org.Allbinary.Game.Graphics.Hud.BasicHudFactory as BasicHudFactory
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Ag.Layer.Hud.Basic.Notification.GameNotification as GameNotification
import Org.Allbinary.Game.Layer.Hud.Event.GameNotificationListenerInterface as GameNotificationListenerInterface


jclass : String
jclass =
    "GameNotificationHud"


jchain : List String
jchain =
    [ "GameNotificationHud" ]
        ++ BasicHud.jchain
        ++ GameNotificationListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicHud.jfields ++ [ ( "METHOD_NAME", JR.defaultOf "" ), ( "lastGameNotificationEvent", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onGameNotificationEvent_1", jm_onGameNotificationEvent_1 )
        , ( "add_4", jm_add_4 )
        , ( "processTick_0", jm_processTick_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "clear_0", jm_clear_0 ) ]
        BasicHud.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameNotificationHud"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onGameNotificationEvent_1", jm_onGameNotificationEvent_1 ), ( "jm_add_4", jm_add_4 ), ( "jm_processTick_0", jm_processTick_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_clear_0", jm_clear_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_NULL_GAME_NOTIFICATION", jstatic_NULL_GAME_NOTIFICATION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_GAME_NOTIFICATION : JR.M
jstatic_NULL_GAME_NOTIFICATION s =
    JR.static "GameNotificationHud" jclinit "NULL_GAME_NOTIFICATION"
        (JR.new jnew_4 [ (JR.field "TOPCENTER" (JR.callStatic BasicHudFactory.jm_getInstance_0 [])), (JR.field "HORIZONTAL" (JR.callStatic BasicHudFactory.jm_getInstance_0 [])), (JR.int 0), (JR.field "RED" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "location", "I" ), ( "direction", "I" ), ( "bufferZone", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicHud.jinit_4 JR.this [ (JR.local "location"), (JR.local "direction"), (JR.local "bufferZone"), (JR.local "basicColor") ]),
                JR.exec (JR.setField "METHOD_NAME" "" JR.this (JR.str "onGameNotificationEvent")),
                JR.exec (JR.setField "lastGameNotificationEvent" "" JR.this GameNotification.jstatic_NULL_GAME_NOTIFICATION_EVENT),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onGameNotificationEvent_1 : JR.Method
jm_onGameNotificationEvent_1 jheap jthis jargs =
    JR.method [ ( "gameNotificationEvent", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "lastGameNotificationEvent") (JR.local "gameNotificationEvent")) (JR.run [ 
                        JR.exec (JR.setField "lastGameNotificationEvent" "" JR.this (JR.local "gameNotificationEvent")), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "getString_0" (JR.local "gameNotificationEvent") []), JR.this, (JR.thisField "METHOD_NAME") ]) ]) identity, 
                    JR.exec (JR.invoke "add_4" JR.this [ (JR.invoke "getString_0" (JR.local "gameNotificationEvent") []), (JR.invoke "getSeconds_0" (JR.local "gameNotificationEvent") []), (JR.invoke "getBasicColorP_0" (JR.local "gameNotificationEvent") []), (JR.invoke "getPermanent_0" (JR.local "gameNotificationEvent") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_4 : JR.Method
jm_add_4 jheap jthis jargs =
    JR.method [ ( "string", "" ), ( "seconds", "" ), ( "basicColor", "" ), ( "permanent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processTick_0 : JR.Method
jm_processTick_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        identity
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

