module Org.Allbinary.Game.Displayable.Canvas.GameInputMappingCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Paint.ColorFillPaintableFactory as ColorFillPaintableFactory
import Javax.Microedition.Lcdui.Command as Command
import Org.Allbinary.Game.Displayable.Canvas.GameCommandCanvas as GameCommandCanvas
import Org.Allbinary.Game.Commands.GameCommandsFactory as GameCommandsFactory
import Org.Allbinary.Game.Displayable.Canvas.GameInputMappingInstructionsCanvas as GameInputMappingInstructionsCanvas
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Game.Input.Mapping.InputMappingInterface as InputMappingInterface
import JInteger
import Org.Allbinary.Game.Input.PlatformInputMappingFactory as PlatformInputMappingFactory
import Org.Allbinary.Graphics.Paint.ProcessPaintable as ProcessPaintable
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameInputMappingCanvas"


jchain : List String
jchain =
    [ "GameInputMappingCanvas" ]
        ++ GameCommandCanvas.jchain
        ++ InputMappingInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameCommandCanvas.jfields ++ [ ( "paintable", JR.defaultOf "" ), ( "helpPaintable", JR.defaultOf "" ), ( "colorFillPaintable", JR.defaultOf "" ), ( "inputMapping", JR.defaultOf "" ), ( "NONE", JR.defaultOf "" ), ( "abeClientInformation", JR.defaultOf "" ), ( "selectedGameKey", JR.defaultOf "" ), ( "selectedInput", JR.defaultOf "" ), ( "inputFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "close_0", jm_close_0 )
        , ( "initCommands_1", jm_initCommands_1 )
        , ( "keyPressed_1", jm_keyPressed_1 )
        , ( "keyReleased_1", jm_keyReleased_1 )
        , ( "keyRepeated_1", jm_keyRepeated_1 )
        , ( "keyPressedByDevice_2", jm_keyPressedByDevice_2 )
        , ( "addGameKey_2", jm_addGameKey_2 )
        , ( "processInputMapping_2", jm_processInputMapping_2 )
        , ( "setSelectedAction_1", jm_setSelectedAction_1 )
        , ( "gameActionCrud_2", jm_gameActionCrud_2 )
        , ( "addNewMapping_2", jm_addNewMapping_2 )
        , ( "deleteCurrentMapping_0", jm_deleteCurrentMapping_0 )
        , ( "setDefault_0", jm_setDefault_0 )
        , ( "update_0", jm_update_0 )
        , ( "paint_1", jm_paint_1 ) ]
        GameCommandCanvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInputMappingCanvas"
        [ ( "jm_close_0", jm_close_0 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_keyPressed_1", jm_keyPressed_1 ), ( "jm_keyReleased_1", jm_keyReleased_1 ), ( "jm_keyRepeated_1", jm_keyRepeated_1 ), ( "jm_keyPressedByDevice_2", jm_keyPressedByDevice_2 ), ( "jm_addGameKey_2", jm_addGameKey_2 ), ( "jm_processInputMapping_2", jm_processInputMapping_2 ), ( "jm_setSelectedAction_1", jm_setSelectedAction_1 ), ( "jm_gameActionCrud_2", jm_gameActionCrud_2 ), ( "jm_addNewMapping_2", jm_addNewMapping_2 ), ( "jm_deleteCurrentMapping_0", jm_deleteCurrentMapping_0 ), ( "jm_setDefault_0", jm_setDefault_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_DISPLAY", jstatic_DISPLAY ), ( "jstatic_DEFAULT", jstatic_DEFAULT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "GameInputMappingCanvas" jclinit "NAME"
        (JR.str "GameInputMappingCanvas")
        s


jstatic_DISPLAY : JR.M
jstatic_DISPLAY s =
    JR.static "GameInputMappingCanvas" jclinit "DISPLAY"
        (JR.new Command.jnew_4 [ (JR.str "Controls"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 2) ])
        s


jstatic_DEFAULT : JR.M
jstatic_DEFAULT s =
    JR.static "GameInputMappingCanvas" jclinit "DEFAULT"
        (JR.new Command.jnew_4 [ (JR.str "Default"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 2) ])
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "commandListener", "" ), ( "allBinaryGameLayerManager", "" ), ( "helpPaintable", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameCommandCanvas.jinit_4 JR.this [ (JR.local "commandListener"), jstatic_NAME, (JR.invoke "getBackgroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []), (JR.invoke "getForegroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []) ]),
                JR.exec (JR.setField "NONE" "" JR.this (JR.field "NONE" (JR.callStatic GameKeyFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "selectedGameKey" "" JR.this (JR.thisField "NONE")),
                JR.exec (JR.setField "selectedInput" "" JR.this (JR.thisField "NONE")),
                JR.exec (JR.setField "inputFactory" "" JR.this (JR.callStatic InputFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "helpPaintable") JR.null) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Help Paintable Exception") ]) ]) identity, 
                    JR.exec (JR.setField "abeClientInformation" "" JR.this (JR.local "abeClientInformation")), 
                    JR.exec (JR.setField "helpPaintable" "" JR.this (JR.local "helpPaintable")), 
                    JR.exec (JR.setField "inputMapping" "" JR.this (JR.invoke "getPersistentInputMappingInstance_0" (JR.callStatic PlatformInputMappingFactory.jm_getInstance_0 []) [])), 
                    JR.exec (JR.setField "paintable" "" JR.this (JR.new ProcessPaintable.jnew_0 [])), 
                    JR.exec (JR.setField "colorFillPaintable" "" JR.this (JR.invoke "getInstance_2" (JR.callStatic ColorFillPaintableFactory.jm_getInstance_0 []) [ (JR.invoke "getBackgroundBasicColor_0" (JR.local "allBinaryGameLayerManager") []), (JR.bool False) ])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia GameCommandCanvas.jvtable "close_0" JR.this []), 
                    JR.exec (JR.invoke "process_0" (JR.thisField "paintable") []), 
                    JR.exec (JR.setField "selectedGameKey" "" JR.this (JR.thisField "NONE")), 
                    JR.exec (JR.setField "selectedInput" "" JR.this (JR.thisField "NONE")), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "CLOSE_AND_SHOW_GAME_CANVAS" (JR.callStatic GameCommandsFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ jstatic_DEFAULT ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ GameInputMappingInstructionsCanvas.jstatic_DISPLAY ]), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyPressed_1 : JR.Method
jm_keyPressed_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "keyPressedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyReleased_1 : JR.Method
jm_keyReleased_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "keyReleasedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyRepeated_1 : JR.Method
jm_keyRepeated_1 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "keyRepeatedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_keyPressedByDevice_2 : JR.Method
jm_keyPressedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addGameKey_2" JR.this [ (JR.local "keyCode"), (JR.bool False) ]), 
                    JR.exec (JR.callVia GameCommandCanvas.jvtable "keyPressedByDevice_2" JR.this [ (JR.local "keyCode"), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addGameKey_2 : JR.Method
jm_addGameKey_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "repeated", "Z" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Raw Device Key Code: ") ]) [ (JR.callStatic JInteger.jm_toHexString_1 [ (JR.local "keyCode") ]) ]) []), JR.this, (JR.field "ADD_KEY_EVENT" (JR.thisField "gameInputStrings")) ]), 
                        JR.declare "gameKey" "" (JR.invoke "getInstanceForCanvas_2" (JR.thisField "inputToGameKeyMapping") [ JR.this, (JR.local "keyCode") ]), 
                        JR.declare "input" "" (JR.invoke "getInstanceById_1" (JR.thisField "inputFactory") [ (JR.local "keyCode") ]), 
                        JR.exec (JR.invoke "processInputMapping_2" JR.this [ (JR.local "gameKey"), (JR.local "input") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Key Event Error"), JR.this, (JR.field "ADD_KEY_EVENT" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_processInputMapping_2 : JR.Method
jm_processInputMapping_2 jheap jthis jargs =
    JR.method [ ( "gameKey", "" ), ( "input", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Start Passed GameKey: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "gameKey") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Input: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "input") ]) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "PROCESS" (JR.thisField "commonStrings")) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "selectedGameKey") (JR.thisField "NONE")) (JR.run [ 
                        JR.exec (JR.invoke "gameActionCrud_2" JR.this [ (JR.local "gameKey"), (JR.local "input") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setSelectedAction_1" JR.this [ (JR.local "gameKey") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setSelectedAction_1 : JR.Method
jm_setSelectedAction_1 jheap jthis jargs =
    JR.method [ ( "gameKey", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Selected GameKey: ") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "gameKey") ]) ]) []), JR.this, (JR.str "setSelectedAction") ]), 
                    JR.exec (JR.setField "selectedGameKey" "" JR.this (JR.local "gameKey")), 
                    JR.exec (JR.setField "selectedInput" "" JR.this (JR.thisField "NONE")), 
                    JR.exec (JR.invoke "update_2" (JR.thisField "helpPaintable") [ (JR.thisField "selectedGameKey"), (JR.thisField "selectedInput") ]), 
                    JR.exec (JR.invoke "onChangeRepaint_1" (JR.thisField "repaintBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_gameActionCrud_2 : JR.Method
jm_gameActionCrud_2 jheap jthis jargs =
    JR.method [ ( "gameKey", "" ), ( "input", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Start GameKey: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "selectedGameKey") ]) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Input: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "selectedInput") ]) ]), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "gameActionCrud") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "selectedInput") (JR.thisField "NONE")) (JR.run [ 
                        JR.declare "list" "" (JR.invoke "getMappedInput_1" (JR.invoke "getInputMapping_0" (JR.thisField "inputMapping") []) [ (JR.thisField "selectedGameKey") ]), 
                        JR.declare "isInputAlreadyMappedToSelectedAction" "Z" (JR.invoke "contains_1" (JR.local "list") [ (JR.local "input") ]), 
                        JR.ifElse (JR.local "isInputAlreadyMappedToSelectedAction") (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Already Mapped Input: ") ]) [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.local "input") ]) ]) []), JR.this, (JR.str "gameActionCrud") ]), 
                            JR.exec (JR.setField "selectedInput" "" JR.this (JR.local "input")), 
                            JR.exec (JR.invoke "update_2" (JR.thisField "helpPaintable") [ (JR.thisField "selectedGameKey"), (JR.thisField "selectedInput") ]), 
                            JR.exec (JR.invoke "onChangeRepaint_1" (JR.thisField "repaintBehavior") [ JR.this ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "addNewMapping_2" JR.this [ (JR.local "gameKey"), (JR.local "input") ]) ]) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isDelete_1" (JR.thisField "inputMapping") [ (JR.local "input") ]) (JR.run [ 
                        JR.exec (JR.invoke "deleteCurrentMapping_0" JR.this []) ]) (JR.run [ 
                        JR.exec (JR.invoke "setSelectedAction_1" JR.this [ (JR.local "gameKey") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addNewMapping_2 : JR.Method
jm_addNewMapping_2 jheap jthis jargs =
    JR.method [ ( "gameKey", "" ), ( "input", "" ) ] ""
        (JR.run [ 
                    JR.declare "METHOD_NAME" "" (JR.str "addNewMapping"), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.local "METHOD_NAME") ]), 
                    JR.declare "isInputAlreadyMapped" "Z" (JR.invoke "isMapped_1" (JR.invoke "getInputMapping_0" (JR.thisField "inputMapping") []) [ (JR.local "input") ]), 
                    JR.ifElse (JR.and (JR.map JR.not_ (JR.local "isInputAlreadyMapped")) (JR.map JR.not_ (JR.invoke "isSystemInput_1" (JR.thisField "inputMapping") [ (JR.local "input") ]))) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Add Key Mapping : GameKey: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "selectedGameKey") ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Input: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "selectedInput") ]) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.exec (JR.invoke "add_2" (JR.invoke "getInputMapping_0" (JR.thisField "inputMapping") []) [ (JR.thisField "selectedGameKey"), (JR.local "input") ]), 
                        JR.exec (JR.setField "selectedInput" "" JR.this (JR.local "input")), 
                        JR.exec (JR.invoke "update_0" JR.this []) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to"), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.exec (JR.invoke "setSelectedAction_1" JR.this [ (JR.local "gameKey") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_deleteCurrentMapping_0 : JR.Method
jm_deleteCurrentMapping_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "METHOD_NAME" "" (JR.str "deleteCurrentMapping"), 
                    JR.declare "list" "" (JR.invoke "getMappedInput_1" (JR.invoke "getInputMapping_0" (JR.thisField "inputMapping") []) [ (JR.thisField "selectedGameKey") ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "size_0" (JR.local "list") []) (JR.int 1)) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Start GameKey: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Remove Key Mapping: GameKey: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "selectedGameKey") ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Input: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_1" (JR.thisField "stringUtil") [ (JR.thisField "selectedInput") ]) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.exec (JR.invoke "remove_2" (JR.invoke "getInputMapping_0" (JR.thisField "inputMapping") []) [ (JR.thisField "selectedGameKey"), (JR.thisField "selectedInput") ]), 
                        JR.exec (JR.setField "selectedInput" "" JR.this (JR.thisField "NONE")), 
                        JR.exec (JR.invoke "update_0" JR.this []) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Can't Remove Last Key Mapping"), JR.this, (JR.local "METHOD_NAME") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setDefault_0 : JR.Method
jm_setDefault_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setDefault_1" (JR.thisField "inputMapping") [ (JR.thisField "abeClientInformation") ]), 
                    JR.exec (JR.invoke "update_2" (JR.thisField "helpPaintable") [ (JR.thisField "NONE"), (JR.thisField "NONE") ]), 
                    JR.exec (JR.invoke "onChangeRepaint_1" (JR.thisField "repaintBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "update_1" (JR.thisField "inputMapping") [ (JR.thisField "abeClientInformation") ]), 
                    JR.exec (JR.invoke "update_2" (JR.thisField "helpPaintable") [ (JR.thisField "selectedGameKey"), (JR.thisField "selectedInput") ]), 
                    JR.exec (JR.invoke "onChangeRepaint_1" (JR.thisField "repaintBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "colorFillPaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "helpPaintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "paintable") [ (JR.local "graphics") ]), 
                    JR.exec (JR.callVia GameCommandCanvas.jvtable "paint_1" JR.this [ (JR.local "graphics") ]) ])
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

