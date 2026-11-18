module Javax.Microedition.Lcdui.NullCanvas exposing (..)

{-| Generated Code Do Not Modify package javax.microedition.lcdui
-}

import JR
import Javax.Microedition.Lcdui.Canvas as Canvas


jclass : String
jclass =
    "NullCanvas"


jchain : List String
jchain =
    [ "NullCanvas" ]
        ++ Canvas.jchain


jfields : List ( String, JR.JValue )
jfields =
    Canvas.jfields ++ []


jvtable =
    JR.vtable
        [ ( "setFullScreenMode_1", jm_setFullScreenMode_1 )
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
        , ( "destroy_0", jm_destroy_0 )
        , ( "setPaused_1", jm_setPaused_1 )
        , ( "pointerDragged_2", jm_pointerDragged_2 )
        , ( "pointerPressed_2", jm_pointerPressed_2 )
        , ( "pointerReleased_2", jm_pointerReleased_2 ) ]
        Canvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullCanvas"
        [ ( "jm_setFullScreenMode_1", jm_setFullScreenMode_1 ), ( "jm_sizeChanged_2", jm_sizeChanged_2 ), ( "jm_getCommandStack_0", jm_getCommandStack_0 ), ( "jm_isCommand_1", jm_isCommand_1 ), ( "jm_addCommand_1", jm_addCommand_1 ), ( "jm_removeCommand_1", jm_removeCommand_1 ), ( "jm_removeAllCommands_0", jm_removeAllCommands_0 ), ( "jm_setCommandListener_1", jm_setCommandListener_1 ), ( "jm_getCustomCommandListener_0", jm_getCustomCommandListener_0 ), ( "jm_isPaused_0", jm_isPaused_0 ), ( "jm_removePauseCommand_0", jm_removePauseCommand_0 ), ( "jm_pause_0", jm_pause_0 ), ( "jm_unPause_0", jm_unPause_0 ), ( "jm_process_0", jm_process_0 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_destroy_0", jm_destroy_0 ), ( "jm_setPaused_1", jm_setPaused_1 ), ( "jm_pointerDragged_2", jm_pointerDragged_2 ), ( "jm_pointerPressed_2", jm_pointerPressed_2 ), ( "jm_pointerReleased_2", jm_pointerReleased_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_CANVAS", jstatic_NULL_CANVAS ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_CANVAS : JR.M
jstatic_NULL_CANVAS s =
    JR.static "NullCanvas" jclinit "NULL_CANVAS"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Canvas.jinit_0 JR.this []),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setFullScreenMode_1 : JR.Method
jm_setFullScreenMode_1 jheap jthis jargs =
    JR.method [ ( "mode", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_sizeChanged_2 : JR.Method
jm_sizeChanged_2 jheap jthis jargs =
    JR.method [ ( "w", "I" ), ( "h", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getCommandStack_0 : JR.Method
jm_getCommandStack_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_isCommand_1 : JR.Method
jm_isCommand_1 jheap jthis jargs =
    JR.method [ ( "command", "" ) ] "Z"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_addCommand_1 : JR.Method
jm_addCommand_1 jheap jthis jargs =
    JR.method [ ( "command", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_removeCommand_1 : JR.Method
jm_removeCommand_1 jheap jthis jargs =
    JR.method [ ( "command", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_removeAllCommands_0 : JR.Method
jm_removeAllCommands_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setCommandListener_1 : JR.Method
jm_setCommandListener_1 jheap jthis jargs =
    JR.method [ ( "l", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getCustomCommandListener_0 : JR.Method
jm_getCustomCommandListener_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_isPaused_0 : JR.Method
jm_isPaused_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_removePauseCommand_0 : JR.Method
jm_removePauseCommand_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_pause_0 : JR.Method
jm_pause_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_unPause_0 : JR.Method
jm_unPause_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        identity
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


jm_destroy_0 : JR.Method
jm_destroy_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setPaused_1 : JR.Method
jm_setPaused_1 jheap jthis jargs =
    JR.method [ ( "isPaused", "Z" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_pointerDragged_2 : JR.Method
jm_pointerDragged_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_pointerPressed_2 : JR.Method
jm_pointerPressed_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_pointerReleased_2 : JR.Method
jm_pointerReleased_2 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ) ] ""
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

