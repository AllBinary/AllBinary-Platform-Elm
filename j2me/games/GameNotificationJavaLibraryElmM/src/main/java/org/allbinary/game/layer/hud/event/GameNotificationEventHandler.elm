module Org.Allbinary.Game.Layer.Hud.Event.GameNotificationEventHandler exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.hud.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.Handler.BasicEventHandler as BasicEventHandler
import Org.Allbinary.Logic.Util.Event.NullEventListener as NullEventListener


jclass : String
jclass =
    "GameNotificationEventHandler"


jchain : List String
jchain =
    [ "GameNotificationEventHandler" ]
        ++ BasicEventHandler.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicEventHandler.jfields ++ [ ( "enabled", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "removeAllListeners_0", jm_removeAllListeners_0 )
        , ( "getInstance_0", jm_getInstance_0 )
        , ( "process_2", jm_process_2 ) ]
        BasicEventHandler.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameNotificationEventHandler"
        [ ( "jm_removeAllListeners_0", jm_removeAllListeners_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_2", jm_process_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameNotificationEventHandler" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicEventHandler.jinit_0 JR.this []),
                JR.exec (JR.setField "enabled" "Z" JR.this (JR.bool True)),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_removeAllListeners_0 : JR.Method
jm_removeAllListeners_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "eventListenerInterface" "" NullEventListener.jstatic_NULL_EVENT_LISTENER, 
                    JR.declare "list" "" (JR.thisField "eventListenerInterfaceList"), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "list") []) (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setLocal "eventListenerInterface" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.int 0))) ]) identity, 
                    JR.exec (JR.callVia BasicEventHandler.jvtable "removeAllListeners_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "eventListenerInterface") NullEventListener.jstatic_NULL_EVENT_LISTENER) (JR.run [ 
                        JR.exec (JR.invoke "addListenerInterface_1" JR.this [ (JR.local "eventListenerInterface") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ), ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.thisField "enabled")) (JR.run [ 
                        JR.returnVoid ]) identity, 
                    JR.declare "gameNotificationListenerInterface" "" (JR.local "eventListenerInterface"), 
                    JR.exec (JR.invoke "onGameNotificationEvent_1" (JR.local "gameNotificationListenerInterface") [ (JR.local "eventObject") ]) ])
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

