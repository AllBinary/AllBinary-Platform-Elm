module Org.Allbinary.Logic.Util.Event.NullEventListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.util.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.EventListenerInterface as EventListenerInterface


jclass : String
jclass =
    "NullEventListener"


jchain : List String
jchain =
    [ "NullEventListener" ]
        ++ EventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullEventListener"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_EVENT_LISTENER", jstatic_NULL_EVENT_LISTENER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_EVENT_LISTENER : JR.M
jstatic_NULL_EVENT_LISTENER s =
    JR.static "NullEventListener" jclinit "NULL_EVENT_LISTENER"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        identity
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

