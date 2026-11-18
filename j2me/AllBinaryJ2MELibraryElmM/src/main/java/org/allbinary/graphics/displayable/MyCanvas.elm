module Org.Allbinary.Graphics.Displayable.MyCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable
-}

import JR
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Graphics.Displayable.CanvasStrings as CanvasStrings
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.Displayable.DisplayableInterface as DisplayableInterface
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Displayable.Command.MyCommandInterface as MyCommandInterface
import Org.Allbinary.Graphics.Displayable.Command.MyCommandsFactory as MyCommandsFactory
import Javax.Microedition.Lcdui.NullCommandListener as NullCommandListener
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Input.TouchJ2ME as TouchJ2ME


jclass : String
jclass =
    "MyCanvas"


jchain : List String
jchain =
    [ "MyCanvas" ]
        ++ Canvas.jchain
        ++ DisplayableInterface.jchain
        ++ MyCommandInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Canvas.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "canvasStrings", JR.defaultOf "" ), ( "stringUtil", JR.defaultOf "" ), ( "displayInfo", JR.defaultOf "" ), ( "name", JR.defaultOf "" ), ( "childNameList", JR.defaultOf "" ), ( "commandStack", JR.defaultOf "" ), ( "commandListener", JR.defaultOf "" ), ( "paused", JR.defaultOf "Z" ), ( "touchME", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getWidth_0", jm_getWidth_0 )
        , ( "getHeight_0", jm_getHeight_0 )
        , ( "setFullScreenMode_1", jm_setFullScreenMode_1 )
        , ( "sizeChanged_2", jm_sizeChanged_2 )
        , ( "getCommandStack_0", jm_getCommandStack_0 )
        , ( "isCommand_1", jm_isCommand_1 )
        , ( "addCommand_1", jm_addCommand_1 )
        , ( "removeCommand_1", jm_removeCommand_1 )
        , ( "removeAllCommands_0", jm_removeAllCommands_0 )
        , ( "setCommandListener_1", jm_setCommandListener_1 )
        , ( "getCustomCommandListener_0", jm_getCustomCommandListener_0 )
        , ( "isPaused_0", jm_isPaused_0 )
        , ( "removePauseCommand_0", jm_removePauseCommand_0 )
        , ( "pause_0", jm_pause_0 )
        , ( "unPause_0", jm_unPause_0 )
        , ( "process_0", jm_process_0 )
        , ( "paint_1", jm_paint_1 )
        , ( "draw_1", jm_draw_1 )
        , ( "hasChild_1", jm_hasChild_1 )
        , ( "destroy_0", jm_destroy_0 )
        , ( "setPaused_1", jm_setPaused_1 )
        , ( "keyPressedByDevice_2", jm_keyPressedByDevice_2 )
        , ( "keyRepeatedByDevice_2", jm_keyRepeatedByDevice_2 )
        , ( "keyReleasedByDevice_2", jm_keyReleasedByDevice_2 )
        , ( "pointerDragged_2", jm_pointerDragged_2 )
        , ( "pointerPressed_2", jm_pointerPressed_2 )
        , ( "pointerReleased_2", jm_pointerReleased_2 )
        , ( "nextSong_3", jm_nextSong_3 ) ]
        Canvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MyCanvas"
        [ ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jm_setFullScreenMode_1", jm_setFullScreenMode_1 ), ( "jm_sizeChanged_2", jm_sizeChanged_2 ), ( "jm_getCommandStack_0", jm_getCommandStack_0 ), ( "jm_isCommand_1", jm_isCommand_1 ), ( "jm_addCommand_1", jm_addCommand_1 ), ( "jm_removeCommand_1", jm_removeCommand_1 ), ( "jm_removeAllCommands_0", jm_removeAllCommands_0 ), ( "jm_setCommandListener_1", jm_setCommandListener_1 ), ( "jm_getCustomCommandListener_0", jm_getCustomCommandListener_0 ), ( "jm_isPaused_0", jm_isPaused_0 ), ( "jm_removePauseCommand_0", jm_removePauseCommand_0 ), ( "jm_pause_0", jm_pause_0 ), ( "jm_unPause_0", jm_unPause_0 ), ( "jm_process_0", jm_process_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_draw_1", jm_draw_1 ), ( "jm_hasChild_1", jm_hasChild_1 ), ( "jm_destroy_0", jm_destroy_0 ), ( "jm_setPaused_1", jm_setPaused_1 ), ( "jm_keyPressedByDevice_2", jm_keyPressedByDevice_2 ), ( "jm_keyRepeatedByDevice_2", jm_keyRepeatedByDevice_2 ), ( "jm_keyReleasedByDevice_2", jm_keyReleasedByDevice_2 ), ( "jm_pointerDragged_2", jm_pointerDragged_2 ), ( "jm_pointerPressed_2", jm_pointerPressed_2 ), ( "jm_pointerReleased_2", jm_pointerReleased_2 ), ( "jm_nextSong_3", jm_nextSong_3 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "childNameList", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Canvas.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "canvasStrings" "" JR.this (JR.callStatic CanvasStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "stringUtil" "" JR.this (JR.callStatic StringUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "displayInfo" "" JR.this (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 [])),
                JR.exec (JR.setField "commandListener" "" JR.this NullCommandListener.jstatic_NULL_COMMAND_LISTENER),
                JR.exec (JR.setField "touchME" "" JR.this (JR.new TouchJ2ME.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]), 
                    JR.exec (JR.invoke "update_2" (JR.thisField "displayInfo") [ JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "canvasStrings")) ]), 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")), 
                    JR.exec (JR.setField "childNameList" "" JR.this (JR.local "childNameList")), 
                    JR.exec (JR.setField "commandStack" "" JR.this (JR.invoke "createStack_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia Canvas.jvtable "getWidth_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.callVia Canvas.jvtable "getHeight_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setFullScreenMode_1 : JR.Method
jm_setFullScreenMode_1 jheap jthis jargs =
    JR.method [ ( "mode", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia Canvas.jvtable "setFullScreenMode_1" JR.this [ (JR.local "mode") ]), 
                    JR.exec (JR.invoke "update_2" (JR.thisField "displayInfo") [ JR.this, (JR.field "SET_FULL_SCREEN_MODE" (JR.thisField "canvasStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_sizeChanged_2 : JR.Method
jm_sizeChanged_2 jheap jthis jargs =
    JR.method [ ( "w", "I" ), ( "h", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "update_2" (JR.thisField "displayInfo") [ JR.this, (JR.field "SIZE_CHANGED" (JR.thisField "canvasStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getCommandStack_0 : JR.Method
jm_getCommandStack_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "commandStack") ])
        (jregister jheap)
        jthis
        jargs


jm_isCommand_1 : JR.Method
jm_isCommand_1 jheap jthis jargs =
    JR.method [ ( "command", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "contains_1" (JR.thisField "commandStack") [ (JR.local "command") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addCommand_1 : JR.Method
jm_addCommand_1 jheap jthis jargs =
    JR.method [ ( "command", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "commandStack") [ (JR.local "command") ])) (JR.run [ 
                        JR.exec (JR.invoke "push_1" (JR.thisField "commandStack") [ (JR.local "command") ]), 
                        JR.exec (JR.callVia Canvas.jvtable "addCommand_1" JR.this [ (JR.local "command") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_removeCommand_1 : JR.Method
jm_removeCommand_1 jheap jthis jargs =
    JR.method [ ( "command", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeElement_1" (JR.thisField "commandStack") [ (JR.local "command") ]), 
                    JR.exec (JR.callVia Canvas.jvtable "removeCommand_1" JR.this [ (JR.local "command") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeAllCommands_0 : JR.Method
jm_removeAllCommands_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "commandStack") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70066 -> (JR.setLocal "index" "I" (JR.lit jwN70066))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.callVia Canvas.jvtable "removeCommand_1" JR.this [ (JR.invoke "pop_0" (JR.thisField "commandStack") []) ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_setCommandListener_1 : JR.Method
jm_setCommandListener_1 jheap jthis jargs =
    JR.method [ ( "l", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia Canvas.jvtable "setCommandListener_1" JR.this [ (JR.local "l") ]), 
                    JR.exec (JR.setField "commandListener" "" JR.this (JR.local "l")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCustomCommandListener_0 : JR.Method
jm_getCustomCommandListener_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "commandListener") ])
        (jregister jheap)
        jthis
        jargs


jm_isPaused_0 : JR.Method
jm_isPaused_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "paused") ])
        (jregister jheap)
        jthis
        jargs


jm_removePauseCommand_0 : JR.Method
jm_removePauseCommand_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeCommand_1" JR.this [ (JR.field "PAUSE_COMMAND" (JR.callStatic MyCommandsFactory.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_pause_0 : JR.Method
jm_pause_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "PAUSE" (JR.thisField "canvasStrings")) ]), 
                    JR.exec (JR.invoke "removePauseCommand_0" JR.this []), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "RESUME_COMMAND" (JR.callStatic MyCommandsFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "setPaused_1" JR.this [ (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_unPause_0 : JR.Method
jm_unPause_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "UN_PAUSE" (JR.thisField "canvasStrings")) ]), 
                    JR.exec (JR.invoke "removeCommand_1" JR.this [ (JR.field "RESUME_COMMAND" (JR.callStatic MyCommandsFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "addCommand_1" JR.this [ (JR.field "PAUSE_COMMAND" (JR.callStatic MyCommandsFactory.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "setPaused_1" JR.this [ (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_0" (JR.thisField "displayInfo") []) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_draw_1 : JR.Method
jm_draw_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_hasChild_1 : JR.Method
jm_hasChild_1 jheap jthis jargs =
    JR.method [ ( "displayable", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "contains_1" (JR.thisField "childNameList") [ (JR.field "name" (JR.local "displayable")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_destroy_0 : JR.Method
jm_destroy_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Destroyed MyCanvas"), JR.this, (JR.str "destroy") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setPaused_1 : JR.Method
jm_setPaused_1 jheap jthis jargs =
    JR.method [ ( "isPaused", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "paused" "Z" JR.this (JR.local "isPaused")) ])
        (jregister jheap)
        jthis
        jargs


jm_keyPressedByDevice_2 : JR.Method
jm_keyPressedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_keyRepeatedByDevice_2 : JR.Method
jm_keyRepeatedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_keyReleasedByDevice_2 : JR.Method
jm_keyReleasedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_pointerDragged_2 : JR.Method
jm_pointerDragged_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "pointerDragged_2" (JR.thisField "touchME") [ (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_pointerPressed_2 : JR.Method
jm_pointerPressed_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "pointerPressed_2" (JR.thisField "touchME") [ (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_pointerReleased_2 : JR.Method
jm_pointerReleased_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "pointerReleased_2" (JR.thisField "touchME") [ (JR.local "x"), (JR.local "y") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_nextSong_3 : JR.Method
jm_nextSong_3 jheap jthis jargs =
    JR.method [ ( "nextSongSound", "" ), ( "leftVolume", "I" ), ( "rightVolume", "I" ) ] ""
        identity
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

