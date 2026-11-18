module Org.Allbinary.Game.GameAdState exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR
import Org.Allbinary.Business.Advertisement.GameAdStateBase as GameAdStateBase
import Org.Allbinary.Input.Event.VirtualKeyboardEventHandler as VirtualKeyboardEventHandler
import Org.Allbinary.Input.Event.VirtualKeyboardEventListenerInterface as VirtualKeyboardEventListenerInterface


jclass : String
jclass =
    "GameAdState"


jchain : List String
jchain =
    [ "GameAdState" ]
        ++ GameAdStateBase.jchain
        ++ VirtualKeyboardEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameAdStateBase.jfields ++ []


jvtable =
    JR.vtable
        [ ( "onVirtualKeyboardEvent_1", jm_onVirtualKeyboardEvent_1 )
        , ( "onEvent_1", jm_onEvent_1 ) ]
        GameAdStateBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameAdState"
        [ ( "jm_onVirtualKeyboardEvent_1", jm_onVirtualKeyboardEvent_1 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "adConfiguration", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameAdStateBase.jinit_1 JR.this [ (JR.local "adConfiguration") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "addListenerInterface_1" (JR.callStatic VirtualKeyboardEventHandler.jm_getInstance_0 []) [ JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_onVirtualKeyboardEvent_1 : JR.Method
jm_onVirtualKeyboardEvent_1 jheap jthis jargs =
    JR.method [ ( "virtualKeyboardEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia GameAdStateBase.jvtable "onEvent_1" JR.this [ (JR.local "eventObject") ]) ])
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

