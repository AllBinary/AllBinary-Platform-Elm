module Org.Allbinary.Logic.System.Security.Licensing.LockedFeatureNotificationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.Media.Audio.ErrorSound as ErrorSound
import Org.Allbinary.Game.Layer.Hud.Event.GameNotificationEvent as GameNotificationEvent
import Org.Allbinary.Game.Layer.Hud.Event.GameNotificationEventHandler as GameNotificationEventHandler
import Org.Allbinary.Logic.System.Security.Licensing.LicenseStrings as LicenseStrings
import Org.Allbinary.Media.Audio.PrimaryPlayerQueueFactory as PrimaryPlayerQueueFactory
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory


jclass : String
jclass =
    "LockedFeatureNotificationUtil"


jchain : List String
jchain =
    [ "LockedFeatureNotificationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "gameNotificationEvent", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "fire_0", jm_fire_0 )
        , ( "fireWithColor_1", jm_fireWithColor_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LockedFeatureNotificationUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_fire_0", jm_fire_0 ), ( "jm_fireWithColor_1", jm_fireWithColor_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LockedFeatureNotificationUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "gameNotificationEvent" "" JR.this (JR.new GameNotificationEvent.jnew_5 [ JR.this, (JR.field "LOCKED" (JR.callStatic LicenseStrings.jm_getInstance_0 [])), (JR.invoke "getAt_1" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []) [ (JR.int 3) ]), (JR.field "RED" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "FALSE" (JR.callStatic BooleanFactory.jm_getInstance_0 [])) ])),
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


jm_fire_0 : JR.Method
jm_fire_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.callStatic PrimaryPlayerQueueFactory.jm_getInstance_0 []) [ (JR.callStatic ErrorSound.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameNotificationEventHandler.jm_getInstance_0 []) [ (JR.thisField "gameNotificationEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_fireWithColor_1 : JR.Method
jm_fireWithColor_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.callStatic PrimaryPlayerQueueFactory.jm_getInstance_0 []) [ (JR.callStatic ErrorSound.jm_getInstance_0 []) ]), 
                    JR.exec (JR.invoke "setBasicColorP_1" (JR.thisField "gameNotificationEvent") [ (JR.local "basicColor") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.callStatic GameNotificationEventHandler.jm_getInstance_0 []) [ (JR.thisField "gameNotificationEvent") ]) ])
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

