module Org.Allbinary.Layer.Event.LayerManagerEventListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer.event
-}

import JR
import Org.Allbinary.Layer.Event.LayerManagerEventListenerInterface as LayerManagerEventListenerInterface


jclass : String
jclass =
    "LayerManagerEventListener"


jchain : List String
jchain =
    [ "LayerManagerEventListener" ]
        ++ LayerManagerEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "onEvent_1", jm_onEvent_1 )
        , ( "onCreateLayerManagerEvent_1", jm_onCreateLayerManagerEvent_1 )
        , ( "onDeleteLayerManagerEvent_1", jm_onDeleteLayerManagerEvent_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerManagerEventListener"
        [ ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_onCreateLayerManagerEvent_1", jm_onCreateLayerManagerEvent_1 ), ( "jm_onDeleteLayerManagerEvent_1", jm_onDeleteLayerManagerEvent_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_onCreateLayerManagerEvent_1 : JR.Method
jm_onCreateLayerManagerEvent_1 jheap jthis jargs =
    JR.method [ ( "layerManagerEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onDeleteLayerManagerEvent_1 : JR.Method
jm_onDeleteLayerManagerEvent_1 jheap jthis jargs =
    JR.method [ ( "layerManagerEvent", "" ) ] ""
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

