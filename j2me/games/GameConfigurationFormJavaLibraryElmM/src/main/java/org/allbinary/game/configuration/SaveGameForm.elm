module Org.Allbinary.Game.Configuration.SaveGameForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Org.Allbinary.Logic.ABSystemWrapper as ABSystemWrapper
import Org.Allbinary.Graphics.Displayable.Screen.CommandForm as CommandForm
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import JLong
import Org.Allbinary.MIDPUtil as MIDPUtil
import Javax.Microedition.Lcdui.TextField as TextField


jclass : String
jclass =
    "SaveGameForm"


jchain : List String
jchain =
    [ "SaveGameForm" ]
        ++ CommandForm.jchain


jfields : List ( String, JR.JValue )
jfields =
    CommandForm.jfields ++ [ ( "meUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createForm_4", jm_createForm_4 )
        , ( "getInstance_0", jm_getInstance_0 )
        , ( "initCommands_1", jm_initCommands_1 ) ]
        CommandForm.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SaveGameForm"
        [ ( "jm_createForm_4", jm_createForm_4 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_FORM", jstatic_FORM ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_FORM : JR.M
jstatic_FORM s =
    JR.static "SaveGameForm" jclinit "FORM"
        (JR.callStatic CommandForm.jm_getNullCommandForm_0 [])
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "title", "" ), ( "backgrounBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CommandForm.jinit_4 JR.this [ (JR.local "commandListener"), (JR.local "title"), (JR.local "backgrounBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "meUtil" "" JR.this (JR.callStatic MIDPUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.declare "timeString" "" (JR.callStatic JLong.jm_toString_1 [ (JR.invoke "currentTimeMillis_0" (JR.callStatic ABSystemWrapper.jm_getInstance_0 []) []) ]), 
                    JR.exec (JR.invoke "appendItem_2" (JR.thisField "meUtil") [ JR.this, (JR.new TextField.jnew_4 [ (JR.str "Name: "), (JR.local "timeString"), (JR.int 30), TextField.jstatic_ANY ]) ]), 
                    JR.exec (JR.invoke "initCommands_1" JR.this [ (JR.local "commandListener") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_createForm_4 : JR.Method
jm_createForm_4 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "title", "" ), ( "backgrounBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "SaveGameForm.FORM" "" (JR.new jnew_4 [ (JR.local "commandListener"), (JR.local "title"), (JR.local "backgrounBasicColor"), (JR.local "foregroundBasicColor") ])), 
                    JR.return jstatic_FORM ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_FORM ])
        (jregister jheap)
        jthis
        jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameCommandsFactory" "" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "SAVE" (JR.local "gameCommandsFactory")) ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "CLOSE_AND_SHOW_GAME_CANVAS" (JR.local "gameCommandsFactory")) ]), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
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

