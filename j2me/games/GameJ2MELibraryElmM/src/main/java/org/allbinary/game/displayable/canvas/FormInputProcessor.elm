module Org.Allbinary.Game.Displayable.Canvas.FormInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.Event.DownKeyEventHandler as DownKeyEventHandler
import Org.Allbinary.Game.Input.Event.GameKeyEventFactory as GameKeyEventFactory
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import Org.Allbinary.Game.Input.InputProcessor as InputProcessor
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Input.PlatformKeyFactory as PlatformKeyFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Game.Input.Event.UpGameKeyEventHandler as UpGameKeyEventHandler


jclass : String
jclass =
    "FormInputProcessor"


jchain : List String
jchain =
    [ "FormInputProcessor" ]
        ++ InputProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    InputProcessor.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "gameKeyEventFactory", JR.defaultOf "" ), ( "downKeyEventHandler", JR.defaultOf "" ), ( "upGameKeyEventHandler", JR.defaultOf "" ), ( "inputFactory", JR.defaultOf "" ), ( "platformKeyFactory", JR.defaultOf "" ), ( "allBinaryGameCanvas", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "keyPressedByDevice_2", jm_keyPressedByDevice_2 )
        , ( "keyReleasedByDevice_3", jm_keyReleasedByDevice_3 ) ]
        InputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FormInputProcessor"
        [ ( "jm_keyPressedByDevice_2", jm_keyPressedByDevice_2 ), ( "jm_keyReleasedByDevice_3", jm_keyReleasedByDevice_3 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "allBinaryGameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect InputProcessor.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "gameKeyEventFactory" "" JR.this (JR.callStatic GameKeyEventFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "downKeyEventHandler" "" JR.this (JR.callStatic DownKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "upGameKeyEventHandler" "" JR.this (JR.callStatic UpGameKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "inputFactory" "" JR.this (JR.callStatic InputFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "platformKeyFactory" "" JR.this (JR.callStatic PlatformKeyFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "allBinaryGameCanvas" "" JR.this (JR.local "allBinaryGameCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_keyPressedByDevice_2 : JR.Method
jm_keyPressedByDevice_2 jheap jthis jargs =
    JR.method [ ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "KEY_CODE_LABEL" (JR.thisField "inputFactory")) ]) [ (JR.local "keyCode") ]) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.field "DEVICE_ID_LABEL" (JR.thisField "inputFactory")) ]) [ (JR.local "deviceId") ]) []), JR.this, (JR.field "KEY_PRESSED" (JR.thisField "gameInputStrings")) ]), 
                        JR.declare "input" "" (JR.invoke "getInstanceById_1" (JR.thisField "inputFactory") [ (JR.local "keyCode") ]), 
                        JR.declare "gameKeyEvent" "" (JR.invoke "getInstanceForInput_2" (JR.thisField "gameKeyEventFactory") [ (JR.thisField "allBinaryGameCanvas"), (JR.local "input") ]), 
                        JR.exec (JR.invoke "fireEventForGameKeyEvent_1" (JR.thisField "downKeyEventHandler") [ (JR.local "gameKeyEvent") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ADD_KEY_EVENT" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_keyReleasedByDevice_3 : JR.Method
jm_keyReleasedByDevice_3 jheap jthis jargs =
    JR.method [ ( "canvas", "" ), ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "input" "" (JR.invoke "getInstanceById_1" (JR.thisField "inputFactory") [ (JR.local "keyCode") ]), 
                        JR.ifElse (JR.invoke "isEnter_1" (JR.thisField "platformKeyFactory") [ (JR.local "input") ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "KEY_CODE_LABEL" (JR.thisField "inputFactory")) ]) [ (JR.local "keyCode") ]) [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.field "DEVICE_ID_LABEL" (JR.thisField "inputFactory")) ]) [ (JR.local "deviceId") ]) []), JR.this, (JR.field "KEY_RELEASED" (JR.thisField "gameInputStrings")) ]), 
                            JR.declare "gameKey" "" (JR.field "KEY_NUM0" (JR.callStatic GameKeyFactory.jm_getInstance_0 [])), 
                            JR.declare "gameKeyEventSourceInterface" "" (JR.local "canvas"), 
                            JR.declare "gameKeyEvent" "" (JR.invoke "getInstanceForInput_2" (JR.thisField "gameKeyEventFactory") [ (JR.local "gameKeyEventSourceInterface"), (JR.local "gameKey") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "gameKeyEvent") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.invoke "getInstanceForDevice_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "deviceId") ]) [ (JR.local "gameKeyEvent") ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ADD_KEY_EVENT" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

