module Org.Allbinary.Media.Audio.Sound exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import JRunnable
import Org.Allbinary.Media.Audio.NoPlayer as NoPlayer
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Media.Audio.SoundInterface as SoundInterface


jclass : String
jclass =
    "Sound"


jchain : List String
jchain =
    [ "Sound" ]
        ++ SoundInterface.jchain
        ++ JRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "resource", JR.defaultOf "" ), ( "player", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getResource_0", jm_getResource_0 )
        , ( "getPlayerP_0", jm_getPlayerP_0 )
        , ( "setPlayerP_1", jm_setPlayerP_1 )
        , ( "init_0", jm_init_0 )
        , ( "getDuration_0", jm_getDuration_0 )
        , ( "run_0", jm_run_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Sound"
        [ ( "jm_getResource_0", jm_getResource_0 ), ( "jm_getPlayerP_0", jm_getPlayerP_0 ), ( "jm_setPlayerP_1", jm_setPlayerP_1 ), ( "jm_init_0", jm_init_0 ), ( "jm_getDuration_0", jm_getDuration_0 ), ( "jm_run_0", jm_run_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "player" "" JR.this NoPlayer.jstatic_NO_PLAYER),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "resource" "" JR.this (JR.local "resource")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getResource_0 : JR.Method
jm_getResource_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "resource") ])
        (jregister jheap)
        jthis
        jargs


jm_getPlayerP_0 : JR.Method
jm_getPlayerP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "player") ])
        (jregister jheap)
        jthis
        jargs


jm_setPlayerP_1 : JR.Method
jm_setPlayerP_1 jheap jthis jargs =
    JR.method [ ( "player", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "player" "" JR.this (JR.local "player")) ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getDuration_0 : JR.Method
jm_getDuration_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
        (jregister jheap)
        jthis
        jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "start_0" (JR.thisField "player") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "RUN" (JR.local "commonStrings")) ]) ]) ) ] identity ])
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

