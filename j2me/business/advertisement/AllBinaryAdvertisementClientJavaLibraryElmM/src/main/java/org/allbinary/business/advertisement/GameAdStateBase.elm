module Org.Allbinary.Business.Advertisement.GameAdStateBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.advertisement
-}

import JR
import Org.Allbinary.Business.Advertisement.Advertisements as Advertisements
import Org.Allbinary.Logic.Util.Event.EventStrings as EventStrings
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil


jclass : String
jclass =
    "GameAdStateBase"


jchain : List String
jchain =
    [ "GameAdStateBase" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "adConfigurationP", JR.defaultOf "" ), ( "advertisementsP", JR.defaultOf "" ), ( "okayToShowAdsP", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "initViewArray_1", jm_initViewArray_1 )
        , ( "onStart_1", jm_onStart_1 )
        , ( "init_0", jm_init_0 )
        , ( "isShowingAtLocation_1", jm_isShowingAtLocation_1 )
        , ( "isShowingAt_0", jm_isShowingAt_0 )
        , ( "show_0", jm_show_0 )
        , ( "hide_0", jm_hide_0 )
        , ( "onEvent_1", jm_onEvent_1 )
        , ( "processAdState_2", jm_processAdState_2 )
        , ( "processPageAdState_0", jm_processPageAdState_0 )
        , ( "playingAdState_0", jm_playingAdState_0 )
        , ( "playingAdStateWH_2", jm_playingAdStateWH_2 )
        , ( "notPlayingAdState_0", jm_notPlayingAdState_0 )
        , ( "setGameIsReady_1", jm_setGameIsReady_1 )
        , ( "isGameIsReady_0", jm_isGameIsReady_0 )
        , ( "getAdvertisements_0", jm_getAdvertisements_0 )
        , ( "getAdConfiguration_0", jm_getAdConfiguration_0 )
        , ( "isOkayToShowPageAd_0", jm_isOkayToShowPageAd_0 )
        , ( "setOkayToShowAds_1", jm_setOkayToShowAds_1 )
        , ( "isOkayToShowAds_0", jm_isOkayToShowAds_0 )
        , ( "isEnabled_0", jm_isEnabled_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameAdStateBase"
        [ ( "jm_initViewArray_1", jm_initViewArray_1 ), ( "jm_onStart_1", jm_onStart_1 ), ( "jm_init_0", jm_init_0 ), ( "jm_isShowingAtLocation_1", jm_isShowingAtLocation_1 ), ( "jm_isShowingAt_0", jm_isShowingAt_0 ), ( "jm_show_0", jm_show_0 ), ( "jm_hide_0", jm_hide_0 ), ( "jm_onEvent_1", jm_onEvent_1 ), ( "jm_processAdState_2", jm_processAdState_2 ), ( "jm_processPageAdState_0", jm_processPageAdState_0 ), ( "jm_playingAdState_0", jm_playingAdState_0 ), ( "jm_playingAdStateWH_2", jm_playingAdStateWH_2 ), ( "jm_notPlayingAdState_0", jm_notPlayingAdState_0 ), ( "jm_setGameIsReady_1", jm_setGameIsReady_1 ), ( "jm_isGameIsReady_0", jm_isGameIsReady_0 ), ( "jm_getAdvertisements_0", jm_getAdvertisements_0 ), ( "jm_getAdConfiguration_0", jm_getAdConfiguration_0 ), ( "jm_isOkayToShowPageAd_0", jm_isOkayToShowPageAd_0 ), ( "jm_setOkayToShowAds_1", jm_setOkayToShowAds_1 ), ( "jm_isOkayToShowAds_0", jm_isOkayToShowAds_0 ), ( "jm_isEnabled_0", jm_isEnabled_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "adConfiguration", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "advertisementsP" "" JR.this (JR.new Advertisements.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "adConfigurationP" "" JR.this (JR.local "adConfiguration")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_initViewArray_1 : JR.Method
jm_initViewArray_1 jheap jthis jargs =
    JR.method [ ( "viewArray", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onStart_1 : JR.Method
jm_onStart_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "init_0" JR.this []) ])
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


jm_isShowingAtLocation_1 : JR.Method
jm_isShowingAtLocation_1 jheap jthis jargs =
    JR.method [ ( "location", "I" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_isShowingAt_0 : JR.Method
jm_isShowingAt_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_show_0 : JR.Method
jm_show_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_hide_0 : JR.Method
jm_hide_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onEvent_1 : JR.Method
jm_onEvent_1 jheap jthis jargs =
    JR.method [ ( "eventObject", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "PERFORMANCE_MESSAGE" (JR.callStatic EventStrings.jm_getInstance_0 [])), JR.this ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processAdState_2 : JR.Method
jm_processAdState_2 jheap jthis jargs =
    JR.method [ ( "gameState", "" ), ( "gameType", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processPageAdState_0 : JR.Method
jm_processPageAdState_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_playingAdState_0 : JR.Method
jm_playingAdState_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_playingAdStateWH_2 : JR.Method
jm_playingAdStateWH_2 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_notPlayingAdState_0 : JR.Method
jm_notPlayingAdState_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setGameIsReady_1 : JR.Method
jm_setGameIsReady_1 jheap jthis jargs =
    JR.method [ ( "gameIsReady", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isGameIsReady_0 : JR.Method
jm_isGameIsReady_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getAdvertisements_0 : JR.Method
jm_getAdvertisements_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "advertisementsP") ])
        (jregister jheap)
        jthis
        jargs


jm_getAdConfiguration_0 : JR.Method
jm_getAdConfiguration_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "adConfigurationP") ])
        (jregister jheap)
        jthis
        jargs


jm_isOkayToShowPageAd_0 : JR.Method
jm_isOkayToShowPageAd_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_setOkayToShowAds_1 : JR.Method
jm_setOkayToShowAds_1 jheap jthis jargs =
    JR.method [ ( "okayToShowAds", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "okayToShowAdsP" "Z" JR.this (JR.local "okayToShowAds")) ])
        (jregister jheap)
        jthis
        jargs


jm_isOkayToShowAds_0 : JR.Method
jm_isOkayToShowAds_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "okayToShowAdsP") ])
        (jregister jheap)
        jthis
        jargs


jm_isEnabled_0 : JR.Method
jm_isEnabled_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
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

