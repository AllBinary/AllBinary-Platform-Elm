module Org.Allbinary.Input.Motion.Button.TouchButtonInput exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.Event.GameKeyEvent as GameKeyEvent
import Org.Allbinary.Game.Input.Event.GameKeyEventFactory as GameKeyEventFactory
import Org.Allbinary.Game.Input.GameKeyEventSourceInterface as GameKeyEventSourceInterface
import Org.Allbinary.Game.Input.Input as Input
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "TouchButtonInput"


jchain : List String
jchain =
    [ "TouchButtonInput" ]
        ++ Input.jchain
        ++ GameKeyEventSourceInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Input.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "gameKeyEventFactory", JR.defaultOf "" ), ( "TOUCH_BUTTON_SOURCE_ID", JR.defaultOf "I" ), ( "gameKeyEvent", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "update_1", jm_update_1 )
        , ( "getSourceId_0", jm_getSourceId_0 )
        , ( "getGameKeyEvent_0", jm_getGameKeyEvent_0 ) ]
        Input.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonInput"
        [ ( "jm_update_1", jm_update_1 ), ( "jm_getSourceId_0", jm_getSourceId_0 ), ( "jm_getGameKeyEvent_0", jm_getGameKeyEvent_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "id", "I" ), ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Input.jinit_2 JR.this [ (JR.local "id"), (JR.local "name") ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameKeyEventFactory" "" JR.this (JR.callStatic GameKeyEventFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "TOUCH_BUTTON_SOURCE_ID" "I" JR.this (JR.field "TOUCH_BUTTON_SOURCE_ID" (JR.thisField "gameKeyEventFactory"))),
                JR.exec (JR.setField "gameKeyEvent" "" JR.this GameKeyEvent.jstatic_NONE),
                identity,
                (JR.run [ 
                    JR.declare "inputFactory" "" (JR.callStatic InputFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "add_2" (JR.local "inputFactory") [ (JR.invoke "getId_0" JR.this []), JR.this ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "inputToGameKeyMapping", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "gameKey" "" (JR.invoke "getInstance_1" (JR.local "inputToGameKeyMapping") [ (JR.invoke "getId_0" JR.this []) ]), 
                        JR.exec (JR.setField "gameKeyEvent" "" JR.this (JR.invoke "getInstanceForInput_2" (JR.thisField "gameKeyEventFactory") [ JR.this, (JR.local "gameKey") ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "UPDATE" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getSourceId_0 : JR.Method
jm_getSourceId_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "TOUCH_BUTTON_SOURCE_ID") ])
        (jregister jheap)
        jthis
        jargs


jm_getGameKeyEvent_0 : JR.Method
jm_getGameKeyEvent_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "gameKeyEvent") ])
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

