module Org.Allbinary.Media.Audio.AllBinaryMediaManager exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Media.Audio.NoPlayer as NoPlayer
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory
import Org.Allbinary.Media.Audio.Sounds as Sounds
import Org.Allbinary.Logic.String.StringUtil as StringUtil
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
        , ( "createPlayerFromInputStream_2", jm_createPlayerFromInputStream_2 )
        , ( "createPlayer_1", jm_createPlayer_1 )
        , ( "playTone_3", jm_playTone_3 )
        , ( "getSupportedContentTypes_1", jm_getSupportedContentTypes_1 )
        , ( "getSupportedProtocols_1", jm_getSupportedProtocols_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryMediaManager"
        [ ( "jm_isMuted_0", jm_isMuted_0 ), ( "jm_setMuted_1", jm_setMuted_1 ), ( "jm_update_0", jm_update_0 ), ( "jm_init_1", jm_init_1 ), ( "jm_shutdown_1", jm_shutdown_1 ), ( "jm_createPlayerFromInputStream_2", jm_createPlayerFromInputStream_2 ), ( "jm_createPlayer_1", jm_createPlayer_1 ), ( "jm_playTone_3", jm_playTone_3 ), ( "jm_getSupportedContentTypes_1", jm_getSupportedContentTypes_1 ), ( "jm_getSupportedProtocols_1", jm_getSupportedProtocols_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_THIS", jstatic_THIS ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_THIS : JR.M
jstatic_THIS s =
    JR.static "AllBinaryMediaManager" jclinit "THIS"
        (JR.str "AllBinaryMediaManagerNoMediaMIDP1")
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


jm_createPlayerFromInputStream_2 : JR.Method
jm_createPlayerFromInputStream_2 jheap jthis jargs =
    JR.method [ ( "stream", "" ), ( "type", "" ) ] ""
        (JR.run [ 
                    JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                    JR.declare "commonString" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.field "START" (JR.local "commonString")), jstatic_THIS, (JR.str "creatPlayer(InputStream)") ]), 
                    JR.return NoPlayer.jstatic_NO_PLAYER ])
        (jregister jheap)
        jthis
        jargs


jm_createPlayer_1 : JR.Method
jm_createPlayer_1 jheap jthis jargs =
    JR.method [ ( "locator", "" ) ] ""
        (JR.run [ 
                    JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                    JR.declare "commonString" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.field "START" (JR.local "commonString")), jstatic_THIS, (JR.str "creatPlayer(locator)") ]), 
                    JR.return NoPlayer.jstatic_NO_PLAYER ])
        (jregister jheap)
        jthis
        jargs


jm_playTone_3 : JR.Method
jm_playTone_3 jheap jthis jargs =
    JR.method [ ( "frequency", "I" ), ( "time", "I" ), ( "volume", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getSupportedContentTypes_1 : JR.Method
jm_getSupportedContentTypes_1 jheap jthis jargs =
    JR.method [ ( "protocol", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSupportedProtocols_1 : JR.Method
jm_getSupportedProtocols_1 jheap jthis jargs =
    JR.method [ ( "content_type", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) []) ])
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

