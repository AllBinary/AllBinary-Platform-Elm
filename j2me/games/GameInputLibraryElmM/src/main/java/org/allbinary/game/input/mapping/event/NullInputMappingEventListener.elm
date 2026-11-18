module Org.Allbinary.Game.Input.Mapping.Event.NullInputMappingEventListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.mapping.event
-}

import JR
import Org.Allbinary.Game.Input.Mapping.Event.InputMappingEventListenerInterface as InputMappingEventListenerInterface


jclass : String
jclass =
    "NullInputMappingEventListener"


jchain : List String
jchain =
    [ "NullInputMappingEventListener" ]
        ++ InputMappingEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "onInputMappingEvent_1", jm_onInputMappingEvent_1 )
        , ( "onEvent_1", jm_onEvent_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullInputMappingEventListener"
        [ ( "jm_onInputMappingEvent_1", jm_onInputMappingEvent_1 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER", jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER : JR.M
jstatic_NULL_INPUT_MAPPING_EVENT_LISTENER s =
    JR.static "NullInputMappingEventListener" jclinit "NULL_INPUT_MAPPING_EVENT_LISTENER"
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


jm_onInputMappingEvent_1 : JR.Method
jm_onInputMappingEvent_1 jheap jthis jargs =
    JR.method [ ( "inputMappingEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


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

