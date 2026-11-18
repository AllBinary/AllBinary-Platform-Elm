module Org.Allbinary.Game.Midlet.DemoGameMidletEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.midlet
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject


jclass : String
jclass =
    "DemoGameMidletEvent"


jchain : List String
jchain =
    [ "DemoGameMidletEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "demoGameMidletState", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "setDemoGameMidletState_1", jm_setDemoGameMidletState_1 )
        , ( "getDemoGameMidletState_0", jm_getDemoGameMidletState_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DemoGameMidletEvent"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_setDemoGameMidletState_1", jm_setDemoGameMidletState_1 ), ( "jm_getDemoGameMidletState_0", jm_getDemoGameMidletState_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "demoGameMidletState", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "anyType") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "demoGameMidletState" "" JR.this (JR.local "demoGameMidletState")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setSource_1" JR.this [ (JR.local "anyType") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setDemoGameMidletState_1 : JR.Method
jm_setDemoGameMidletState_1 jheap jthis jargs =
    JR.method [ ( "demoGameMidletState", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "demoGameMidletState" "" JR.this (JR.local "demoGameMidletState")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDemoGameMidletState_0 : JR.Method
jm_getDemoGameMidletState_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "demoGameMidletState") ])
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

