module Org.Allbinary.Business.Advertisement.AdConfiguration exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.advertisement
-}

import JR



jclass : String
jclass =
    "AdConfiguration"


jchain : List String
jchain =
    [ "AdConfiguration" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "INNERACTIVE", JR.defaultOf "" ), ( "LEADBOLT", JR.defaultOf "" ), ( "ADMOB", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getValidAdSpots_0", jm_getValidAdSpots_0 )
        , ( "process_1", jm_process_1 )
        , ( "processDemo_1", jm_processDemo_1 )
        , ( "setShowAds_0", jm_setShowAds_0 )
        , ( "setToggleAds_1", jm_setToggleAds_1 )
        , ( "isShowAds_0", jm_isShowAds_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdConfiguration"
        [ ( "jm_getValidAdSpots_0", jm_getValidAdSpots_0 ), ( "jm_process_1", jm_process_1 ), ( "jm_processDemo_1", jm_processDemo_1 ), ( "jm_setShowAds_0", jm_setShowAds_0 ), ( "jm_setToggleAds_1", jm_setToggleAds_1 ), ( "jm_isShowAds_0", jm_isShowAds_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "advertIdArray", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "INNERACTIVE" "" JR.this (JR.aget (JR.local "advertIdArray") (JR.int 0))), 
                    JR.exec (JR.setField "ADMOB" "" JR.this (JR.aget (JR.local "advertIdArray") (JR.int 1))), 
                    JR.exec (JR.setField "LEADBOLT" "" JR.this (JR.aget (JR.local "advertIdArray") (JR.int 2))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getValidAdSpots_0 : JR.Method
jm_getValidAdSpots_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.newArray "" [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "gameState", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_processDemo_1 : JR.Method
jm_processDemo_1 jheap jthis jargs =
    JR.method [ ( "state", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setShowAds_0 : JR.Method
jm_setShowAds_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setToggleAds_1 : JR.Method
jm_setToggleAds_1 jheap jthis jargs =
    JR.method [ ( "showAds", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isShowAds_0 : JR.Method
jm_isShowAds_0 jheap jthis jargs =
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

