module Org.Allbinary.Game.Displayable.GameLevelDisplayChangeEventListenersFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Graphics.Displayable.Event.DisplayChangeEventHandler as DisplayChangeEventHandler


jclass : String
jclass =
    "GameLevelDisplayChangeEventListenersFactory"


jchain : List String
jchain =
    [ "GameLevelDisplayChangeEventListenersFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "add_1", jm_add_1 )
        , ( "clear_0", jm_clear_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameLevelDisplayChangeEventListenersFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_add_1", jm_add_1 ), ( "jm_clear_0", jm_clear_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameLevelDisplayChangeEventListenersFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "list" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
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


jm_add_1 : JR.Method
jm_add_1 jheap jthis jargs =
    JR.method [ ( "displayChangeEventListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "list") [ (JR.local "displayChangeEventListener") ]), 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic DisplayChangeEventHandler.jm_getInstance_0 []) [ (JR.local "displayChangeEventListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "displayChangeEventHandler" "" (JR.callStatic DisplayChangeEventHandler.jm_getInstance_0 []), 
                    JR.declare "displayChangeEventListener" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.invoke "size_0" (JR.thisField "list") []), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67117 -> (JR.setLocal "index" "I" (JR.lit jwN67117))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "displayChangeEventListener" "" (JR.aget (JR.field "objectArray" (JR.thisField "list")) (JR.local "index"))), 
                        JR.exec (JR.invoke "removeListener_1" (JR.local "displayChangeEventHandler") [ (JR.local "displayChangeEventListener") ]) ]) ], 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "list") []) ])
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

