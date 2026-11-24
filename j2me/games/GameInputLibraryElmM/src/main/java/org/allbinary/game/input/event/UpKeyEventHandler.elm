module Org.Allbinary.Game.Input.Event.UpKeyEventHandler exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.event
-}

import JR
import Org.Allbinary.Game.Input.LocalPlayerInputIdFactory as LocalPlayerInputIdFactory
import Org.Allbinary.Game.Input.Event.UpKeyEventHandlerBase as UpKeyEventHandlerBase


jclass : String
jclass =
    "UpKeyEventHandler"


jchain : List String
jchain =
    [ "UpKeyEventHandler" ]
        ++ UpKeyEventHandlerBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    UpKeyEventHandlerBase.jfields ++ [ ( "playerInputIdFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstanceForDevice_1", jm_getInstanceForDevice_1 )
        , ( "getInstanceForPlayer_1", jm_getInstanceForPlayer_1 )
        , ( "removeAllListeners_0", jm_removeAllListeners_0 )
        , ( "removeListenerSingleThreaded_1", jm_removeListenerSingleThreaded_1 )
        , ( "removeListener_1", jm_removeListener_1 ) ]
        UpKeyEventHandlerBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "UpKeyEventHandler"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstanceForDevice_1", jm_getInstanceForDevice_1 ), ( "jm_getInstanceForPlayer_1", jm_getInstanceForPlayer_1 ), ( "jm_removeAllListeners_0", jm_removeAllListeners_0 ), ( "jm_removeListenerSingleThreaded_1", jm_removeListenerSingleThreaded_1 ), ( "jm_removeListener_1", jm_removeListener_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ), ( "jstatic_instanceArray", jstatic_instanceArray ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "UpKeyEventHandler" jclinit "instance"
        (JR.new jnew_0 [])
        s


jstatic_instanceArray : JR.M
jstatic_instanceArray s =
    JR.static "UpKeyEventHandler" jclinit "instanceArray"
        (JR.arrayOf "" [ (JR.new UpKeyEventHandlerBase.jnew_0 []), (JR.new UpKeyEventHandlerBase.jnew_0 []), (JR.new UpKeyEventHandlerBase.jnew_0 []), (JR.new UpKeyEventHandlerBase.jnew_0 []), (JR.new UpKeyEventHandlerBase.jnew_0 []), (JR.new UpKeyEventHandlerBase.jnew_0 []) ])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect UpKeyEventHandlerBase.jinit_0 JR.this []),
                JR.exec (JR.setField "playerInputIdFactory" "" JR.this (JR.callStatic LocalPlayerInputIdFactory.jm_getInstance_0 [])),
                identity,
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


jm_getInstanceForDevice_1 : JR.Method
jm_getInstanceForDevice_1 jheap jthis jargs =
    JR.method [ ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "playerInputId" "I" (JR.invoke "getPlayerForDevice_1" (JR.thisField "playerInputIdFactory") [ (JR.local "deviceId") ]), 
                    JR.return (JR.aget jstatic_instanceArray (JR.local "playerInputId")) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceForPlayer_1 : JR.Method
jm_getInstanceForPlayer_1 jheap jthis jargs =
    JR.method [ ( "playerInputId", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget jstatic_instanceArray (JR.local "playerInputId")) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAllListeners_0 : JR.Method
jm_removeAllListeners_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia UpKeyEventHandlerBase.jvtable "removeAllListeners_0" JR.this []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength jstatic_instanceArray) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67247 -> (JR.setLocal "index" "I" (JR.lit jwN67247))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.invoke "removeAllListeners_0" (JR.aget jstatic_instanceArray (JR.local "index")) []) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_removeListenerSingleThreaded_1 : JR.Method
jm_removeListenerSingleThreaded_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia UpKeyEventHandlerBase.jvtable "removeListenerSingleThreaded_1" JR.this [ (JR.local "eventListenerInterface") ]), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength jstatic_instanceArray) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67459 -> (JR.setLocal "index" "I" (JR.lit jwN67459))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.invoke "removeListenerSingleThreaded_1" (JR.aget jstatic_instanceArray (JR.local "index")) [ (JR.local "eventListenerInterface") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_removeListener_1 : JR.Method
jm_removeListener_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia UpKeyEventHandlerBase.jvtable "removeListener_1" JR.this [ (JR.local "eventListenerInterface") ]), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength jstatic_instanceArray) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67691 -> (JR.setLocal "index" "I" (JR.lit jwN67691))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.invoke "removeListener_1" (JR.aget jstatic_instanceArray (JR.local "index")) [ (JR.local "eventListenerInterface") ]) ]) ] ])
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

