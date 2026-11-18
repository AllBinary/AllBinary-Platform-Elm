module Org.Allbinary.Media.Audio.NullClip exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Media.Audio.NullAudioFormat as NullAudioFormat
import Org.Allbinary.Media.Audio.NullJ2SEControl as NullJ2SEControl


jclass : String
jclass =
    "NullClip"


jchain : List String
jchain =
    [ "NullClip" ]
        ++ [ "Clip" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "open_4", jm_open_4 )
        , ( "open_1", jm_open_1 )
        , ( "getFrameLength_0", jm_getFrameLength_0 )
        , ( "getMicrosecondLength_0", jm_getMicrosecondLength_0 )
        , ( "setFramePosition_1", jm_setFramePosition_1 )
        , ( "setMicrosecondPosition_1", jm_setMicrosecondPosition_1 )
        , ( "setLoopPoints_2", jm_setLoopPoints_2 )
        , ( "loop_1", jm_loop_1 )
        , ( "drain_0", jm_drain_0 )
        , ( "flush_0", jm_flush_0 )
        , ( "start_0", jm_start_0 )
        , ( "stop_0", jm_stop_0 )
        , ( "isRunning_0", jm_isRunning_0 )
        , ( "isActive_0", jm_isActive_0 )
        , ( "getFormat_0", jm_getFormat_0 )
        , ( "getBufferSize_0", jm_getBufferSize_0 )
        , ( "available_0", jm_available_0 )
        , ( "getFramePosition_0", jm_getFramePosition_0 )
        , ( "getLongFramePosition_0", jm_getLongFramePosition_0 )
        , ( "getMicrosecondPosition_0", jm_getMicrosecondPosition_0 )
        , ( "getLevel_0", jm_getLevel_0 )
        , ( "getLineInfo_0", jm_getLineInfo_0 )
        , ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "isOpen_0", jm_isOpen_0 )
        , ( "getControls_0", jm_getControls_0 )
        , ( "isControlSupported_1", jm_isControlSupported_1 )
        , ( "getControl_1", jm_getControl_1 )
        , ( "addLineListener_1", jm_addLineListener_1 )
        , ( "removeLineListener_1", jm_removeLineListener_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullClip"
        [ ( "jm_open_4", jm_open_4 ), ( "jm_open_1", jm_open_1 ), ( "jm_getFrameLength_0", jm_getFrameLength_0 ), ( "jm_getMicrosecondLength_0", jm_getMicrosecondLength_0 ), ( "jm_setFramePosition_1", jm_setFramePosition_1 ), ( "jm_setMicrosecondPosition_1", jm_setMicrosecondPosition_1 ), ( "jm_setLoopPoints_2", jm_setLoopPoints_2 ), ( "jm_loop_1", jm_loop_1 ), ( "jm_drain_0", jm_drain_0 ), ( "jm_flush_0", jm_flush_0 ), ( "jm_start_0", jm_start_0 ), ( "jm_stop_0", jm_stop_0 ), ( "jm_isRunning_0", jm_isRunning_0 ), ( "jm_isActive_0", jm_isActive_0 ), ( "jm_getFormat_0", jm_getFormat_0 ), ( "jm_getBufferSize_0", jm_getBufferSize_0 ), ( "jm_available_0", jm_available_0 ), ( "jm_getFramePosition_0", jm_getFramePosition_0 ), ( "jm_getLongFramePosition_0", jm_getLongFramePosition_0 ), ( "jm_getMicrosecondPosition_0", jm_getMicrosecondPosition_0 ), ( "jm_getLevel_0", jm_getLevel_0 ), ( "jm_getLineInfo_0", jm_getLineInfo_0 ), ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_isOpen_0", jm_isOpen_0 ), ( "jm_getControls_0", jm_getControls_0 ), ( "jm_isControlSupported_1", jm_isControlSupported_1 ), ( "jm_getControl_1", jm_getControl_1 ), ( "jm_addLineListener_1", jm_addLineListener_1 ), ( "jm_removeLineListener_1", jm_removeLineListener_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_CONTROL", jstatic_NULL_CONTROL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_CONTROL : JR.M
jstatic_NULL_CONTROL s =
    JR.static "NullClip" jclinit "NULL_CONTROL"
        (JR.new NullJ2SEControl.jnew_1 [ (JR.field "MUTE" (JR.namedStatic "BooleanControl.jstatic_Type")) ])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_open_4 : JR.Method
jm_open_4 jheap jthis jargs =
    JR.method [ ( "format", "" ), ( "data", "" ), ( "offset", "I" ), ( "bufferSize", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_open_1 : JR.Method
jm_open_1 jheap jthis jargs =
    JR.method [ ( "stream", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getFrameLength_0 : JR.Method
jm_getFrameLength_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getMicrosecondLength_0 : JR.Method
jm_getMicrosecondLength_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
        (jregister jheap)
        jthis
        jargs


jm_setFramePosition_1 : JR.Method
jm_setFramePosition_1 jheap jthis jargs =
    JR.method [ ( "frames", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setMicrosecondPosition_1 : JR.Method
jm_setMicrosecondPosition_1 jheap jthis jargs =
    JR.method [ ( "microseconds", "J" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setLoopPoints_2 : JR.Method
jm_setLoopPoints_2 jheap jthis jargs =
    JR.method [ ( "start", "I" ), ( "end", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_loop_1 : JR.Method
jm_loop_1 jheap jthis jargs =
    JR.method [ ( "count", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_drain_0 : JR.Method
jm_drain_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_flush_0 : JR.Method
jm_flush_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_start_0 : JR.Method
jm_start_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_stop_0 : JR.Method
jm_stop_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isRunning_0 : JR.Method
jm_isRunning_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isActive_0 : JR.Method
jm_isActive_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getFormat_0 : JR.Method
jm_getFormat_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return NullAudioFormat.jstatic_NULL_AUDIO_FORMAT ])
        (jregister jheap)
        jthis
        jargs


jm_getBufferSize_0 : JR.Method
jm_getBufferSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_available_0 : JR.Method
jm_available_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getFramePosition_0 : JR.Method
jm_getFramePosition_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getLongFramePosition_0 : JR.Method
jm_getLongFramePosition_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getMicrosecondPosition_0 : JR.Method
jm_getMicrosecondPosition_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getLevel_0 : JR.Method
jm_getLevel_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.return (JR.float 0.0) ])
        (jregister jheap)
        jthis
        jargs


jm_getLineInfo_0 : JR.Method
jm_getLineInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new (JR.namedMethod "Info.jnew_2") [ (JR.getClass JR.this), NullAudioFormat.jstatic_NULL_AUDIO_FORMAT ]) ])
        (jregister jheap)
        jthis
        jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isOpen_0 : JR.Method
jm_isOpen_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getControls_0 : JR.Method
jm_getControls_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.newArray "" [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isControlSupported_1 : JR.Method
jm_isControlSupported_1 jheap jthis jargs =
    JR.method [ ( "control", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getControl_1 : JR.Method
jm_getControl_1 jheap jthis jargs =
    JR.method [ ( "control", "" ) ] ""
        (JR.run [ 
                    JR.return jstatic_NULL_CONTROL ])
        (jregister jheap)
        jthis
        jargs


jm_addLineListener_1 : JR.Method
jm_addLineListener_1 jheap jthis jargs =
    JR.method [ ( "listener", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_removeLineListener_1 : JR.Method
jm_removeLineListener_1 jheap jthis jargs =
    JR.method [ ( "listener", "" ) ] ""
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

