module Org.Allbinary.Game.Input.GameInputStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR



jclass : String
jclass =
    "GameInputStrings"


jchain : List String
jchain =
    [ "GameInputStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "PROCESS_INPUT", JR.defaultOf "" ), ( "KEY_PRESSED", JR.defaultOf "" ), ( "KEY_RELEASED", JR.defaultOf "" ), ( "KEY_REPEATED", JR.defaultOf "" ), ( "ON_PRESS_GAME_KEY", JR.defaultOf "" ), ( "ON_DOWN_GAME_KEY", JR.defaultOf "" ), ( "ON_UP_GAME_KEY", JR.defaultOf "" ), ( "NO_KEY", JR.defaultOf "" ), ( "ADD_KEY_EVENT", JR.defaultOf "" ), ( "REMOVE_KEY_EVENT", JR.defaultOf "" ), ( "STRAFE_LEFT", JR.defaultOf "" ), ( "STRAFE_RIGHT", JR.defaultOf "" ), ( "PROCESS_MOTION_INPUT", JR.defaultOf "" ), ( "UDPATE_CURRENT_TOUCH_INPUT_FACTORY", JR.defaultOf "" ), ( "ENABLE_PLAYER_GAME_INPUTS", JR.defaultOf "" ), ( "ENABLE_PLAYER_GAME_INPUT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInputStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameInputStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "PROCESS_INPUT" "" JR.this (JR.str "processInput")),
                JR.exec (JR.setField "KEY_PRESSED" "" JR.this (JR.str "keyPressed")),
                JR.exec (JR.setField "KEY_RELEASED" "" JR.this (JR.str "keyReleased")),
                JR.exec (JR.setField "KEY_REPEATED" "" JR.this (JR.str "keyRepeated")),
                JR.exec (JR.setField "ON_PRESS_GAME_KEY" "" JR.this (JR.str "onPressGameKeyEvent")),
                JR.exec (JR.setField "ON_DOWN_GAME_KEY" "" JR.this (JR.str "onDownGameKeyEvent")),
                JR.exec (JR.setField "ON_UP_GAME_KEY" "" JR.this (JR.str "onUpGameKeyEvent")),
                JR.exec (JR.setField "NO_KEY" "" JR.this (JR.str "Key Code Not Mapped For Game: ")),
                JR.exec (JR.setField "ADD_KEY_EVENT" "" JR.this (JR.str "addGameKeyEvent")),
                JR.exec (JR.setField "REMOVE_KEY_EVENT" "" JR.this (JR.str "removeGameKeyEvent")),
                JR.exec (JR.setField "STRAFE_LEFT" "" JR.this (JR.str "strafeLeft")),
                JR.exec (JR.setField "STRAFE_RIGHT" "" JR.this (JR.str "strafeRight")),
                JR.exec (JR.setField "PROCESS_MOTION_INPUT" "" JR.this (JR.str "processMotionInput")),
                JR.exec (JR.setField "UDPATE_CURRENT_TOUCH_INPUT_FACTORY" "" JR.this (JR.str "updateCurrentTouchInputFactory")),
                JR.exec (JR.setField "ENABLE_PLAYER_GAME_INPUTS" "" JR.this (JR.str "Enabling PlayerGameInputs: ")),
                JR.exec (JR.setField "ENABLE_PLAYER_GAME_INPUT" "" JR.this (JR.str "Enabling PlayerGameInput: ")),
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

