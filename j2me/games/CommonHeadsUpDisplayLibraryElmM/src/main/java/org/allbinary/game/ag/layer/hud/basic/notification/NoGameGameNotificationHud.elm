module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Notification.NoGameGameNotificationHud exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.notification
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Game.Graphics.Hud.BasicHudFactory as BasicHudFactory
import Org.Allbinary.Game.Ag.Layer.Hud.Basic.Notification.GameNotificationHud as GameNotificationHud


jclass : String
jclass =
    "NoGameGameNotificationHud"


jchain : List String
jchain =
    [ "NoGameGameNotificationHud" ]
        ++ GameNotificationHud.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameNotificationHud.jfields ++ []


jvtable =
    JR.vtable
        []
        GameNotificationHud.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoGameGameNotificationHud"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect GameNotificationHud.jinit_4 JR.this [ (JR.field "TOPCENTER" (JR.callStatic BasicHudFactory.jm_getInstance_0 [])), (JR.field "HORIZONTAL" (JR.callStatic BasicHudFactory.jm_getInstance_0 [])), (JR.int 2), (JR.field "RED" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "updateMaxWidth" "" JR.this (JR.int 40)), 
                    JR.exec (JR.setField "updateMaxHeight" "" JR.this (JR.int 14)) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

