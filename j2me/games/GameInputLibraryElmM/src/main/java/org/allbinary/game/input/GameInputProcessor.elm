module Org.Allbinary.Game.Input.GameInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR



jclass : String
jclass =
    "GameInputProcessor"


jchain : List String
jchain =
    [ "GameInputProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "processEvent_2", jm_processEvent_2 )
        , ( "processReleasedEvent_2", jm_processReleasedEvent_2 )
        , ( "processAnalog_3", jm_processAnalog_3 )
        , ( "process_2", jm_process_2 )
        , ( "processReleased_2", jm_processReleased_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInputProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_processEvent_2", jm_processEvent_2 ), ( "jm_processReleasedEvent_2", jm_processReleasedEvent_2 ), ( "jm_processAnalog_3", jm_processAnalog_3 ), ( "jm_process_2", jm_process_2 ), ( "jm_processReleased_2", jm_processReleased_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameInputProcessor" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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


jm_processEvent_2 : JR.Method
jm_processEvent_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processReleasedEvent_2 : JR.Method
jm_processReleasedEvent_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processAnalog_3 : JR.Method
jm_processAnalog_3 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "gameKeyEvent", "" ), ( "analogValue", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "keyAsInteger", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processReleased_2 : JR.Method
jm_processReleased_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "keyAsInteger", "" ) ] ""
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

