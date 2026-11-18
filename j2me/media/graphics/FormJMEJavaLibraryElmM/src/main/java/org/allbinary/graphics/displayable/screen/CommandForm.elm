module Org.Allbinary.Graphics.Displayable.Screen.CommandForm exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable.screen
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.String.CommonStrings as CommonStrings
import Javax.Microedition.Lcdui.Form as Form
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Displayable.Canvas.MenuListener as MenuListener
import Org.Allbinary.Graphics.Displayable.Command.MyCommandInterface as MyCommandInterface
import Javax.Microedition.Lcdui.NullCommandListener as NullCommandListener
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.Displayable.Screen.ScreenRepaintProcessorFactory as ScreenRepaintProcessorFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "CommandForm"


jchain : List String
jchain =
    [ "CommandForm" ]
        ++ Form.jchain
        ++ MyCommandInterface.jchain
        ++ MenuListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    Form.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "repaintProcessor", JR.defaultOf "" ), ( "commandStack", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getNullCommandForm_0", jm_getNullCommandForm_0 )
        , ( "initCommands_1", jm_initCommands_1 )
        , ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "update_0", jm_update_0 )
        , ( "getSourceId_0", jm_getSourceId_0 )
        , ( "addCommand_1", jm_addCommand_1 )
        , ( "removeAllCommands_0", jm_removeAllCommands_0 ) ]
        Form.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CommandForm"
        [ ( "jm_getNullCommandForm_0", jm_getNullCommandForm_0 ), ( "jm_initCommands_1", jm_initCommands_1 ), ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_getSourceId_0", jm_getSourceId_0 ), ( "jm_addCommand_1", jm_addCommand_1 ), ( "jm_removeAllCommands_0", jm_removeAllCommands_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        [ ( "jstatic_NULL_COMMAND_FORM", jstatic_NULL_COMMAND_FORM ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_COMMAND_FORM : JR.M
jstatic_NULL_COMMAND_FORM s =
    JR.static "CommandForm" jclinit "NULL_COMMAND_FORM"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "commandListener", "" ), ( "formTitle", "" ), ( "backgrounBasicColor", "" ), ( "foregroundBasicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Form.jinit_1 JR.this [ (JR.local "formTitle") ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "repaintProcessor" "" JR.this (JR.invoke "create_1" (JR.callStatic ScreenRepaintProcessorFactory.jm_getInstance_0 []) [ JR.this ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "commandStack" "" JR.this (JR.invoke "createStack_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])), 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "process_0" (JR.thisField "repaintProcessor") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getNullCommandForm_0 : JR.Method
jm_getNullCommandForm_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_COMMAND_FORM (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "CommandForm.NULL_COMMAND_FORM" "" (JR.new jnew_4 [ NullCommandListener.jstatic_NULL_COMMAND_LISTENER, (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])) ]) identity, 
                    JR.return jstatic_NULL_COMMAND_FORM ])
        (jregister jheap)
        jthis
        jargs


jm_initCommands_1 : JR.Method
jm_initCommands_1 jheap jthis jargs =
    JR.method [ ( "cmdListener", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.str "open") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CLOSE" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_0" (JR.thisField "repaintProcessor") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSourceId_0 : JR.Method
jm_getSourceId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_addCommand_1 : JR.Method
jm_addCommand_1 jheap jthis jargs =
    JR.method [ ( "command", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "push_1" (JR.thisField "commandStack") [ (JR.local "command") ]), 
                    JR.exec (JR.callVia Form.jvtable "addCommand_1" JR.this [ (JR.local "command") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAllCommands_0 : JR.Method
jm_removeAllCommands_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "commandStack") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68671 -> (JR.setLocal "index" "I" (JR.lit jwN68671))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.callVia Form.jvtable "removeCommand_1" JR.this [ (JR.invoke "pop_0" (JR.thisField "commandStack") []) ]) ]) ] ])
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

