module Org.Allbinary.Game.Configuration.GameDifficultyOptions exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Javax.Microedition.Lcdui.Choice as Choice
import Javax.Microedition.Lcdui.ChoiceGroup as ChoiceGroup
import Org.Allbinary.Graphics.Displayable.Screen.CommandForm as CommandForm
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Configuration.Persistance.GameDifficultyFactory as GameDifficultyFactory
import JInteger
import Org.Allbinary.MIDPUtil as MIDPUtil
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameDifficultyOptions"


jchain : List String
jchain =
    [ "GameDifficultyOptions" ]
        ++ CommandForm.jchain


jfields : List ( String, JR.JValue )
jfields =
    CommandForm.jfields ++ [ ( "meUtil", JR.defaultOf "" ), ( "list", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "save_0", jm_save_0 )
        , ( "initCommands_1", jm_initCommands_1 )
        , ( "update_0", jm_update_0 )
        , ( "add_3", jm_add_3 )
        , ( "getChoiceGroup_3", jm_getChoiceGroup_3 )
        , ( "setSelectedId_1", jm_setSelectedId_1 )
        , ( "getSelectedId_0", jm_getSelectedId_0 )
        , ( "getSelectedText_0", jm_getSelectedText_0 ) ]
        CommandForm.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameDifficultyOptions"
        [ ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_save_0", jm_save_0 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_update_0", jm_update_0 ), ( "jm_add_3", jm_add_3 ), ( "jm_getChoiceGroup_3", jm_getChoiceGroup_3 ), ( "jm_setSelectedId_1", jm_setSelectedId_1 ), ( "jm_getSelectedId_0", jm_getSelectedId_0 ), ( "jm_getSelectedText_0", jm_getSelectedText_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "title", "" ), ( "list", "" ), ( "backgrounBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CommandForm.jinit_4 JR.this [ (JR.local "commandListener"), (JR.local "title"), (JR.local "backgrounBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "meUtil" "" JR.this (JR.callStatic MIDPUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.setField "list" "" JR.this (JR.local "list")), 
                    JR.exec (JR.invoke "update_0" JR.this []), 
                    JR.exec (JR.invoke "initCommands_1" JR.this [ (JR.local "commandListener") ]), 
                    JR.declare "gameDifficultyFactory" "" (JR.callStatic GameDifficultyFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "setSelectedId_1" JR.this [ (JR.invoke "getLevel_0" (JR.local "gameDifficultyFactory") []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia CommandForm.jvtable "open_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia CommandForm.jvtable "close_0" JR.this []), 
                    JR.exec (JR.invoke "save_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_save_0 : JR.Method
jm_save_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "gameDifficultyFactory" "" (JR.callStatic GameDifficultyFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "setLevel_1" (JR.local "gameDifficultyFactory") [ (JR.invoke "getSelectedId_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.declare "gameCommandsFactory" "" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "CLOSE_AND_SHOW_GAME_CANVAS" (JR.local "gameCommandsFactory")) ]), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "deleteAll_0" JR.this []), 
                    JR.exec (JR.invoke "add_3" JR.this [ (JR.thisField "list"), (JR.str "Difficulty"), Choice.jstatic_EXCLUSIVE ]), 
                    JR.exec (JR.callVia CommandForm.jvtable "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_add_3 : JR.Method
jm_add_3 jheap jthis jargs =
    JR.method [ ( "list", "" ), ( "name", "" ), ( "option", "I" ) ] ""
        (JR.run [ 
                    JR.declare "choiceGroup" "" (JR.invoke "getChoiceGroup_3" JR.this [ (JR.local "list"), (JR.local "name"), (JR.local "option") ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "list") []) (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setSelectedIndex_2" (JR.local "choiceGroup") [ (JR.int 0), (JR.bool True) ]) ]) identity, 
                    JR.exec (JR.invoke "appendItem_2" (JR.thisField "meUtil") [ JR.this, (JR.local "choiceGroup") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getChoiceGroup_3 : JR.Method
jm_getChoiceGroup_3 jheap jthis jargs =
    JR.method [ ( "list", "" ), ( "name", "" ), ( "option", "I" ) ] ""
        (JR.run [ 
                    JR.declare "METHOD_NAME" "" (JR.str "addChoiceGroup"), 
                    JR.declare "NAME" "" (JR.str "Adding Choice: "), 
                    JR.declare "choiceGroup" "" (JR.new ChoiceGroup.jnew_4 [ (JR.local "name"), (JR.local "option"), (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) []), NullImage.jstatic_NULL_IMAGE_ARRAY ]), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.declare "anyType" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69218 -> (JR.setLocal "index" "I" (JR.lit jwN69218))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "anyType" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "NAME") ]) [ (JR.invoke "toString_0" (JR.local "anyType") []) ]) []), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.exec (JR.invoke "append_2" (JR.local "choiceGroup") [ (JR.invoke "toString_0" (JR.local "anyType") []), NullImage.jstatic_NULL_IMAGE ]) ]) ], 
                    JR.return (JR.local "choiceGroup") ])
        (jregister jheap)
        jthis
        jargs


jm_setSelectedId_1 : JR.Method
jm_setSelectedId_1 jheap jthis jargs =
    JR.method [ ( "id", "I" ) ] ""
        (JR.run [ 
                    JR.declare "choiceGroup" "" (JR.invoke "get_1" JR.this [ (JR.int 0) ]), 
                    JR.exec (JR.invoke "setSelectedIndex_2" (JR.local "choiceGroup") [ (JR.local "id"), (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedId_0 : JR.Method
jm_getSelectedId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "choiceGroup" "" (JR.invoke "get_1" JR.this [ (JR.int 0) ]), 
                    JR.return (JR.invoke "getSelectedIndex_0" (JR.local "choiceGroup") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedText_0 : JR.Method
jm_getSelectedText_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "choiceGroup" "" (JR.invoke "get_1" JR.this [ (JR.int 0) ]), 
                    JR.declare "value" "I" (JR.invoke "intValue_0" (JR.callStatic JInteger.jm_valueOf_1 [ (JR.invoke "getString_1" (JR.local "choiceGroup") [ (JR.invoke "getSelectedIndex_0" (JR.local "choiceGroup") []) ]) ]) []), 
                    JR.return (JR.local "value") ])
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

