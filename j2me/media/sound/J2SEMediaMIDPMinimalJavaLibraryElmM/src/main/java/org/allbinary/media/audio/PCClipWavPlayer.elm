module Org.Allbinary.Media.Audio.PCClipWavPlayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Thread.ARunnable as ARunnable
import Org.Allbinary.Media.Audio.BasicPlayer as BasicPlayer
import JByteArrayInputStream
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Thread.MusicThreadPool as MusicThreadPool
import Org.Allbinary.Media.Audio.NullAudioFormat as NullAudioFormat
import Org.Allbinary.Media.Audio.NullClip as NullClip
import Org.Allbinary.Media.Audio.NullControl as NullControl
import Org.Allbinary.Logic.NullUtil as NullUtil
import Javax.Microedition.Media.PlayerListener as PlayerListener
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "PCClipWavPlayer"


jchain : List String
jchain =
    [ "PCClipWavPlayer" ]
        ++ BasicPlayer.jchain
        ++ [ "LineListener" ]


jfields : List ( String, JR.JValue )
jfields =
    BasicPlayer.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "audioInputStream", JR.defaultOf "" ), ( "clip", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "close_0", jm_close_0 )
        , ( "close2_0", jm_close2_0 )
        , ( "getContentType_0", jm_getContentType_0 )
        , ( "start_0", jm_start_0 )
        , ( "start2_0", jm_start2_0 )
        , ( "create_1", jm_create_1 )
        , ( "stop_0", jm_stop_0 )
        , ( "stop2_0", jm_stop2_0 )
        , ( "getControl_1", jm_getControl_1 )
        , ( "getControls_0", jm_getControls_0 )
        , ( "setVolume_2", jm_setVolume_2 )
        , ( "getVolume_0", jm_getVolume_0 )
        , ( "setVolumeF_1", jm_setVolumeF_1 )
        , ( "getDuration_0", jm_getDuration_0 )
        , ( "update_1", jm_update_1 ) ]
        BasicPlayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PCClipWavPlayer"
        [ ( "jm_close_0", jm_close_0 ), ( "jm_close2_0", jm_close2_0 ), ( "jm_getContentType_0", jm_getContentType_0 ), ( "jm_start_0", jm_start_0 ), ( "jm_start2_0", jm_start2_0 ), ( "jm_create_1", jm_create_1 ), ( "jm_stop_0", jm_stop_0 ), ( "jm_stop2_0", jm_stop2_0 ), ( "jm_getControl_1", jm_getControl_1 ), ( "jm_getControls_0", jm_getControls_0 ), ( "jm_setVolume_2", jm_setVolume_2 ), ( "jm_getVolume_0", jm_getVolume_0 ), ( "jm_setVolumeF_1", jm_setVolumeF_1 ), ( "jm_getDuration_0", jm_getDuration_0 ), ( "jm_update_1", jm_update_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicPlayer.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "audioInputStream" "" (JR.new (JR.namedMethod "AudioInputStream.jnew_3") [ (JR.new JByteArrayInputStream.jnew_1 [ (JR.field "NULL_BYTE_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]), NullAudioFormat.jstatic_NULL_AUDIO_FORMAT, (JR.int 0) ]), 
                    JR.declare "clip" "" (JR.new NullClip.jnew_0 []), 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "audioInputStream" "" (JR.callStatic (JR.namedMethod "AudioSystem.jm_getAudioInputStream_1") [ (JR.local "inputStream") ])), 
                        JR.exec (JR.setLocal "clip" "" (JR.invoke "create_1" JR.this [ (JR.local "audioInputStream") ])), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "clip") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Clip was null"), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")), (JR.new (JR.newThrowable "Exception" [ "Exception" ]) []) ]), 
                            JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity, 
                    JR.exec (JR.setField "audioInputStream" "" JR.this (JR.local "audioInputStream")), 
                    JR.exec (JR.setField "clip" "" JR.this (JR.local "clip")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "runTask_1" (JR.callStatic MusicThreadPool.jm_getInstance_0 []) [ (JR.anonymous "PCClipWavPlayer$1" ARunnable.jchain ARunnable.jvtable ARunnable.jfields ARunnable.jinit_0 [ ( "run_0", janon1_jm_run_0 ) ] [] []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close2_0 : JR.Method
jm_close2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "drain_0" (JR.thisField "clip") []), 
                    JR.exec (JR.invoke "flush_0" (JR.thisField "clip") []), 
                    JR.exec (JR.invoke "close_0" (JR.thisField "clip") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getContentType_0 : JR.Method
jm_getContentType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_start_0 : JR.Method
jm_start_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "runTask_1" (JR.callStatic MusicThreadPool.jm_getInstance_0 []) [ (JR.anonymous "PCClipWavPlayer$2" ARunnable.jchain ARunnable.jvtable ARunnable.jfields ARunnable.jinit_0 [ ( "run_0", janon2_jm_run_0 ) ] [] []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_start2_0 : JR.Method
jm_start2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFramePosition_1" (JR.thisField "clip") [ (JR.int 0) ]), 
                    JR.exec (JR.invoke "loop_1" (JR.thisField "clip") [ (JR.invoke "getLoopCount_0" JR.this []) ]), 
                    JR.exec (JR.invoke "start_0" (JR.thisField "clip") []), 
                    JR.exec (JR.callVia BasicPlayer.jvtable "start_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_create_1 : JR.Method
jm_create_1 jheap jthis jargs =
    JR.method [ ( "audioInputStream", "" ) ] ""
        (JR.run [ 
                    JR.declare "clip" "" (JR.callStatic (JR.namedMethod "AudioSystem.jm_getClip_0") []), 
                    JR.exec (JR.invoke "addLineListener_1" (JR.local "clip") [ JR.this ]), 
                    JR.exec (JR.invoke "open_1" (JR.local "clip") [ (JR.local "audioInputStream") ]), 
                    JR.return (JR.local "clip") ])
        (jregister jheap)
        jthis
        jargs


jm_stop_0 : JR.Method
jm_stop_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "runTask_1" (JR.callStatic MusicThreadPool.jm_getInstance_0 []) [ (JR.anonymous "PCClipWavPlayer$3" ARunnable.jchain ARunnable.jvtable ARunnable.jfields ARunnable.jinit_0 [ ( "run_0", janon3_jm_run_0 ) ] [] []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_stop2_0 : JR.Method
jm_stop2_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "stop_0" (JR.thisField "clip") []), 
                    JR.exec (JR.callVia BasicPlayer.jvtable "stop_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getControl_1 : JR.Method
jm_getControl_1 jheap jthis jargs =
    JR.method [ ( "controlType", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new NullControl.jnew_0 []) ])
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


jm_setVolume_2 : JR.Method
jm_setVolume_2 jheap jthis jargs =
    JR.method [ ( "leftVolume", "I" ), ( "rightVolume", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setVolumeF_1" JR.this [ (JR.map2 JR.div ((JR.cast "F" (JR.local "leftVolume"))) (JR.float 100.0)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getVolume_0 : JR.Method
jm_getVolume_0 jheap jthis jargs =
    JR.method [] "F"
        (JR.run [ 
                    JR.declare "masterGainFloatControl" "" (JR.invoke "getControl_1" (JR.thisField "clip") [ (JR.field "MASTER_GAIN" (JR.namedStatic "FloatControl.jstatic_Type")) ]), 
                    JR.return (JR.cast "F" (JR.math "pow" [ (JR.float 10.0), (JR.map2 JR.div (JR.invoke "getValue_0" (JR.local "masterGainFloatControl") []) (JR.float 20.0)) ])) ])
        (jregister jheap)
        jthis
        jargs


jm_setVolumeF_1 : JR.Method
jm_setVolumeF_1 jheap jthis jargs =
    JR.method [ ( "volume", "F" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.less (JR.local "volume") (JR.float 0.0)) (JR.map2 JR.greater (JR.local "volume") (JR.float 1.0))) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "IllegalArgumentException" [ "RuntimeException", "Exception" ]) [ (JR.concat (JR.str "Volume: ") (JR.local "volume")) ]) ]) identity, 
                    JR.declare "masterGainFloatControl" "" (JR.invoke "getControl_1" (JR.thisField "clip") [ (JR.field "MASTER_GAIN" (JR.namedStatic "FloatControl.jstatic_Type")) ]), 
                    JR.exec (JR.invoke "setValue_1" (JR.local "masterGainFloatControl") [ (JR.map2 JR.mul (JR.float 20.0) (JR.cast "F" (JR.math "log10" [ (JR.local "volume") ]))) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getDuration_0 : JR.Method
jm_getDuration_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.map2 JR.div (JR.invoke "getMicrosecondLength_0" (JR.thisField "clip") []) (JR.long 1000)) ])
        (jregister jheap)
        jthis
        jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "event", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "equals_1" (JR.invoke "getType_0" (JR.local "event") []) [ (JR.field "STOP" (JR.namedStatic "LineEvent.jstatic_Type")) ]) (JR.run [ 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "listenersList") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70819 -> (JR.setLocal "index" "I" (JR.lit jwN70819))) JR.increment) ]) (JR.run [ 
                            JR.declare "listener" "" (JR.invoke "get_1" (JR.thisField "listenersList") [ (JR.local "size") ]), 
                            JR.exec (JR.invoke "playerUpdate_3" (JR.local "listener") [ JR.this, PlayerListener.jstatic_END_OF_MEDIA, JR.null ]) ]) ] ]) identity ])
        (jregister jheap)
        jthis
        jargs


janon1_jm_run_0 : JR.Method
janon1_jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                            JR.try (JR.run [ 
                                JR.exec (JR.invoke "close2_0" JR.this []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "PROCESS" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


janon2_jm_run_0 : JR.Method
janon2_jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                            JR.try (JR.run [ 
                                JR.exec (JR.invoke "start2_0" JR.this []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "PROCESS" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


janon3_jm_run_0 : JR.Method
janon3_jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                            JR.try (JR.run [ 
                                JR.exec (JR.invoke "stop2_0" JR.this []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "PROCESS" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

