module Org.Allbinary.Input.Motion.Gesture.Observer.ResolveCompleteMotionGestureListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture.observer
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.CompleteMotionGestureInputEventHandler as CompleteMotionGestureInputEventHandler
import Org.Allbinary.Input.Motion.Gesture.Observer.CompleteMotionGestureListenerInterface as CompleteMotionGestureListenerInterface
import Org.Allbinary.Game.Input.Motion.Action.GameKeyFromMotionGestureEventListener as GameKeyFromMotionGestureEventListener
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Input.Motion.Gesture.Configuration.MotionGestureConfigurationFactory as MotionGestureConfigurationFactory


jclass : String
jclass =
    "ResolveCompleteMotionGestureListener"


jchain : List String
jchain =
    [ "ResolveCompleteMotionGestureListener" ]
        ++ CompleteMotionGestureListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onMotionGestureCompleted_1", jm_onMotionGestureCompleted_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ResolveCompleteMotionGestureListener"
        [ ( "jm_onMotionGestureCompleted_1", jm_onMotionGestureCompleted_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "MotionGesture to CompleteMotionGesture Reciever"), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")) ]), 
                    JR.exec (JR.invoke "addListener_1" (JR.callStatic CompleteMotionGestureInputEventHandler.jm_getInstance_0 []) [ (JR.new GameKeyFromMotionGestureEventListener.jnew_0 []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_onMotionGestureCompleted_1 : JR.Method
jm_onMotionGestureCompleted_1 jheap jthis jargs =
    JR.method [ ( "list", "" ) ] ""
        (JR.run [ 
                    JR.declare "configuration" "" (JR.callStatic MotionGestureConfigurationFactory.jm_getInstance_0 []), 
                    JR.declare "commandActionsList" "" (JR.invoke "getAssociateCommandActionsList_0" (JR.local "configuration") []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "commandActionsList") []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.local "size") (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68602 -> (JR.setLocal "index" "I" (JR.lit jwN68602))) JR.decrement) ]) (JR.run [ 
                        JR.declare "association" "" (JR.aget (JR.field "objectArray" (JR.local "commandActionsList")) (JR.local "index")), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "isMotionGestureArrayEquals_1" (JR.local "association") [ (JR.local "list") ]) (JR.bool True)) (JR.run [ 
                            JR.declare "completeMotionGestureInputEvent" "" (JR.invoke "getCommandAction_0" (JR.local "association") []), 
                            JR.exec (JR.invoke "fireEvent_1" (JR.callStatic CompleteMotionGestureInputEventHandler.jm_getInstance_0 []) [ (JR.local "completeMotionGestureInputEvent") ]), 
                            JR.break ]) identity ]) ] ])
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

