module Org.Allbinary.Game.Ag.Layer.Hud.Basic.Notification.GameNotification exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.hud.basic.notification
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.Game.Layer.Hud.Event.GameNotificationEvent as GameNotificationEvent
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameNotification"


jchain : List String
jchain =
    [ "GameNotification" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "stringList", JR.defaultOf "" ), ( "timeList", JR.defaultOf "" ), ( "colorList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "add_3", jm_add_3 )
        , ( "clear_0", jm_clear_0 )
        , ( "getSize_0", jm_getSize_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameNotification"
        [ ( "jm_add_3", jm_add_3 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_GAME_NOTIFICATION_EVENT", jstatic_NULL_GAME_NOTIFICATION_EVENT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_GAME_NOTIFICATION_EVENT : JR.M
jstatic_NULL_GAME_NOTIFICATION_EVENT s =
    JR.static "GameNotification" jclinit "NULL_GAME_NOTIFICATION_EVENT"
        (JR.new GameNotificationEvent.jnew_5 [ (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.cast "I" (JR.int 0)), (JR.field "RED" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "FALSE" (JR.callStatic BooleanFactory.jm_getInstance_0 [])) ])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "stringList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "timeList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "colorList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_add_3 : JR.Method
jm_add_3 jheap jthis jargs =
    JR.method [ ( "string", "" ), ( "seconds", "" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "stringList") [ (JR.local "string") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "stringList") [ (JR.local "string") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "timeList") [ (JR.local "seconds") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "colorList") [ (JR.local "basicColor") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "stringList") []), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "timeList") []), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "colorList") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "size_0" (JR.thisField "stringList") []) ])
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

