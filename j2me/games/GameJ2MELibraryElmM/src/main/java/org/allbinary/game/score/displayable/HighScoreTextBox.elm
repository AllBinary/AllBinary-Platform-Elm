module Org.Allbinary.Game.Score.Displayable.HighScoreTextBox exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score.displayable
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Form.Item.CustomTextBox as CustomTextBox
import Javax.Microedition.Lcdui.Font as Font
import Org.Allbinary.Game.Score.Displayable.HighScoreUtil as HighScoreUtil
import Org.Allbinary.Logic.System.Security.Licensing.InApplicationPurchaseFactory as InApplicationPurchaseFactory
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Logic.System.Os.OperatingSystemFactory as OperatingSystemFactory
import Org.Allbinary.PostGameCommandFactory as PostGameCommandFactory
import Org.Allbinary.Graphics.Paint.SimpleTextPaintable as SimpleTextPaintable
import Javax.Microedition.Lcdui.TextField as TextField
import Org.Allbinary.Input.Event.VirtualKeyboardEventHandler as VirtualKeyboardEventHandler


jclass : String
jclass =
    "HighScoreTextBox"


jchain : List String
jchain =
    [ "HighScoreTextBox" ]
        ++ CustomTextBox.jchain


jfields : List ( String, JR.JValue )
jfields =
    CustomTextBox.jfields ++ [ ( "virtualKeyboardEventHandler", JR.defaultOf "" ), ( "highScoreUtil", JR.defaultOf "" ), ( "pleaseWait", JR.defaultOf "" ), ( "paintable", JR.defaultOf "" ), ( "submitted", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "initCommands_1", jm_initCommands_1 )
        , ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "update_0", jm_update_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "saveHighScore_0", jm_saveHighScore_0 )
        , ( "submit_0", jm_submit_0 ) ]
        CustomTextBox.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoreTextBox"
        [ ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_saveHighScore_0", jm_saveHighScore_0 ), ( "jm_submit_0", jm_submit_0 ), ( "jnew_9", jnew_9 ), ( "jinit_9", jinit_9 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_9 : JR.Method
jinit_9 jheap jthis jargs =
    JR.method [ ( "highScoresFactoryInterface", "" ), ( "highScoresHelper", "" ), ( "abeClientInformation", "" ), ( "gameInfo", "" ), ( "cmdListener", "" ), ( "name", "" ), ( "highScore", "" ), ( "backgrounBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CustomTextBox.jinit_8 JR.this [ (JR.local "cmdListener"), (JR.str "New High Score Enter Name:"), (JR.local "name"), (JR.int 12), TextField.jstatic_ANY, (JR.callStatic Font.jm_getDefaultFont_0 []), (JR.local "backgrounBasicColor"), (JR.local "foregroundBasicColor") ]),
                JR.exec (JR.setField "virtualKeyboardEventHandler" "" JR.this (JR.callStatic VirtualKeyboardEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "pleaseWait" "" JR.this (JR.new SimpleTextPaintable.jnew_2 [ (JR.field "PLEASE_WAIT" (JR.thisField "commonStrings")), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])),
                JR.exec (JR.setField "paintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                JR.exec (JR.setField "submitted" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "highScoreUtil" "" JR.this (JR.new HighScoreUtil.jnew_7 [ (JR.local "highScoresFactoryInterface"), (JR.local "highScoresHelper"), (JR.local "abeClientInformation"), (JR.local "gameInfo"), (JR.local "cmdListener"), (JR.local "name"), (JR.local "highScore") ])), 
                    JR.declare "operatingSystemInterface" "" (JR.invoke "getOperatingSystemInstance_0" (JR.callStatic OperatingSystemFactory.jm_getInstance_0 []) []), 
                    JR.ifElse (JR.invoke "isOverScan_0" (JR.local "operatingSystemInterface") []) (JR.run [ 
                        JR.declare "username" "" (JR.invoke "getUserName_0" (JR.callStatic InApplicationPurchaseFactory.jm_getInstance_0 []) []), 
                        JR.exec (JR.invoke "setString_1" (JR.invoke "getTextFieldItem_0" JR.this []) [ (JR.local "username") ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_9 : JR.Method
jnew_9 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_9 jheap jthis jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeAllCommands_0" JR.this []), 
                    JR.exec (JR.invoke "addCommands_1" (JR.callStatic PostGameCommandFactory.jm_getInstance_0 []) [ JR.this ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND ]), 
                    JR.exec (JR.invoke "setCommandListener_1" JR.this [ (JR.local "cmdListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "open_0" (JR.thisField "virtualKeyboardEventHandler") []), 
                    JR.exec (JR.setField "paintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])), 
                    JR.exec (JR.callVia CustomTextBox.jvtable "open_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "close_0" (JR.thisField "virtualKeyboardEventHandler") []), 
                    JR.exec (JR.setField "paintable" "" JR.this (JR.thisField "pleaseWait")), 
                    JR.exec (JR.invoke "onChangeRepaint_1" (JR.thisField "repaintBehavior") [ JR.this ]), 
                    JR.exec (JR.callVia CustomTextBox.jvtable "close_0" JR.this []), 
                    JR.exec (JR.invoke "removeCommand_1" JR.this [ HighScoreUtil.jstatic_SUBMIT_TEXTBOX_COMMAND ]), 
                    JR.exec (JR.invoke "update_0" JR.this []), 
                    JR.ifElse (JR.thisField "submitted") (JR.run [ 
                        JR.exec (JR.invoke "saveHighScore_0" (JR.thisField "highScoreUtil") []) ]) identity, 
                    JR.exec (JR.setField "paintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])), 
                    JR.exec (JR.invoke "onChangeRepaint_1" (JR.thisField "repaintBehavior") [ JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "name" "" (JR.invoke "getString_0" (JR.invoke "getTextFieldItem_0" JR.this []) []), 
                    JR.exec (JR.invoke "update_1" (JR.thisField "highScoreUtil") [ (JR.local "name") ]), 
                    JR.exec (JR.callVia CustomTextBox.jvtable "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia CustomTextBox.jvtable "paint_1" JR.this [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "paintable") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_saveHighScore_0 : JR.Method
jm_saveHighScore_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "saveHighScore_0" (JR.thisField "highScoreUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_submit_0 : JR.Method
jm_submit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "submit_1" (JR.thisField "highScoreUtil") [ JR.this ]) ])
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

