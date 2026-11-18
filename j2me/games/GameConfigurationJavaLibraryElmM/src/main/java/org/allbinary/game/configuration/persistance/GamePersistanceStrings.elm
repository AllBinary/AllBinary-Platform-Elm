module Org.Allbinary.Game.Configuration.Persistance.GamePersistanceStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.persistance
-}

import JR



jclass : String
jclass =
    "GamePersistanceStrings"


jchain : List String
jchain =
    [ "GamePersistanceStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "SAVED_GAME_RECORD_ID", JR.defaultOf "" ), ( "SAVED_GAME_CONFIGURATION_RECORD_ID", JR.defaultOf "" ), ( "DEFAULT_INPUT_MAPPING_RECORD_ID", JR.defaultOf "" ), ( "SAVED_INPUT_CONFIGURATION_RECORD_ID", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GamePersistanceStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GamePersistanceStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "SAVED_GAME_RECORD_ID" "" JR.this (JR.str "_SG")),
                JR.exec (JR.setField "SAVED_GAME_CONFIGURATION_RECORD_ID" "" JR.this (JR.str "_SGC")),
                JR.exec (JR.setField "DEFAULT_INPUT_MAPPING_RECORD_ID" "" JR.this (JR.str "_DIM")),
                JR.exec (JR.setField "SAVED_INPUT_CONFIGURATION_RECORD_ID" "" JR.this (JR.str "_SIC")),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

