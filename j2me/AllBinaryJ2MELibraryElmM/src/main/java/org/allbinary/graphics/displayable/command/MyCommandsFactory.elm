module Org.Allbinary.Graphics.Displayable.Command.MyCommandsFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable.command
-}

import JR
import Javax.Microedition.Lcdui.Command as Command
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "MyCommandsFactory"


jchain : List String
jchain =
    [ "MyCommandsFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NO_COMMAND", JR.defaultOf "" ), ( "GAUGE_CHANGE", JR.defaultOf "" ), ( "SET_DISPLAYABLE", JR.defaultOf "" ), ( "PAUSE_COMMAND", JR.defaultOf "" ), ( "RESUME_COMMAND", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MyCommandsFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "MyCommandsFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NO_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.map JR.neg (JR.int 1)), (JR.map JR.neg (JR.int 1)) ])),
                JR.exec (JR.setField "GAUGE_CHANGE" "" JR.this (JR.new Command.jnew_4 [ (JR.str "GAUGE_CHANGE"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_ITEM, (JR.int 1) ])),
                JR.exec (JR.setField "SET_DISPLAYABLE" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Display"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 2) ])),
                JR.exec (JR.setField "PAUSE_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Pause"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 0) ])),
                JR.exec (JR.setField "RESUME_COMMAND" "" JR.this (JR.new Command.jnew_4 [ (JR.str "Resume"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 0) ])),
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

