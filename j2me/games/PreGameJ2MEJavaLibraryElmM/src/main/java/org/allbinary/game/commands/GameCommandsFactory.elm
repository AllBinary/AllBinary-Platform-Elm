module Org.Allbinary.Game.Commands.GameCommandsFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.commands
-}

import JR
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Javax.Microedition.Lcdui.Command as Command
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameCommandsFactory"


jchain : List String
jchain =
    [ "GameCommandsFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "TOGGLE_FULLSCREEN", JR.defaultOf "" ), ( "TOGGLE_KEYBOARD", JR.defaultOf "" ), ( "SET_MENU_DISPLAYABLE", JR.defaultOf "" ), ( "APPLICATION_UPDATE", JR.defaultOf "" ), ( "DISPLAY_ABOUT", JR.defaultOf "" ), ( "OPEN_WEB_URL", JR.defaultOf "" ), ( "CLOSE_OPTIONS", JR.defaultOf "" ), ( "DISPLAY_OPTIONS", JR.defaultOf "" ), ( "START_TRACE", JR.defaultOf "" ), ( "STOP_TRACE", JR.defaultOf "" ), ( "DEFAULT_OPTIONS", JR.defaultOf "" ), ( "SHOW_GAME_CANVAS", JR.defaultOf "" ), ( "CLOSE_AND_SHOW_GAME_CANVAS", JR.defaultOf "" ), ( "QUIT_COMMAND", JR.defaultOf "" ), ( "RESTART_COMMAND", JR.defaultOf "" ), ( "DISPLAY_SAVE_FORM", JR.defaultOf "" ), ( "SAVE", JR.defaultOf "" ), ( "DISPLAY_LOAD_FORM", JR.defaultOf "" ), ( "LOAD_FILE", JR.defaultOf "" ), ( "DELETE_FILE", JR.defaultOf "" ), ( "EXIT_COMMAND", JR.defaultOf "" ), ( "EXIT_WITHOUT_PROGRESS_COMMAND", JR.defaultOf "" ), ( "START_COMMAND", JR.defaultOf "" ), ( "CONTINUE_COMMAND", JR.defaultOf "" ), ( "SELECT_COMMAND", JR.defaultOf "" ), ( "FEATURE_UPDATE", JR.defaultOf "" ), ( "BUY_COMMAND", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameCommandsFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GameCommandsFactory" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "TOGGLE_FULLSCREEN" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Toggle FullScreen"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "TOGGLE_KEYBOARD" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Keyboard"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "SET_MENU_DISPLAYABLE" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Set Menu Displayable"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "APPLICATION_UPDATE" "" JR.this (JR.new Command.jnew_4 [ (JR.field "UPDATE" (JR.callStatic CommonStrings.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "DISPLAY_ABOUT" "" JR.this (JR.new Command.jnew_4 [ (JR.field "ABOUT" (JR.callStatic CanvasStrings.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 2) ])),
                JR.exec (JR.setField "OPEN_WEB_URL" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Open Web URL"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 2) ])),
                JR.exec (JR.setField "CLOSE_OPTIONS" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Back"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "DISPLAY_OPTIONS" "" JR.this (JR.new Command.jnew_4 [ (JR.field "OPTIONS" (JR.callStatic CanvasStrings.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 2) ])),
                JR.exec (JR.setField "START_TRACE" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Start Trace"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "STOP_TRACE" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Stop Trace"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "DEFAULT_OPTIONS" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Default"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "SHOW_GAME_CANVAS" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Back to Game"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "CLOSE_AND_SHOW_GAME_CANVAS" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Back"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "QUIT_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Quit"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_STOP, (JR.int 1) ])),
                JR.exec (JR.setField "RESTART_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Restart"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 0) ])),
                JR.exec (JR.setField "DISPLAY_SAVE_FORM" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Save To"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 3) ])),
                JR.exec (JR.setField "SAVE" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Save"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 3) ])),
                JR.exec (JR.setField "DISPLAY_LOAD_FORM" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Load"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 3) ])),
                JR.exec (JR.setField "LOAD_FILE" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Load File"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 3) ])),
                JR.exec (JR.setField "DELETE_FILE" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Delete File"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "EXIT_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Exit"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_EXIT, (JR.int 2) ])),
                JR.exec (JR.setField "EXIT_WITHOUT_PROGRESS_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Exit Without Progress"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_EXIT, (JR.int 2) ])),
                JR.exec (JR.setField "START_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.field "START" (JR.callStatic CommonStrings.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "CONTINUE_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Continue"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "SELECT_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Select"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "FEATURE_UPDATE" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Feature Update"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "BUY_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.str "BUY"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "GameCommandsFactory.instance" "" (JR.new jnew_0 [])) ]) identity, 
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

