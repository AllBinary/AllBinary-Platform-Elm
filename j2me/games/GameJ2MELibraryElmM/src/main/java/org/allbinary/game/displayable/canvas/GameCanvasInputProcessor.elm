module Org.Allbinary.Game.Displayable.Canvas.GameCanvasInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Input.Event.DownGameKeyEventHandler as DownGameKeyEventHandler
import Org.Allbinary.Game.Input.Event.DownKeyEventHandler as DownKeyEventHandler
import Org.Allbinary.Game.Input.Event.GameKeyEventFactory as GameKeyEventFactory
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Game.Input.InputProcessor as InputProcessor
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Input.PlatformInputMappingFactory as PlatformInputMappingFactory
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Game.Input.Event.UpGameKeyEventHandler as UpGameKeyEventHandler


jclass : String
jclass =
    "GameCanvasInputProcessor"


jchain : List String
jchain =
    [ "GameCanvasInputProcessor" ]
        ++ InputProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    InputProcessor.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "allBinaryGameCanvas", JR.defaultOf "" ), ( "downGameKeyEventHandler", JR.defaultOf "" ), ( "upGameKeyEventHandler", JR.defaultOf "" ), ( "downKeyEventHandler", JR.defaultOf "" ), ( "smallIntegerSingletonFactory", JR.defaultOf "" ), ( "inputToGameKeyMapping", JR.defaultOf "" ), ( "NONE", JR.defaultOf "" ), ( "gameKeyEventFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "keyPressedByDevice_2", jm_keyPressedByDevice_2 )
        , ( "keyReleasedByDevice_3", jm_keyReleasedByDevice_3 )
        , ( "removeGameKeyEvent_4", jm_removeGameKeyEvent_4 ) ]
        InputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameCanvasInputProcessor"
        [ ( "jm_keyPressedByDevice_2", jm_keyPressedByDevice_2 ), ( "jm_keyReleasedByDevice_3", jm_keyReleasedByDevice_3 ), ( "jm_removeGameKeyEvent_4", jm_removeGameKeyEvent_4 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
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
                JR.exec (JR.setField "downGameKeyEventHandler" "" JR.this (JR.callStatic DownGameKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "upGameKeyEventHandler" "" JR.this (JR.callStatic UpGameKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "downKeyEventHandler" "" JR.this (JR.callStatic DownKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "smallIntegerSingletonFactory" "" JR.this (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "inputToGameKeyMapping" "" JR.this (JR.invoke "getInputMapping_0" (JR.invoke "getPersistentInputMappingInstance_0" (JR.callStatic PlatformInputMappingFactory.jm_getInstance_0 []) []) [])),
                JR.exec (JR.setField "NONE" "" JR.this (JR.field "NONE" (JR.callStatic GameKeyFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "gameKeyEventFactory" "" JR.this (JR.callStatic GameKeyEventFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "allBinaryGameCanvas" "" JR.this (JR.local "allBinaryGameCanvas")), 
                    JR.exec (JR.invoke "init_1" (JR.thisField "inputToGameKeyMapping") [ (JR.thisField "allBinaryGameCanvas") ]) ]) ])
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
                        JR.declare "gameKey" "" (JR.invoke "getInstanceForCanvas_2" (JR.thisField "inputToGameKeyMapping") [ (JR.thisField "allBinaryGameCanvas"), (JR.local "keyCode") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "gameKey") (JR.thisField "NONE")) (JR.run [ 
                            JR.declare "gameKeyEvent" "" (JR.invoke "getInstanceForInput_2" (JR.thisField "gameKeyEventFactory") [ (JR.thisField "allBinaryGameCanvas"), (JR.local "gameKey") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.thisField "downGameKeyEventHandler") [ (JR.local "gameKeyEvent") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.invoke "getInstanceForDevice_1" (JR.thisField "downGameKeyEventHandler") [ (JR.local "deviceId") ]) [ (JR.local "gameKeyEvent") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NO_KEY" (JR.thisField "gameInputStrings")) ]) [ (JR.local "keyCode") ]) []), JR.this, (JR.field "ADD_KEY_EVENT" (JR.thisField "gameInputStrings")) ]) ]), 
                        JR.declare "keyCodeAsInteger" "" (JR.invoke "getAtNoThrow_1" (JR.thisField "smallIntegerSingletonFactory") [ (JR.local "keyCode") ]), 
                        JR.exec (JR.invoke "fireEventI_1" (JR.thisField "downKeyEventHandler") [ (JR.local "keyCodeAsInteger") ]), 
                        JR.exec (JR.invoke "fireEventI_1" (JR.invoke "getInstanceForDevice_1" (JR.thisField "downKeyEventHandler") [ (JR.local "deviceId") ]) [ (JR.local "keyCodeAsInteger") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Key Event Error"), JR.this, (JR.field "ADD_KEY_EVENT" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_keyReleasedByDevice_3 : JR.Method
jm_keyReleasedByDevice_3 jheap jthis jargs =
    JR.method [ ( "canvas", "" ), ( "keyCode", "I" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "removeGameKeyEvent_4" JR.this [ (JR.local "canvas"), (JR.local "keyCode"), (JR.local "deviceId"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeGameKeyEvent_4 : JR.Method
jm_removeGameKeyEvent_4 jheap jthis jargs =
    JR.method [ ( "canvas", "" ), ( "keyCode", "I" ), ( "deviceId", "I" ), ( "repeated", "Z" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "gameKey" "" (JR.invoke "getInstanceForCanvas_2" (JR.thisField "inputToGameKeyMapping") [ (JR.local "canvas"), (JR.local "keyCode") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "gameKey") (JR.thisField "NONE")) (JR.run [ 
                            JR.declare "gameKeyEventSourceInterface" "" (JR.local "canvas"), 
                            JR.declare "gameKeyEvent" "" (JR.invoke "getInstanceForInput_2" (JR.thisField "gameKeyEventFactory") [ (JR.local "gameKeyEventSourceInterface"), (JR.local "gameKey") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "gameKeyEvent") ]), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.invoke "getInstanceForDevice_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "deviceId") ]) [ (JR.local "gameKeyEvent") ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NO_KEY" (JR.thisField "gameInputStrings")) ]) [ (JR.local "keyCode") ]) []), JR.this, (JR.field "REMOVE_KEY_EVENT" (JR.thisField "gameInputStrings")) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Key Event Error"), JR.this, (JR.field "REMOVE_KEY_EVENT" (JR.thisField "gameInputStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

