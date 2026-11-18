module Org.Allbinary.Game.Score.Remote.RemoteHighScoresData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score.remote
-}

import JR



jclass : String
jclass =
    "RemoteHighScoresData"


jchain : List String
jchain =
    [ "RemoteHighScoresData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "HIGH_SCORES", JR.defaultOf "" ), ( "CUSTOMER_USER_NAME", JR.defaultOf "" ), ( "DISPLAY_NAME", JR.defaultOf "" ), ( "SCORE", JR.defaultOf "" ), ( "GAME_INFO", JR.defaultOf "" ), ( "GAME_CONFIGURATION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RemoteHighScoresData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "RemoteHighScoresData" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "HIGH_SCORES" "" JR.this (JR.str "HIGH_SCORES")),
                JR.exec (JR.setField "CUSTOMER_USER_NAME" "" JR.this (JR.str "CUSTOMER_USER_NAME")),
                JR.exec (JR.setField "DISPLAY_NAME" "" JR.this (JR.str "DISPLAY_NAME")),
                JR.exec (JR.setField "SCORE" "" JR.this (JR.str "SCORE")),
                JR.exec (JR.setField "GAME_INFO" "" JR.this (JR.str "GAME_INFO")),
                JR.exec (JR.setField "GAME_CONFIGURATION" "" JR.this (JR.str "GAME_CONFIGURATION")),
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
                    JR.return jstatic_SINGLETON ])
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

