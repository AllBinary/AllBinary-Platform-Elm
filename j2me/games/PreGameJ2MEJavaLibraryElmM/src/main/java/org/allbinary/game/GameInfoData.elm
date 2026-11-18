module Org.Allbinary.Game.GameInfoData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR



jclass : String
jclass =
    "GameInfoData"


jchain : List String
jchain =
    [ "GameInfoData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "GAME_TYPE", JR.defaultOf "" ), ( "GAME_MODE", JR.defaultOf "" ), ( "PLAYER_TYPE", JR.defaultOf "" ), ( "HIGHEST_LEVEL", JR.defaultOf "" ), ( "CURRENT_LEVEL", JR.defaultOf "" ), ( "SOFTWARE_INFORMATION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInfoData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameInfoData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "GAME_TYPE" "" JR.this (JR.str "GAME_TYPE")),
                JR.exec (JR.setField "GAME_MODE" "" JR.this (JR.str "GAME_MODE")),
                JR.exec (JR.setField "PLAYER_TYPE" "" JR.this (JR.str "PLAYER_TYPE")),
                JR.exec (JR.setField "HIGHEST_LEVEL" "" JR.this (JR.str "HIGHEST_LEVEL")),
                JR.exec (JR.setField "CURRENT_LEVEL" "" JR.this (JR.str "CURRENT_LEVEL")),
                JR.exec (JR.setField "SOFTWARE_INFORMATION" "" JR.this (JR.str "SOFTWARE_INFORMATION")),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

