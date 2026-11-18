module Org.Allbinary.Game.Configuration.Persistance.GameConfigurationPersistanceSingleton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.persistance
-}

import JR
import Org.Allbinary.Game.Configuration.Persistance.GamePersistanceStrings as GamePersistanceStrings
import Org.Allbinary.Game.Configuration.Persistance.KeyValuePersistance as KeyValuePersistance


jclass : String
jclass =
    "GameConfigurationPersistanceSingleton"


jchain : List String
jchain =
    [ "GameConfigurationPersistanceSingleton" ]
        ++ KeyValuePersistance.jchain


jfields : List ( String, JR.JValue )
jfields =
    KeyValuePersistance.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        KeyValuePersistance.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameConfigurationPersistanceSingleton"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_GAME_PERSISTANCE", jstatic_GAME_PERSISTANCE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_GAME_PERSISTANCE : JR.M
jstatic_GAME_PERSISTANCE s =
    JR.static "GameConfigurationPersistanceSingleton" jclinit "GAME_PERSISTANCE"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect KeyValuePersistance.jinit_1 JR.this [ (JR.field "SAVED_GAME_CONFIGURATION_RECORD_ID" (JR.callStatic GamePersistanceStrings.jm_getInstance_0 [])) ]),
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
                    JR.return jstatic_GAME_PERSISTANCE ])
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

