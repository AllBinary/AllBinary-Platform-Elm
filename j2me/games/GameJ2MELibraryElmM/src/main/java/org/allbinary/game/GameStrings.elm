module Org.Allbinary.Game.GameStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game
-}

import JR



jclass : String
jclass =
    "GameStrings"


jchain : List String
jchain =
    [ "GameStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "PROCESS_TICK", JR.defaultOf "" ), ( "ON_GAME_INITIALIZED", JR.defaultOf "" ), ( "UPDATESURFACE", JR.defaultOf "" ), ( "ON_SET_DISPLAYABLE", JR.defaultOf "" ), ( "UNPAUSE", JR.defaultOf "" ), ( "TOGGLE_MENU", JR.defaultOf "" ), ( "SET_GAME_OVER", JR.defaultOf "" ), ( "GAME_STATE", JR.defaultOf "" ), ( "SET_GAME_STATE", JR.defaultOf "" ), ( "STOP_GAME_CANVAS_RUNNABLE_INTERFACE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "PROCESS_TICK" "" JR.this (JR.str "processTick")),
                JR.exec (JR.setField "ON_GAME_INITIALIZED" "" JR.this (JR.str "onGameInitialized")),
                JR.exec (JR.setField "UPDATESURFACE" "" JR.this (JR.str "updateSurface")),
                JR.exec (JR.setField "ON_SET_DISPLAYABLE" "" JR.this (JR.str "onSetDisplayable")),
                JR.exec (JR.setField "UNPAUSE" "" JR.this (JR.str "unPause")),
                JR.exec (JR.setField "TOGGLE_MENU" "" JR.this (JR.str "toggleMenu")),
                JR.exec (JR.setField "SET_GAME_OVER" "" JR.this (JR.str "setGameOver")),
                JR.exec (JR.setField "GAME_STATE" "" JR.this (JR.str "Game State: ")),
                JR.exec (JR.setField "SET_GAME_STATE" "" JR.this (JR.str "setGameState")),
                JR.exec (JR.setField "STOP_GAME_CANVAS_RUNNABLE_INTERFACE" "" JR.this (JR.str "stopGameCanvasRunnableInterface")),
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

