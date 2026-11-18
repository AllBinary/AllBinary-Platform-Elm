module Org.Allbinary.Game.Configuration.InGameOptionsForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Javax.Microedition.Lcdui.Choice as Choice
import Javax.Microedition.Lcdui.Command as Command
import Org.Allbinary.Graphics.Displayable.Screen.CommandForm as CommandForm
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFormUtil as GameFeatureFormUtil
import Org.Allbinary.Game.Configuration.Feature.InGameFeatureChoiceGroups as InGameFeatureChoiceGroups
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "InGameOptionsForm"


jchain : List String
jchain =
    [ "InGameOptionsForm" ]
        ++ CommandForm.jchain


jfields : List ( String, JR.JValue )
jfields =
    CommandForm.jfields ++ []


jvtable =
    JR.vtable
        [ ( "initCommands_1", jm_initCommands_1 ) ]
        CommandForm.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InGameOptionsForm"
        [ ( "jm_initCommands_1", jm_initCommands_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_DISPLAY", jstatic_DISPLAY ), ( "jstatic_SAVE", jstatic_SAVE ), ( "jstatic_DEFAULT", jstatic_DEFAULT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_DISPLAY : JR.M
jstatic_DISPLAY s =
    JR.static "InGameOptionsForm" jclinit "DISPLAY"
        (JR.new Command.jnew_4 [ (JR.str "Options In Game"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])
        s


jstatic_SAVE : JR.M
jstatic_SAVE s =
    JR.static "InGameOptionsForm" jclinit "SAVE"
        (JR.new Command.jnew_4 [ (JR.str "Save"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])
        s


jstatic_DEFAULT : JR.M
jstatic_DEFAULT s =
    JR.static "InGameOptionsForm" jclinit "DEFAULT"
        (JR.new Command.jnew_4 [ (JR.str "Default"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "title", "" ), ( "backgrounBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CommandForm.jinit_4 JR.this [ (JR.local "commandListener"), (JR.local "title"), (JR.local "backgrounBasicColor"), (JR.local "foregroundBasicColor") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.declare "gameFeatureFormUtil" "" (JR.callStatic GameFeatureFormUtil.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "addChoiceGroup_3" (JR.local "gameFeatureFormUtil") [ JR.this, (JR.invoke "get_0" (JR.callStatic InGameFeatureChoiceGroups.jm_getExclusiveInstance_0 []) []), Choice.jstatic_EXCLUSIVE ]), 
                    JR.exec (JR.invoke "addChoiceGroup_3" (JR.local "gameFeatureFormUtil") [ JR.this, (JR.invoke "get_0" (JR.callStatic InGameFeatureChoiceGroups.jm_getMultipleInstance_0 []) []), Choice.jstatic_MULTIPLE ]), 
                    JR.exec (JR.invoke "initCommands_1" JR.this [ (JR.local "commandListener") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "CLOSE_AND_SHOW_GAME_CANVAS" (JR.callStatic GameCommandsFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ jstatic_DEFAULT ]), 
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

