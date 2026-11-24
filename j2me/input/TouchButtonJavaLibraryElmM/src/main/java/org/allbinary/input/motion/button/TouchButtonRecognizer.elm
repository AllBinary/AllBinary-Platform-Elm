module Org.Allbinary.Input.Motion.Button.TouchButtonRecognizer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Input.Motion.Button.BasicTouchInputFactory as BasicTouchInputFactory
import Org.Allbinary.Input.Motion.Button.CurrentlyPressedTouchButtonSingleton as CurrentlyPressedTouchButtonSingleton
import Org.Allbinary.Game.Input.Event.DownGameKeyEventHandler as DownGameKeyEventHandler
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Input.Motion.Button.MultitouchReleaseHelper as MultitouchReleaseHelper
import Org.Allbinary.Math.RectangleCollisionUtil as RectangleCollisionUtil
import Org.Allbinary.Input.Motion.Button.ReleaseHelper as ReleaseHelper
import Org.Allbinary.Input.Motion.Button.TouchButtonFactory as TouchButtonFactory
import Org.Allbinary.Input.Motion.Button.TouchScreenFactory as TouchScreenFactory
import Org.Allbinary.Game.Input.Event.UpGameKeyEventHandler as UpGameKeyEventHandler


jclass : String
jclass =
    "TouchButtonRecognizer"


jchain : List String
jchain =
    [ "TouchButtonRecognizer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "rectangleCollisionUtil", JR.defaultOf "" ), ( "upGameKeyEventHandler", JR.defaultOf "" ), ( "downGameKeyEventHandler", JR.defaultOf "" ), ( "lastPressedTouchButtonInput", JR.defaultOf "" ), ( "currentlyPressedTouchButtonSingleton", JR.defaultOf "" ), ( "releaseHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "processRelease_2", jm_processRelease_2 )
        , ( "releaseTouchButtonInput_3", jm_releaseTouchButtonInput_3 )
        , ( "pressTouchButtonInput_3", jm_pressTouchButtonInput_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonRecognizer"
        [ ( "jm_processRelease_2", jm_processRelease_2 ), ( "jm_releaseTouchButtonInput_3", jm_releaseTouchButtonInput_3 ), ( "jm_pressTouchButtonInput_3", jm_pressTouchButtonInput_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "rectangleCollisionUtil" "" JR.this (JR.callStatic RectangleCollisionUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "upGameKeyEventHandler" "" JR.this (JR.callStatic UpGameKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "downGameKeyEventHandler" "" JR.this (JR.callStatic DownGameKeyEventHandler.jm_getInstance_0 [])),
                JR.exec (JR.setField "lastPressedTouchButtonInput" "" JR.this (JR.field "NONE" (JR.callStatic BasicTouchInputFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "currentlyPressedTouchButtonSingleton" "" JR.this (JR.callStatic CurrentlyPressedTouchButtonSingleton.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.invoke "isMultiTouch_0" (JR.callStatic TouchScreenFactory.jm_getInstance_0 []) []) (JR.run [ 
                        JR.exec (JR.setField "releaseHelper" "" JR.this (JR.new MultitouchReleaseHelper.jnew_1 [ JR.this ])) ]) (JR.run [ 
                        JR.exec (JR.setField "releaseHelper" "" JR.this (JR.new ReleaseHelper.jnew_1 [ JR.this ])) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_processRelease_2 : JR.Method
jm_processRelease_2 jheap jthis jargs =
    JR.method [ ( "touchButtonInput", "" ), ( "deviceId", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "release_2" (JR.thisField "releaseHelper") [ (JR.local "touchButtonInput"), (JR.local "deviceId") ]), 
                    JR.declare "gameKeyEvent" "" (JR.invoke "getGameKeyEvent_0" (JR.local "touchButtonInput") []), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "gameKeyEvent") ]), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.invoke "getInstanceForDevice_1" (JR.thisField "upGameKeyEventHandler") [ (JR.local "deviceId") ]) [ (JR.local "gameKeyEvent") ]), 
                    JR.exec (JR.invoke "remove_1" (JR.thisField "currentlyPressedTouchButtonSingleton") [ (JR.local "touchButtonInput") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_releaseTouchButtonInput_3 : JR.Method
jm_releaseTouchButtonInput_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ) ] "Z"
        (JR.run [ 
                    JR.declare "touchButtonInput" "" (JR.thisField "lastPressedTouchButtonInput"), 
                    JR.ifElse (JR.invoke "contains_1" (JR.thisField "currentlyPressedTouchButtonSingleton") [ (JR.local "touchButtonInput") ]) (JR.run [ 
                        JR.exec (JR.setField "lastPressedTouchButtonInput" "" JR.this (JR.field "NONE" (JR.callStatic BasicTouchInputFactory.jm_getInstance_0 []))), 
                        JR.exec (JR.invoke "processRelease_2" JR.this [ (JR.local "touchButtonInput"), (JR.local "deviceId") ]), 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.declare "list" "" (JR.invoke "getList_0" (JR.callStatic TouchButtonFactory.jm_getInstance_0 []) []), 
                        JR.declare "rectangle" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "point" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "touchButton" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.local "list") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69989 -> (JR.setLocal "index" "I" (JR.lit jwN69989))) JR.decrement) ]) (JR.run [ 
                            JR.exec (JR.setLocal "touchButton" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                            JR.exec (JR.setLocal "rectangle" "" (JR.invoke "getRectangle_0" (JR.local "touchButton") [])), 
                            JR.exec (JR.setLocal "point" "" (JR.invoke "getPoint_0" (JR.local "rectangle") [])), 
                            JR.ifElse (JR.invoke "isInside_6" (JR.thisField "rectangleCollisionUtil") [ (JR.invoke "getX_0" (JR.local "point") []), (JR.invoke "getY_0" (JR.local "point") []), (JR.invoke "getMaxX_0" (JR.local "rectangle") []), (JR.invoke "getMaxY_0" (JR.local "rectangle") []), (JR.local "x"), (JR.local "y") ]) (JR.run [ 
                                JR.exec (JR.setLocal "touchButtonInput" "" (JR.invoke "getTouchButtonInput_0" (JR.local "touchButton") [])), 
                                JR.exec (JR.invoke "processRelease_2" JR.this [ (JR.local "touchButtonInput"), (JR.local "deviceId") ]), 
                                JR.return (JR.bool True) ]) identity ]) ] ]), 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_pressTouchButtonInput_3 : JR.Method
jm_pressTouchButtonInput_3 jheap jthis jargs =
    JR.method [ ( "x", "I" ), ( "y", "I" ), ( "deviceId", "I" ) ] "Z"
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getList_0" (JR.callStatic TouchButtonFactory.jm_getInstance_0 []) []), 
                    JR.declare "rectangle" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "point" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "touchButton" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "touchButtonInput" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "gameKeyEvent" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.local "list") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71035 -> (JR.setLocal "index" "I" (JR.lit jwN71035))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "touchButton" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                        JR.exec (JR.setLocal "rectangle" "" (JR.invoke "getRectangle_0" (JR.local "touchButton") [])), 
                        JR.exec (JR.setLocal "point" "" (JR.invoke "getPoint_0" (JR.local "rectangle") [])), 
                        JR.ifElse (JR.invoke "isInside_6" (JR.thisField "rectangleCollisionUtil") [ (JR.invoke "getX_0" (JR.local "point") []), (JR.invoke "getY_0" (JR.local "point") []), (JR.invoke "getMaxX_0" (JR.local "rectangle") []), (JR.invoke "getMaxY_0" (JR.local "rectangle") []), (JR.local "x"), (JR.local "y") ]) (JR.run [ 
                            JR.exec (JR.setLocal "touchButtonInput" "" (JR.invoke "getTouchButtonInput_0" (JR.local "touchButton") [])), 
                            JR.ifElse (JR.map JR.not_ (JR.invoke "contains_1" (JR.thisField "currentlyPressedTouchButtonSingleton") [ (JR.local "touchButtonInput") ])) (JR.run [ 
                                JR.exec (JR.invoke "release_2" (JR.thisField "releaseHelper") [ (JR.local "touchButtonInput"), (JR.local "deviceId") ]), 
                                JR.exec (JR.setField "lastPressedTouchButtonInput" "" JR.this (JR.local "touchButtonInput")), 
                                JR.exec (JR.invoke "add_1" (JR.thisField "currentlyPressedTouchButtonSingleton") [ (JR.local "touchButtonInput") ]), 
                                JR.exec (JR.setLocal "gameKeyEvent" "" (JR.invoke "getGameKeyEvent_0" (JR.local "touchButtonInput") [])), 
                                JR.exec (JR.invoke "fireEvent_1" (JR.thisField "downGameKeyEventHandler") [ (JR.local "gameKeyEvent") ]), 
                                JR.exec (JR.invoke "fireEvent_1" (JR.invoke "getInstanceForDevice_1" (JR.thisField "downGameKeyEventHandler") [ (JR.local "deviceId") ]) [ (JR.local "gameKeyEvent") ]) ]) identity, 
                            JR.return (JR.bool True) ]) identity ]) ], 
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

