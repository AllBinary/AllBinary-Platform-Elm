module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Notification.NoGameNotificationHudSingleton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.notification
-}

import JR
import Org.Allbinary.Game.Graphics.Hud.BasicHudFactory as BasicHudFactory
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Ag.Layer.Hud.Basic.Notification.GameNotificationHud as GameNotificationHud
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Ag.Layer.Hud.Basic.Notification.NoGameGameNotificationHud as NoGameGameNotificationHud


jclass : String
jclass =
    "NoGameNotificationHudSingleton"


jchain : List String
jchain =
    [ "NoGameNotificationHudSingleton" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "gameNotificationHud", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getGameNotificationHud_0", jm_getGameNotificationHud_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoGameNotificationHudSingleton"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getGameNotificationHud_0", jm_getGameNotificationHud_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NoGameNotificationHudSingleton" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameNotificationHud" "" JR.this GameNotificationHud.jstatic_NULL_GAME_NOTIFICATION),
                identity,
                (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "basicHudFactory" "" (JR.callStatic BasicHudFactory.jm_getInstance_0 []), 
                        JR.exec (JR.setField "gameNotificationHud" "" JR.this (JR.new NoGameGameNotificationHud.jnew_0 [])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getGameNotificationHud_0 : JR.Method
jm_getGameNotificationHud_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameNotificationHud") ])
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

