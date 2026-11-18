module Org.Allbinary.Game.Configuration.Event.GameFeatureEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject


jclass : String
jclass =
    "GameFeatureEvent"


jchain : List String
jchain =
    [ "GameFeatureEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "whatChanged", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getWhatChanged_0", jm_getWhatChanged_0 )
        , ( "getGameOption_0", jm_getGameOption_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameFeatureEvent"
        [ ( "jm_getWhatChanged_0", jm_getWhatChanged_0 ), ( "jm_getGameOption_0", jm_getGameOption_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "whatChanged", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "anyType") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "whatChanged" "" JR.this (JR.local "whatChanged")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getWhatChanged_0 : JR.Method
jm_getWhatChanged_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "whatChanged") ])
        (jregister jheap)
        jthis
        jargs


jm_getGameOption_0 : JR.Method
jm_getGameOption_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getSource_0" JR.this []) ])
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

