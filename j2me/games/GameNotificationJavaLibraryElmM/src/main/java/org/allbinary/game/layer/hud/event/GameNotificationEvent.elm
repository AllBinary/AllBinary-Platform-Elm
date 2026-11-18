module Org.Allbinary.Game.Layer.Hud.Event.GameNotificationEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.hud.event
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "GameNotificationEvent"


jchain : List String
jchain =
    [ "GameNotificationEvent" ]
        ++ AllBinaryEventObject.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "string", JR.defaultOf "" ), ( "seconds", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "removeable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getString_0", jm_getString_0 )
        , ( "getSeconds_0", jm_getSeconds_0 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "getPermanent_0", jm_getPermanent_0 )
        , ( "setString_1", jm_setString_1 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameNotificationEvent"
        [ ( "jm_getString_0", jm_getString_0 ), ( "jm_getSeconds_0", jm_getSeconds_0 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_getPermanent_0", jm_getPermanent_0 ), ( "jm_setString_1", jm_setString_1 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "string", "" ), ( "seconds", "" ), ( "basicColor", "" ), ( "permanent", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "anyType") ]),
                JR.exec (JR.setField "string" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setString_1" JR.this [ (JR.local "string") ]), 
                    JR.exec (JR.setField "seconds" "" JR.this (JR.local "seconds")), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.exec (JR.setField "removeable" "" JR.this (JR.local "permanent")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_getString_0 : JR.Method
jm_getString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "string") ])
        (jregister jheap)
        jthis
        jargs


jm_getSeconds_0 : JR.Method
jm_getSeconds_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "seconds") ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicColor") ])
        (jregister jheap)
        jthis
        jargs


jm_getPermanent_0 : JR.Method
jm_getPermanent_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "removeable") ])
        (jregister jheap)
        jthis
        jargs


jm_setString_1 : JR.Method
jm_setString_1 jheap jthis jargs =
    JR.method [ ( "string", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "string" "" JR.this (JR.local "string")) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")) ])
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

