module Org.Allbinary.Game.Configuration.Persistance.GameDifficultyFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.persistance
-}

import JR



jclass : String
jclass =
    "GameDifficultyFactory"


jchain : List String
jchain =
    [ "GameDifficultyFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "level", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setLevel_1", jm_setLevel_1 )
        , ( "getLevel_0", jm_getLevel_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameDifficultyFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setLevel_1", jm_setLevel_1 ), ( "jm_getLevel_0", jm_getLevel_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameDifficultyFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "level" "I" JR.this (JR.int 0)),
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


jm_setLevel_1 : JR.Method
jm_setLevel_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "level" "I" JR.this (JR.local "level")) ])
        (jregister jheap)
        jthis
        jargs


jm_getLevel_0 : JR.Method
jm_getLevel_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "level") ])
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

