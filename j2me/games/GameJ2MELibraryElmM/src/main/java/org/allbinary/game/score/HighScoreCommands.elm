module Org.Allbinary.Game.Score.HighScoreCommands exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Javax.Microedition.Lcdui.Command as Command
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "HighScoreCommands"


jchain : List String
jchain =
    [ "HighScoreCommands" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "DISPLAY", JR.defaultOf "" ), ( "PERSONAL", JR.defaultOf "" ), ( "WORLD", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoreCommands"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "HighScoreCommands" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "DISPLAY" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Scores"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "PERSONAL" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Personal"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
                JR.exec (JR.setField "WORLD" "" JR.this (JR.new Command.jnew_4 [ (JR.str "World"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])),
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

