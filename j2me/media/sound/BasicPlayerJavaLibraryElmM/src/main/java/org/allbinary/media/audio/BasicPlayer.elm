module Org.Allbinary.Media.Audio.BasicPlayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Media.Audio.Controllable2 as Controllable2
import Org.Allbinary.Media.Audio.NullControl as NullControl
import Javax.Microedition.Media.Player as Player
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "BasicPlayer"


jchain : List String
jchain =
    [ "BasicPlayer" ]
        ++ Player.jchain
        ++ Controllable2.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ), ( "listenersList", JR.defaultOf "" ), ( "stateP", JR.defaultOf "I" ), ( "loopCountP", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getContentType_0", jm_getContentType_0 )
        , ( "getControl_1", jm_getControl_1 )
        , ( "getControls_0", jm_getControls_0 )
        , ( "close_0", jm_close_0 )
        , ( "addPlayerListener_1", jm_addPlayerListener_1 )
        , ( "removePlayerListener_1", jm_removePlayerListener_1 )
        , ( "getState_0", jm_getState_0 )
        , ( "setState_1", jm_setState_1 )
        , ( "getDuration_0", jm_getDuration_0 )
        , ( "getMediaTime_0", jm_getMediaTime_0 )
        , ( "deallocate_0", jm_deallocate_0 )
        , ( "prefetch_0", jm_prefetch_0 )
        , ( "realize_0", jm_realize_0 )
        , ( "setLoopCount_1", jm_setLoopCount_1 )
        , ( "getLoopCount_0", jm_getLoopCount_0 )
        , ( "setMediaTime_1", jm_setMediaTime_1 )
        , ( "start_0", jm_start_0 )
        , ( "stop_0", jm_stop_0 )
        , ( "setVolume_2", jm_setVolume_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicPlayer"
        [ ( "jm_getContentType_0", jm_getContentType_0 ), ( "jm_getControl_1", jm_getControl_1 ), ( "jm_getControls_0", jm_getControls_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_addPlayerListener_1", jm_addPlayerListener_1 ), ( "jm_removePlayerListener_1", jm_removePlayerListener_1 ), ( "jm_getState_0", jm_getState_0 ), ( "jm_setState_1", jm_setState_1 ), ( "jm_getDuration_0", jm_getDuration_0 ), ( "jm_getMediaTime_0", jm_getMediaTime_0 ), ( "jm_deallocate_0", jm_deallocate_0 ), ( "jm_prefetch_0", jm_prefetch_0 ), ( "jm_realize_0", jm_realize_0 ), ( "jm_setLoopCount_1", jm_setLoopCount_1 ), ( "jm_getLoopCount_0", jm_getLoopCount_0 ), ( "jm_setMediaTime_1", jm_setMediaTime_1 ), ( "jm_start_0", jm_start_0 ), ( "jm_stop_0", jm_stop_0 ), ( "jm_setVolume_2", jm_setVolume_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_CONTROL_TYPE", jstatic_CONTROL_TYPE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_CONTROL_TYPE : JR.M
jstatic_CONTROL_TYPE s =
    JR.static "BasicPlayer" jclinit "CONTROL_TYPE"
        (JR.str "ToneControl")
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "listenersList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setLoopCount_1" JR.this [ (JR.int 0) ]), 
                    JR.exec (JR.invoke "setState_1" JR.this [ Player.jstatic_UNREALIZED ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getContentType_0 : JR.Method
jm_getContentType_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
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


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_addPlayerListener_1 : JR.Method
jm_addPlayerListener_1 jheap jthis jargs =
    JR.method [ ( "playerListener", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "listenersList") [ (JR.local "playerListener") ])) (JR.run [ 
                        JR.exec (JR.invoke "add_1" (JR.thisField "listenersList") [ (JR.local "playerListener") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_removePlayerListener_1 : JR.Method
jm_removePlayerListener_1 jheap jthis jargs =
    JR.method [ ( "playerListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "remove_1" (JR.thisField "listenersList") [ (JR.local "playerListener") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getState_0 : JR.Method
jm_getState_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "stateP") ])
        (jregister jheap)
        jthis
        jargs


jm_setState_1 : JR.Method
jm_setState_1 jheap jthis jargs =
    JR.method [ ( "state", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "stateP" "I" JR.this (JR.local "state")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDuration_0 : JR.Method
jm_getDuration_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getMediaTime_0 : JR.Method
jm_getMediaTime_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
        (jregister jheap)
        jthis
        jargs


jm_deallocate_0 : JR.Method
jm_deallocate_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_prefetch_0 : JR.Method
jm_prefetch_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_realize_0 : JR.Method
jm_realize_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setLoopCount_1 : JR.Method
jm_setLoopCount_1 jheap jthis jargs =
    JR.method [ ( "count", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "loopCountP" "I" JR.this (JR.local "count")) ])
        (jregister jheap)
        jthis
        jargs


jm_getLoopCount_0 : JR.Method
jm_getLoopCount_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "loopCountP") ])
        (jregister jheap)
        jthis
        jargs


jm_setMediaTime_1 : JR.Method
jm_setMediaTime_1 jheap jthis jargs =
    JR.method [ ( "now", "J" ) ] "J"
        (JR.run [ 
                    JR.return (JR.long 0) ])
        (jregister jheap)
        jthis
        jargs


jm_start_0 : JR.Method
jm_start_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setState_1" JR.this [ Player.jstatic_STARTED ]) ])
        (jregister jheap)
        jthis
        jargs


jm_stop_0 : JR.Method
jm_stop_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setState_1" JR.this [ Player.jstatic_PREFETCHED ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setVolume_2 : JR.Method
jm_setVolume_2 jheap jthis jargs =
    JR.method [ ( "leftVolume", "I" ), ( "rightVolume", "I" ) ] ""
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

