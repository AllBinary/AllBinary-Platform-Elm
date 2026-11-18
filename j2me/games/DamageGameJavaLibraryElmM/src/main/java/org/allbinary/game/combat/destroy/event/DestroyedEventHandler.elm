module Org.Allbinary.Game.Combat.Destroy.Event.DestroyedEventHandler exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.destroy.event
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Util.Event.Handler.BasicEventHandler as BasicEventHandler
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings


jclass : String
jclass =
    "DestroyedEventHandler"


jchain : List String
jchain =
    [ "DestroyedEventHandler" ]
        ++ BasicEventHandler.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicEventHandler.jfields ++ [ ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "addListener_1", jm_addListener_1 )
        , ( "removeAllListeners_0", jm_removeAllListeners_0 )
        , ( "removeListener_1", jm_removeListener_1 )
        , ( "fireEvent_1", jm_fireEvent_1 )
        , ( "process_2", jm_process_2 ) ]
        BasicEventHandler.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DestroyedEventHandler"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_addListener_1", jm_addListener_1 ), ( "jm_removeAllListeners_0", jm_removeAllListeners_0 ), ( "jm_removeListener_1", jm_removeListener_1 ), ( "jm_fireEvent_1", jm_fireEvent_1 ), ( "jm_process_2", jm_process_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DestroyedEventHandler" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect BasicEventHandler.jinit_0 JR.this []),
                JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
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


jm_addListener_1 : JR.Method
jm_addListener_1 jheap jthis jargs =
    JR.method [ ( "collidableDestroyableDamageableLayer", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "list") [ (JR.local "collidableDestroyableDamageableLayer") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "collidableDestroyableDamageableLayer") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_removeAllListeners_0 : JR.Method
jm_removeAllListeners_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []), 
                    JR.exec (JR.callVia BasicEventHandler.jvtable "removeAllListeners_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_removeListener_1 : JR.Method
jm_removeListener_1 jheap jthis jargs =
    JR.method [ ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "remove_1" (JR.thisField "list") [ (JR.local "eventListenerInterface") ]), 
                    JR.exec (JR.callVia BasicEventHandler.jvtable "removeListener_1" JR.this [ (JR.local "eventListenerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_fireEvent_1 : JR.Method
jm_fireEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.thisField "list") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN71903 -> (JR.setLocal "index" "I" (JR.lit jwN71903))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.declare "collidableDestroyableDamageableLayer" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index")), 
                            JR.exec (JR.invoke "onDestroyed_1" (JR.local "collidableDestroyableDamageableLayer") [ (JR.local "eventObject") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "FIRE_EVENT" (JR.callStatic EventStrings.jm_getInstance_0 [])), (JR.local "e") ]) ]) ) ] identity ]) ], 
                    JR.exec (JR.callVia BasicEventHandler.jvtable "fireEvent_1" JR.this [ (JR.local "eventObject") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ), ( "eventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "destroyedEventListenerInterface" "" (JR.local "eventListenerInterface"), 
                    JR.exec (JR.invoke "onDestroyed_1" (JR.local "destroyedEventListenerInterface") [ (JR.local "eventObject") ]) ])
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

