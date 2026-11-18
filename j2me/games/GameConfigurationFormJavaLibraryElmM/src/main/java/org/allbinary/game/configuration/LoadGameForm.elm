module Org.Allbinary.Game.Configuration.LoadGameForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration
-}

import JR
import Javax.Microedition.Lcdui.Choice as Choice
import Javax.Microedition.Lcdui.ChoiceGroup as ChoiceGroup
import Org.Allbinary.Graphics.Displayable.Screen.CommandForm as CommandForm
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Configuration.Persistance.GamePersistanceSingleton as GamePersistanceSingleton
import JInteger
import Javax.Microedition.Lcdui.LcduiItem as LcduiItem
import Org.Allbinary.MIDPUtil as MIDPUtil
import Javax.Microedition.Lcdui.NullImage as NullImage
import Javax.Microedition.Lcdui.StringItem as StringItem
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "LoadGameForm"


jchain : List String
jchain =
    [ "LoadGameForm" ]
        ++ CommandForm.jchain


jfields : List ( String, JR.JValue )
jfields =
    CommandForm.jfields ++ [ ( "meUtil", JR.defaultOf "" ), ( "areChoices", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "initCommands_1", jm_initCommands_1 )
        , ( "update_0", jm_update_0 )
        , ( "add_3", jm_add_3 )
        , ( "getChoiceGroup_3", jm_getChoiceGroup_3 )
        , ( "getSelectedId_0", jm_getSelectedId_0 )
        , ( "getSelectedText_0", jm_getSelectedText_0 ) ]
        CommandForm.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LoadGameForm"
        [ ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_update_0", jm_update_0 ), ( "jm_add_3", jm_add_3 ), ( "jm_getChoiceGroup_3", jm_getChoiceGroup_3 ), ( "jm_getSelectedId_0", jm_getSelectedId_0 ), ( "jm_getSelectedText_0", jm_getSelectedText_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "title", "" ), ( "backgrounBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CommandForm.jinit_4 JR.this [ (JR.local "commandListener"), (JR.local "title"), (JR.local "backgrounBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "meUtil" "" JR.this (JR.callStatic MIDPUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "update_0" JR.this []), 
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
                    JR.declare "gameCommandsFactory" "" (JR.callStatic GameCommandsFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "LOAD_FILE" (JR.local "gameCommandsFactory")) ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "DELETE_FILE" (JR.local "gameCommandsFactory")) ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "CLOSE_AND_SHOW_GAME_CANVAS" (JR.local "gameCommandsFactory")) ]), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getIds_0" (JR.callStatic GamePersistanceSingleton.jm_getInstance_0 []) []), 
                    JR.exec (JR.invoke "deleteAll_0" JR.this []), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "list") []) (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "add_3" JR.this [ (JR.local "list"), (JR.str "Select A Saved Game"), Choice.jstatic_EXCLUSIVE ]), 
                        JR.exec (JR.setField "areChoices" "Z" JR.this (JR.bool True)) ]) (JR.run [ 
                        JR.exec (JR.invoke "appendItem_2" (JR.thisField "meUtil") [ JR.this, (JR.new StringItem.jnew_3 [ (JR.str "No Saved Games"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), LcduiItem.jstatic_PLAIN ]) ]), 
                        JR.exec (JR.setField "areChoices" "Z" JR.this (JR.bool False)) ]), 
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
                    JR.declare "METHOD_NAME" "" (JR.str "getChoiceGroup"), 
                    JR.declare "ADDING_CHOICE" "" (JR.str "Adding Choice: "), 
                    JR.declare "choiceGroup" "" (JR.new ChoiceGroup.jnew_4 [ (JR.local "name"), (JR.local "option"), (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) []), NullImage.jstatic_NULL_IMAGE_ARRAY ]), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69453 -> (JR.setLocal "index" "I" (JR.lit jwN69453))) JR.increment) ]) (JR.run [ 
                        JR.declare "anyType" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "ADDING_CHOICE") ]) [ (JR.invoke "toString_0" (JR.local "anyType") []) ]) []), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.exec (JR.invoke "append_2" (JR.local "choiceGroup") [ (JR.invoke "toString_0" (JR.local "anyType") []), NullImage.jstatic_NULL_IMAGE ]) ]) ], 
                    JR.return (JR.local "choiceGroup") ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedId_0 : JR.Method
jm_getSelectedId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.ifElse (JR.thisField "areChoices") (JR.run [ 
                        JR.declare "choiceGroup" "" (JR.invoke "get_1" JR.this [ (JR.int 0) ]), 
                        JR.return (JR.invoke "getSelectedIndex_0" (JR.local "choiceGroup") []) ]) (JR.run [ 
                        JR.return (JR.map JR.neg (JR.int 1)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedText_0 : JR.Method
jm_getSelectedText_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.ifElse (JR.thisField "areChoices") (JR.run [ 
                        JR.declare "choiceGroup" "" (JR.invoke "get_1" JR.this [ (JR.int 0) ]), 
                        JR.declare "value" "I" (JR.invoke "intValue_0" (JR.callStatic JInteger.jm_valueOf_1 [ (JR.invoke "getString_1" (JR.local "choiceGroup") [ (JR.invoke "getSelectedIndex_0" (JR.local "choiceGroup") []) ]) ]) []), 
                        JR.return (JR.local "value") ]) (JR.run [ 
                        JR.return (JR.map JR.neg (JR.int 1)) ]) ])
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

