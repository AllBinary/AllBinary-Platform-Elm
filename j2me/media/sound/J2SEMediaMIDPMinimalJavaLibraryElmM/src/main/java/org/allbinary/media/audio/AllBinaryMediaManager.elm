module Org.Allbinary.Media.Audio.AllBinaryMediaManager exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Audio.AudioContentTypeDataFactory as AudioContentTypeDataFactory
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Game.Configuration.Feature.GameFeatureFactory as GameFeatureFactory
import JByteArrayInputStream
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Javax.Microedition.Media.Manager as Manager
import Javax.Microedition.Media.MediaException as MediaException
import Org.Allbinary.Media.Audio.NoPlayer as NoPlayer
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Media.Audio.PCClipWavPlayer as PCClipWavPlayer
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Data.Resource.ResourceUtil as ResourceUtil
import Org.Allbinary.Media.Audio.Sounds as Sounds
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "AllBinaryMediaManager"


jchain : List String
jchain =
    [ "AllBinaryMediaManager" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "isMuted_0", jm_isMuted_0 )
        , ( "setMuted_1", jm_setMuted_1 )
        , ( "update_0", jm_update_0 )
        , ( "init_1", jm_init_1 )
        , ( "shutdown_1", jm_shutdown_1 )
        , ( "createPlayer_1", jm_createPlayer_1 )
        , ( "createPlayerFromInputStream_2", jm_createPlayerFromInputStream_2 )
        , ( "playTone_3", jm_playTone_3 )
        , ( "isInitialized_0", jm_isInitialized_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryMediaManager"
        [ ( "jm_isMuted_0", jm_isMuted_0 ), ( "jm_setMuted_1", jm_setMuted_1 ), ( "jm_update_0", jm_update_0 ), ( "jm_init_1", jm_init_1 ), ( "jm_shutdown_1", jm_shutdown_1 ), ( "jm_createPlayer_1", jm_createPlayer_1 ), ( "jm_createPlayerFromInputStream_2", jm_createPlayerFromInputStream_2 ), ( "jm_playTone_3", jm_playTone_3 ), ( "jm_isInitialized_0", jm_isInitialized_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_THIS", jstatic_THIS ), ( "jstatic_CREATE_PLAYER", jstatic_CREATE_PLAYER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_THIS : JR.M
jstatic_THIS s =
    JR.static "AllBinaryMediaManager" jclinit "THIS"
        (JR.str "AllBinaryMediaManagerPC")
        s


jstatic_CREATE_PLAYER : JR.M
jstatic_CREATE_PLAYER s =
    JR.static "AllBinaryMediaManager" jclinit "CREATE_PLAYER"
        (JR.str "createPlayer")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_isMuted_0 : JR.Method
jm_isMuted_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_setMuted_1 : JR.Method
jm_setMuted_1 jheap jthis jargs =
    JR.method [ ( "aMuted", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "soundsFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                    JR.declare "commonString" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.field "START" (JR.local "commonString")), jstatic_THIS, (JR.field "INIT" (JR.local "commonString")) ]), 
                    JR.exec (JR.invoke "addNormalPortion_2" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []) [ (JR.int 50), (JR.str "Media Manager") ]), 
                    JR.exec (JR.invoke "init_0" (JR.new Sounds.jnew_1 [ (JR.local "soundsFactoryInterface") ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_shutdown_1 : JR.Method
jm_shutdown_1 jheap jthis jargs =
    JR.method [ ( "soundsFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "stopAll_0" (JR.new Sounds.jnew_1 [ (JR.local "soundsFactoryInterface") ]) []), 
                    JR.exec (JR.invoke "closeAll_0" (JR.new Sounds.jnew_1 [ (JR.local "soundsFactoryInterface") ]) []), 
                    JR.exec (JR.invoke "gc_0" (JR.callStatic TsUtil.jm_getInstance_0 []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_createPlayer_1 : JR.Method
jm_createPlayer_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "startsWith_1" (JR.local "resource") [ Manager.jstatic_TONE_DEVICE_LOCATOR ]) (JR.run [ 
                        JR.return (JR.callStatic jm_createPlayerFromInputStream_2 [ (JR.new JByteArrayInputStream.jnew_1 [ (JR.field "NULL_BYTE_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 [])) ]), (JR.invoke "getName_0" (JR.field "MIME_AUDIO_TONE" (JR.callStatic AudioContentTypeDataFactory.jm_getInstance_0 [])) []) ]) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.callStatic Features.jm_getInstance_0 []) [ (JR.field "SOUND" (JR.callStatic GameFeatureFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.try (JR.run [ 
                            JR.declare "inputStream" "" (JR.invoke "getResourceAsStream_1" (JR.callStatic ResourceUtil.jm_getInstance_0 []) [ (JR.local "resource") ]), 
                            JR.declare "bufferedInputStream" "" (JR.new (JR.namedMethod "BufferedInputStream.jnew_1") [ (JR.local "inputStream") ]), 
                            JR.return (JR.new PCClipWavPlayer.jnew_1 [ (JR.local "bufferedInputStream") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                            JR.declare "commonString" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonString")), jstatic_THIS, jstatic_CREATE_PLAYER, (JR.local "e") ]), 
                            JR.return NoPlayer.jstatic_NO_PLAYER ]) ) ] identity ]) (JR.run [ 
                        JR.return NoPlayer.jstatic_NO_PLAYER ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createPlayerFromInputStream_2 : JR.Method
jm_createPlayerFromInputStream_2 jheap jthis jargs =
    JR.method [ ( "stream", "" ), ( "type", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new MediaException.jnew_1 [ (JR.str "No Impl") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_playTone_3 : JR.Method
jm_playTone_3 jheap jthis jargs =
    JR.method [ ( "frequency", "I" ), ( "time", "I" ), ( "volume", "I" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new MediaException.jnew_1 [ (JR.str "No Impl") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isInitialized_0 : JR.Method
jm_isInitialized_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool True) ])
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

