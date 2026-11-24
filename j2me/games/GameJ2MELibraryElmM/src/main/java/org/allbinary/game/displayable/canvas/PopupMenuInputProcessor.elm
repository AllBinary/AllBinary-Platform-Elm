module Org.Allbinary.Game.Displayable.Canvas.PopupMenuInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Game.Displayable.Canvas.BasicMenuInputProcessor as BasicMenuInputProcessor
import Javax.Microedition.Lcdui.Canvas as Canvas
import Org.Allbinary.Game.Input.GameInputStrings as GameInputStrings
import Org.Allbinary.Math.RectangleCollisionUtil as RectangleCollisionUtil
import Org.Allbinary.Time.TimeDelayHelper as TimeDelayHelper
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory


jclass : String
jclass =
    "PopupMenuInputProcessor"


jchain : List String
jchain =
    [ "PopupMenuInputProcessor" ]
        ++ BasicMenuInputProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicMenuInputProcessor.jfields ++ [ ( "rectangleCollisionUtil", JR.defaultOf "" ), ( "CLICK_DELAY", JR.defaultOf "I" ), ( "clickTimeHelper", JR.defaultOf "" ), ( "rectangle", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "processInput_1", jm_processInput_1 )
        , ( "processInputList_0", jm_processInputList_0 )
        , ( "processMotionInputs_0", jm_processMotionInputs_0 )
        , ( "processMotionInput_1", jm_processMotionInput_1 ) ]
        BasicMenuInputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PopupMenuInputProcessor"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_processInput_1", jm_processInput_1 ), ( "jm_processInputList_0", jm_processInputList_0 ), ( "jm_processMotionInputs_0", jm_processMotionInputs_0 ), ( "jm_processMotionInput_1", jm_processMotionInput_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "gameKeyEventList", "" ), ( "playerInputId", "I" ), ( "gameCanvas", "" ), ( "rectangle", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicMenuInputProcessor.jinit_3 JR.this [ (JR.local "gameKeyEventList"), (JR.local "playerInputId"), (JR.local "gameCanvas") ]),
                JR.exec (JR.setField "rectangleCollisionUtil" "" JR.this (JR.callStatic RectangleCollisionUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "CLICK_DELAY" "I" JR.this (JR.int 120)),
                JR.exec (JR.setField "clickTimeHelper" "" JR.this (JR.new TimeDelayHelper.jnew_1 [ (JR.thisField "CLICK_DELAY") ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "rectangle" "" JR.this (JR.local "rectangle")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "rectangle", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "rectangle" "" JR.this (JR.local "rectangle")) ])
        (jregister jheap)
        jthis
        jargs


jm_processInput_1 : JR.Method
jm_processInput_1 jheap jthis jargs =
    JR.method [ ( "key", "I" ) ] "I"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "key") Canvas.jstatic_KEY_STAR) (JR.run [ 
                        JR.declare "gameCanvas" "" (JR.invoke "getCanvas_0" JR.this []), 
                        JR.exec (JR.invoke "toggleMenu_0" (JR.local "gameCanvas") []), 
                        JR.return (JR.int 1) ]) identity, 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_processInputList_0 : JR.Method
jm_processInputList_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "motionInputsIndex" "I" (JR.invoke "processMotionInputs_0" JR.this []), 
                        JR.declare "list" "" (JR.invoke "getGameKeyEventList_0" JR.this []), 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                        JR.declare "key" "I" (JR.int 0), 
                        JR.declare "gameKeyEvent" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN75511 -> (JR.setLocal "index" "I" (JR.lit jwN75511))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "gameKeyEvent" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index"))), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "gameKeyEvent") JR.null) (JR.run [ 
                                JR.exec (JR.setLocal "key" "I" (JR.invoke "getKey_0" (JR.local "gameKeyEvent") [])), 
                                JR.ifElse (JR.map2 JR.equals (JR.invoke "processInput_1" JR.this [ (JR.local "key") ]) (JR.int 1)) (JR.run [ 
                                    JR.break ]) identity ]) identity ]) ], 
                        JR.exec (JR.invoke "clear_0" JR.this []), 
                        JR.ifElse (JR.or (JR.map2 JR.greater (JR.local "size") (JR.int 0)) (JR.map2 JR.greaterEquals (JR.local "motionInputsIndex") (JR.int 0))) (JR.run [ 
                            JR.return (JR.int 1) ]) (JR.run [ 
                            JR.return (JR.map JR.neg (JR.int 1)) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "PROCESS_INPUT" (JR.callStatic GameInputStrings.jm_getInstance_0 [])), (JR.local "e") ]), 
                        JR.return (JR.map JR.neg (JR.int 1)) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_processMotionInputs_0 : JR.Method
jm_processMotionInputs_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "lastIndex" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.thisField "motionGestureEventList") []) (JR.int 1)), 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "lastIndex") (JR.int 0)) (JR.run [ 
                        JR.declare "motionGestureEvent" "" (JR.aget (JR.field "objectArray" (JR.thisField "motionGestureEventList")) (JR.local "lastIndex")), 
                        JR.exec (JR.invoke "processMotionInput_1" JR.this [ (JR.local "motionGestureEvent") ]) ]) identity, 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "motionGestureEventList") []), 
                    JR.return (JR.local "lastIndex") ])
        (jregister jheap)
        jthis
        jargs


jm_processMotionInput_1 : JR.Method
jm_processMotionInput_1 jheap jthis jargs =
    JR.method [ ( "motionGestureEvent", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "motionGestureEvent") JR.null) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Exception: Bug"), JR.this, (JR.field "PROCESS_MOTION_INPUT" (JR.thisField "gameInputStrings")) ]), 
                        JR.returnVoid ]) identity, 
                    JR.declare "touchMotionGestureFactory" "" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []), 
                    JR.declare "motionGestureInput" "" (JR.invoke "getMotionGesture_0" (JR.local "motionGestureEvent") []), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "motionGestureInput") (JR.field "RELEASED" (JR.local "touchMotionGestureFactory"))) (JR.run [ 
                        JR.declare "point" "" (JR.invoke "getCurrentPoint_0" (JR.local "motionGestureEvent") []), 
                        JR.declare "rectPoint" "" (JR.invoke "getPoint_0" (JR.thisField "rectangle") []), 
                        JR.ifElse (JR.invoke "isInside_6" (JR.thisField "rectangleCollisionUtil") [ (JR.invoke "getX_0" (JR.local "rectPoint") []), (JR.invoke "getY_0" (JR.local "rectPoint") []), (JR.map2 JR.add (JR.invoke "getMaxX_0" (JR.thisField "rectangle") []) (JR.int 20)), (JR.invoke "getMaxY_0" (JR.thisField "rectangle") []), (JR.invoke "getX_0" (JR.local "point") []), (JR.invoke "getY_0" (JR.local "point") []) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "isTimeTNT_0" (JR.thisField "clickTimeHelper") []) (JR.run [ 
                                JR.declare "gameCanvas" "" (JR.invoke "getCanvas_0" JR.this []), 
                                JR.exec (JR.invoke "toggleMenu_0" (JR.local "gameCanvas") []) ]) identity ]) identity ]) identity ])
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

