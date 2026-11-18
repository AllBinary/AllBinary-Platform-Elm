module Org.Allbinary.Game.Configuration.Event.GameInitializedEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.Game.Resource.ResourceLoadingLevelFactory as ResourceLoadingLevelFactory


jclass : String
jclass =
    "GameInitializedEvent"


jchain : List String
jchain =
    [ "GameInitializedEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "resourceLoadingLevel", JR.defaultOf "" ), ( "level", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "setLevel_1", jm_setLevel_1 )
        , ( "getLevel_0", jm_getLevel_0 )
        , ( "setResourceLoadingLevel_1", jm_setResourceLoadingLevel_1 )
        , ( "getResourceLoadingLevel_0", jm_getResourceLoadingLevel_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameInitializedEvent"
        [ ( "jm_setLevel_1", jm_setLevel_1 ), ( "jm_getLevel_0", jm_getLevel_0 ), ( "jm_setResourceLoadingLevel_1", jm_setResourceLoadingLevel_1 ), ( "jm_getResourceLoadingLevel_0", jm_getResourceLoadingLevel_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "anyType") ]),
                JR.exec (JR.setField "resourceLoadingLevel" "" JR.this (JR.field "LEVEL" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []))),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setLevel_1 : JR.Method
jm_setLevel_1 jheap jthis jargs =
    JR.method [ ( "level", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "level" "I" JR.this (JR.local "level")), 
                    JR.exec (JR.setField "resourceLoadingLevel" "" JR.this (JR.field "LEVEL" (JR.callStatic ResourceLoadingLevelFactory.jm_getInstance_0 []))) ])
        (jregister jheap)
        jthis
        jargs


jm_getLevel_0 : JR.Method
jm_getLevel_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "level") ])
        (jregister jheap)
        jthis
        jargs


jm_setResourceLoadingLevel_1 : JR.Method
jm_setResourceLoadingLevel_1 jheap jthis jargs =
    JR.method [ ( "resourceLoadingLevel", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "resourceLoadingLevel" "" JR.this (JR.local "resourceLoadingLevel")), 
                    JR.exec (JR.setField "level" "I" JR.this (JR.invoke "getLevel_0" (JR.thisField "resourceLoadingLevel") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getResourceLoadingLevel_0 : JR.Method
jm_getResourceLoadingLevel_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "resourceLoadingLevel") ])
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

