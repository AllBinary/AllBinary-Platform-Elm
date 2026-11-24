module Org.Allbinary.Media.Audio.PlayerComposite exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Javax.Microedition.Media.Controllable as Controllable
import Org.Allbinary.Time.GameTickTimeDelayHelperFactory as GameTickTimeDelayHelperFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Javax.Microedition.Media.Player as Player
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper


jclass : String
jclass =
    "PlayerComposite"


jchain : List String
jchain =
    [ "PlayerComposite" ]
        ++ Controllable.jchain
        ++ Player.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "player", JR.defaultOf "" ), ( "timeElapsedHelper", JR.defaultOf "" ), ( "gameTickTimeDelayHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "addPlayerListener_1", jm_addPlayerListener_1 )
        , ( "removePlayerListener_1", jm_removePlayerListener_1 )
        , ( "close_0", jm_close_0 )
        , ( "deallocate_0", jm_deallocate_0 )
        , ( "getContentType_0", jm_getContentType_0 )
        , ( "getDuration_0", jm_getDuration_0 )
        , ( "getMediaTime_0", jm_getMediaTime_0 )
        , ( "prefetch_0", jm_prefetch_0 )
        , ( "realize_0", jm_realize_0 )
        , ( "getState_0", jm_getState_0 )
        , ( "setLoopCount_1", jm_setLoopCount_1 )
        , ( "setMediaTime_1", jm_setMediaTime_1 )
        , ( "start_0", jm_start_0 )
        , ( "stop_0", jm_stop_0 )
        , ( "getControl_1", jm_getControl_1 )
        , ( "getControls_0", jm_getControls_0 )
        , ( "setVolume_2", jm_setVolume_2 )
        , ( "getPlayerP_0", jm_getPlayerP_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PlayerComposite"
        [ ( "jm_addPlayerListener_1", jm_addPlayerListener_1 ), ( "jm_removePlayerListener_1", jm_removePlayerListener_1 ), ( "jm_close_0", jm_close_0 ), ( "jm_deallocate_0", jm_deallocate_0 ), ( "jm_getContentType_0", jm_getContentType_0 ), ( "jm_getDuration_0", jm_getDuration_0 ), ( "jm_getMediaTime_0", jm_getMediaTime_0 ), ( "jm_prefetch_0", jm_prefetch_0 ), ( "jm_realize_0", jm_realize_0 ), ( "jm_getState_0", jm_getState_0 ), ( "jm_setLoopCount_1", jm_setLoopCount_1 ), ( "jm_setMediaTime_1", jm_setMediaTime_1 ), ( "jm_start_0", jm_start_0 ), ( "jm_stop_0", jm_stop_0 ), ( "jm_getControl_1", jm_getControl_1 ), ( "jm_getControls_0", jm_getControls_0 ), ( "jm_setVolume_2", jm_setVolume_2 ), ( "jm_getPlayerP_0", jm_getPlayerP_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "player", "" ), ( "repeatTime", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "timeElapsedHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.int 0) ])),
                JR.exec (JR.setField "gameTickTimeDelayHelper" "" JR.this (JR.callStatic GameTickTimeDelayHelperFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "player" "" JR.this (JR.local "player")), 
                    JR.exec (JR.andThen (JR.thisField "timeElapsedHelper") (\jtN66870 -> (JR.setField "delay" "I" (JR.lit jtN66870) (JR.local "repeatTime")))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_addPlayerListener_1 : JR.Method
jm_addPlayerListener_1 jheap jthis jargs =
    JR.method [ ( "playerListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "addPlayerListener_1" (JR.thisField "player") [ (JR.local "playerListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removePlayerListener_1 : JR.Method
jm_removePlayerListener_1 jheap jthis jargs =
    JR.method [ ( "playerListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removePlayerListener_1" (JR.thisField "player") [ (JR.local "playerListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "close_0" (JR.thisField "player") []) ])
        (jregister jheap)
        jthis
        jargs


jm_deallocate_0 : JR.Method
jm_deallocate_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "deallocate_0" (JR.thisField "player") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getContentType_0 : JR.Method
jm_getContentType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getContentType_0" (JR.thisField "player") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getDuration_0 : JR.Method
jm_getDuration_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.invoke "getDuration_0" (JR.thisField "player") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getMediaTime_0 : JR.Method
jm_getMediaTime_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.invoke "getMediaTime_0" (JR.thisField "player") []) ])
        (jregister jheap)
        jthis
        jargs


jm_prefetch_0 : JR.Method
jm_prefetch_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "prefetch_0" (JR.thisField "player") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "prefetch"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_realize_0 : JR.Method
jm_realize_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "realize_0" (JR.thisField "player") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "realize"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getState_0 : JR.Method
jm_getState_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getState_0" (JR.thisField "player") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setLoopCount_1 : JR.Method
jm_setLoopCount_1 jheap jthis jargs =
    JR.method [ ( "count", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setLoopCount_1" (JR.thisField "player") [ (JR.local "count") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setMediaTime_1 : JR.Method
jm_setMediaTime_1 jheap jthis jargs =
    JR.method [ ( "now", "J" ) ] "J"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.invoke "setMediaTime_1" (JR.thisField "player") [ (JR.local "now") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "setMediaTime"), (JR.local "e") ]), 
                        JR.return (JR.cast "J" (JR.map JR.neg (JR.int 1))) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_start_0 : JR.Method
jm_start_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.invoke "isTime_1" (JR.thisField "timeElapsedHelper") [ (JR.field "startTime" (JR.thisField "gameTickTimeDelayHelper")) ]) (JR.run [ 
                            JR.exec (JR.invoke "start_0" (JR.thisField "player") []) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "START_METHOD_NAME" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_stop_0 : JR.Method
jm_stop_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "stop_0" (JR.thisField "player") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "stop"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getControl_1 : JR.Method
jm_getControl_1 jheap jthis jargs =
    JR.method [ ( "controlType", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getControl_1" (JR.thisField "player") [ (JR.local "controlType") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getControls_0 : JR.Method
jm_getControls_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_setVolume_2 : JR.Method
jm_setVolume_2 jheap jthis jargs =
    JR.method [ ( "leftVolume", "I" ), ( "rightVolume", "I" ) ] ""
        (JR.run [ 
                    JR.declare "controllable2" "" ((JR.thisField "player")), 
                    JR.exec (JR.invoke "setVolume_2" (JR.local "controllable2") [ (JR.local "leftVolume"), (JR.local "rightVolume") ]) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

