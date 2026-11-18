module Org.Allbinary.Input.Motion.Touch.Action.ReleaseTouchInputToGameKeyEventAction exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.touch.action
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.Motion.Action.GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEvent
import Org.Allbinary.Game.Input.Event.GameKeyEventFactory as GameKeyEventFactory
import Org.Allbinary.Game.Input.GameKeyFactory as GameKeyFactory
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Game.Input.PlatformInputMappingFactory as PlatformInputMappingFactory
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory


jclass : String
jclass =
    "ReleaseTouchInputToGameKeyEventAction"


jchain : List String
jchain =
    [ "ReleaseTouchInputToGameKeyEventAction" ]
        ++ GameKeyCompleteMotionGestureInputEvent.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameKeyCompleteMotionGestureInputEvent.jfields ++ [ ( "NONE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "update_0", jm_update_0 ) ]
        GameKeyCompleteMotionGestureInputEvent.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ReleaseTouchInputToGameKeyEventAction"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_update_0", jm_update_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ReleaseTouchInputToGameKeyEventAction" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect GameKeyCompleteMotionGestureInputEvent.jinit_3 JR.this [ (JR.str "Release Action"), (JR.field "RELEASED" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 [])), (JR.invoke "getInputMapping_0" (JR.invoke "getPersistentInputMappingInstance_0" (JR.callStatic PlatformInputMappingFactory.jm_getInstance_0 []) []) []) ]),
                JR.exec (JR.setField "NONE" "" JR.this (JR.field "NONE" (JR.callStatic GameKeyFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "setGameKey_1" JR.this [ (JR.thisField "NONE") ]), 
                        JR.exec (JR.invoke "setGameKeyEvent_1" JR.this [ (JR.invoke "getInstanceForInput_2" (JR.callStatic GameKeyEventFactory.jm_getInstance_0 []) [ JR.this, (JR.thisField "NONE") ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ])
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "ReleaseTouchInputToGameKeyEventAction.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        identity
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

