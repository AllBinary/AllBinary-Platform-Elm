module Org.Allbinary.Input.Motion.CompleteMotionGestureInputToGameMotionGestureInput exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Input.Motion.Touch.Action.DiagonalDownLeftTouchInputToGameKeyEventAction as DiagonalDownLeftTouchInputToGameKeyEventAction
import Org.Allbinary.Input.Motion.Touch.Action.DiagonalDownRightTouchInputToGameKeyEventAction as DiagonalDownRightTouchInputToGameKeyEventAction
import Org.Allbinary.Input.Motion.Touch.Action.DiagonalUpLeftTouchInputToGameKeyEventAction as DiagonalUpLeftTouchInputToGameKeyEventAction
import Org.Allbinary.Input.Motion.Touch.Action.DiagonalUpRightTouchInputToGameKeyEventAction as DiagonalUpRightTouchInputToGameKeyEventAction
import Org.Allbinary.Input.Motion.Touch.Action.DownTouchInputToGameKeyEventAction as DownTouchInputToGameKeyEventAction
import Org.Allbinary.Input.Motion.Touch.Action.LeftTouchInputToGameKeyEventAction as LeftTouchInputToGameKeyEventAction
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Input.Motion.Gesture.Configuration.MotionGestureConfigurationFactory as MotionGestureConfigurationFactory
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Input.Motion.Touch.Action.ReleaseTouchInputToGameKeyEventAction as ReleaseTouchInputToGameKeyEventAction
import Org.Allbinary.Input.Motion.Touch.Action.RightTouchInputToGameKeyEventAction as RightTouchInputToGameKeyEventAction
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory
import Org.Allbinary.Input.Motion.Touch.Action.UpTouchInputToGameKeyEventAction as UpTouchInputToGameKeyEventAction


jclass : String
jclass =
    "CompleteMotionGestureInputToGameMotionGestureInput"


jchain : List String
jchain =
    [ "CompleteMotionGestureInputToGameMotionGestureInput" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "init_0", jm_init_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CompleteMotionGestureInputToGameMotionGestureInput"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_init_0", jm_init_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "CompleteMotionGestureInputToGameMotionGestureInput" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.try (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "Compound Motion Gestures"), JR.this, (JR.field "INIT" (JR.local "commonStrings")) ]), 
                        JR.declare "motionGestureConfiguration" "" (JR.callStatic MotionGestureConfigurationFactory.jm_getInstance_0 []), 
                        JR.declare "touchMotionGestureFactory" "" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []), 
                        JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "DIAGONAL_DOWN_LEFT" (JR.local "touchMotionGestureFactory")) ]), 
                        JR.exec (JR.invoke "addMotionGestureAction_2" (JR.local "motionGestureConfiguration") [ (JR.local "list"), (JR.callStatic DiagonalDownLeftTouchInputToGameKeyEventAction.jm_getInstance_0 []) ]), 
                        JR.exec (JR.setLocal "list" "" (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "DIAGONAL_DOWN_RIGHT" (JR.local "touchMotionGestureFactory")) ]), 
                        JR.exec (JR.invoke "addMotionGestureAction_2" (JR.local "motionGestureConfiguration") [ (JR.local "list"), (JR.callStatic DiagonalDownRightTouchInputToGameKeyEventAction.jm_getInstance_0 []) ]), 
                        JR.exec (JR.setLocal "list" "" (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "DIAGONAL_UP_LEFT" (JR.local "touchMotionGestureFactory")) ]), 
                        JR.exec (JR.invoke "addMotionGestureAction_2" (JR.local "motionGestureConfiguration") [ (JR.local "list"), (JR.callStatic DiagonalUpLeftTouchInputToGameKeyEventAction.jm_getInstance_0 []) ]), 
                        JR.exec (JR.setLocal "list" "" (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "DIAGONAL_UP_RIGHT" (JR.local "touchMotionGestureFactory")) ]), 
                        JR.exec (JR.invoke "addMotionGestureAction_2" (JR.local "motionGestureConfiguration") [ (JR.local "list"), (JR.callStatic DiagonalUpRightTouchInputToGameKeyEventAction.jm_getInstance_0 []) ]), 
                        JR.exec (JR.setLocal "list" "" (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "LEFT" (JR.local "touchMotionGestureFactory")) ]), 
                        JR.exec (JR.invoke "addMotionGestureAction_2" (JR.local "motionGestureConfiguration") [ (JR.local "list"), (JR.callStatic LeftTouchInputToGameKeyEventAction.jm_getInstance_0 []) ]), 
                        JR.exec (JR.setLocal "list" "" (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "RIGHT" (JR.local "touchMotionGestureFactory")) ]), 
                        JR.exec (JR.invoke "addMotionGestureAction_2" (JR.local "motionGestureConfiguration") [ (JR.local "list"), (JR.callStatic RightTouchInputToGameKeyEventAction.jm_getInstance_0 []) ]), 
                        JR.exec (JR.setLocal "list" "" (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "DOWN" (JR.local "touchMotionGestureFactory")) ]), 
                        JR.exec (JR.invoke "addMotionGestureAction_2" (JR.local "motionGestureConfiguration") [ (JR.local "list"), (JR.callStatic DownTouchInputToGameKeyEventAction.jm_getInstance_0 []) ]), 
                        JR.exec (JR.setLocal "list" "" (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "UP" (JR.local "touchMotionGestureFactory")) ]), 
                        JR.exec (JR.invoke "addMotionGestureAction_2" (JR.local "motionGestureConfiguration") [ (JR.local "list"), (JR.callStatic UpTouchInputToGameKeyEventAction.jm_getInstance_0 []) ]), 
                        JR.exec (JR.setLocal "list" "" (JR.new BasicArrayListD.jnew_0 [])), 
                        JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "RELEASED" (JR.local "touchMotionGestureFactory")) ]), 
                        JR.exec (JR.invoke "addMotionGestureAction_2" (JR.local "motionGestureConfiguration") [ (JR.local "list"), (JR.callStatic ReleaseTouchInputToGameKeyEventAction.jm_getInstance_0 []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "INIT" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

