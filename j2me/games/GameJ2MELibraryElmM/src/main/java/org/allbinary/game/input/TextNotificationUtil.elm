module Org.Allbinary.Game.Input.TextNotificationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.Media.Audio.ErrorSound as ErrorSound
import Org.Allbinary.Game.Layer.Hud.Event.GameNotificationEvent as GameNotificationEvent
import Org.Allbinary.Game.Layer.Hud.Event.GameNotificationEventHandler as GameNotificationEventHandler
import Org.Allbinary.Media.Audio.PrimaryPlayerQueueFactory as PrimaryPlayerQueueFactory
import Org.Allbinary.Media.Audio.SelectSound as SelectSound
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "TextNotificationUtil"


jchain : List String
jchain =
    [ "TextNotificationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "TWO", JR.defaultOf "" ), ( "FALSE", JR.defaultOf "" ), ( "gameNotificationEventHandler", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "fireError_1", jm_fireError_1 )
        , ( "fireNew_1", jm_fireNew_1 )
        , ( "fireSuccess_1", jm_fireSuccess_1 )
        , ( "fire_1", jm_fire_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TextNotificationUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_fireError_1", jm_fireError_1 ), ( "jm_fireNew_1", jm_fireNew_1 ), ( "jm_fireSuccess_1", jm_fireSuccess_1 ), ( "jm_fire_1", jm_fire_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TextNotificationUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "TWO" "" JR.this (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 2) ])),
                JR.exec (JR.setField "FALSE" "" JR.this (JR.field "FALSE" (JR.callStatic BooleanFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "gameNotificationEventHandler" "" JR.this (JR.callStatic GameNotificationEventHandler.jm_getInstance_0 [])),
                identity ])
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


jm_fireError_1 : JR.Method
jm_fireError_1 jheap jthis jargs =
    JR.method [ ( "message", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.callStatic PrimaryPlayerQueueFactory.jm_getInstance_0 []) [ (JR.callStatic ErrorSound.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "fire_1" JR.this [ (JR.local "message") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_fireNew_1 : JR.Method
jm_fireNew_1 jheap jthis jargs =
    JR.method [ ( "message", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.callStatic PrimaryPlayerQueueFactory.jm_getInstance_0 []) [ (JR.callStatic SelectSound.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "fire_1" JR.this [ (JR.local "message") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_fireSuccess_1 : JR.Method
jm_fireSuccess_1 jheap jthis jargs =
    JR.method [ ( "message", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.callStatic PrimaryPlayerQueueFactory.jm_getInstance_0 []) [ (JR.callStatic SelectSound.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "fire_1" JR.this [ (JR.local "message") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_fire_1 : JR.Method
jm_fire_1 jheap jthis jargs =
    JR.method [ ( "message", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameNotificationEvent" "" (JR.new GameNotificationEvent.jnew_5 [ JR.this, (JR.local "message"), (JR.thisField "TWO"), (JR.field "RED" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.thisField "FALSE") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.thisField "gameNotificationEventHandler") [ (JR.local "gameNotificationEvent") ]) ])
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

