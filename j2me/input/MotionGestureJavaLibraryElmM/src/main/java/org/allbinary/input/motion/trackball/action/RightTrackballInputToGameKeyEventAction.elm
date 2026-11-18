module Org.Allbinary.Input.Motion.Trackball.Action.RightTrackballInputToGameKeyEventAction exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.trackball.action
-}

import JR
import Org.Allbinary.Game.Input.Motion.Action.GameKeyCompleteMotionGestureInputEvent as GameKeyCompleteMotionGestureInputEvent
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Game.Input.PlatformInputMappingFactory as PlatformInputMappingFactory
import Org.Allbinary.Input.Motion.Gesture.TrackballMotionGestureFactory as TrackballMotionGestureFactory


jclass : String
jclass =
    "RightTrackballInputToGameKeyEventAction"


jchain : List String
jchain =
    [ "RightTrackballInputToGameKeyEventAction" ]
        ++ GameKeyCompleteMotionGestureInputEvent.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameKeyCompleteMotionGestureInputEvent.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        GameKeyCompleteMotionGestureInputEvent.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RightTrackballInputToGameKeyEventAction"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "RightTrackballInputToGameKeyEventAction" jclinit "instance"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect GameKeyCompleteMotionGestureInputEvent.jinit_3 JR.this [ (JR.str "Right Action"), (JR.field "RIGHT" (JR.callStatic TrackballMotionGestureFactory.jm_getInstance_0 [])), (JR.invoke "getInputMapping_0" (JR.invoke "getPersistentInputMappingInstance_0" (JR.callStatic PlatformInputMappingFactory.jm_getInstance_0 []) []) []) ]),
                identity,
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
                    JR.ifElse (JR.map2 JR.equals jstatic_instance (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "RightTrackballInputToGameKeyEventAction.instance" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_instance ])
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

