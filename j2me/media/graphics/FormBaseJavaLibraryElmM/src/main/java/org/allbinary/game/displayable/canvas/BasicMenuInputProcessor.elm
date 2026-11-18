module Org.Allbinary.Game.Displayable.Canvas.BasicMenuInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Input.Motion.Gesture.Observer.BaseMotionGestureEventListener as BaseMotionGestureEventListener
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Javax.Microedition.Lcdui.NullCanvas as NullCanvas
import Org.Allbinary.Game.Input.PlayerGameInput as PlayerGameInput


jclass : String
jclass =
    "BasicMenuInputProcessor"


jchain : List String
jchain =
    [ "BasicMenuInputProcessor" ]
        ++ PlayerGameInput.jchain
        ++ BaseMotionGestureEventListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    PlayerGameInput.jfields ++ [ ( "motionGestureEventList", JR.defaultOf "" ), ( "canvas", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onMotionGestureEvent_1", jm_onMotionGestureEvent_1 )
        , ( "onScrolledMotionGestureEvent_1", jm_onScrolledMotionGestureEvent_1 )
        , ( "setCanvas_1", jm_setCanvas_1 )
        , ( "getCanvas_0", jm_getCanvas_0 )
        , ( "processInputList_0", jm_processInputList_0 ) ]
        PlayerGameInput.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicMenuInputProcessor"
        [ ( "jm_onMotionGestureEvent_1", jm_onMotionGestureEvent_1 ), ( "jm_onScrolledMotionGestureEvent_1", jm_onScrolledMotionGestureEvent_1 ), ( "jm_setCanvas_1", jm_setCanvas_1 ), ( "jm_getCanvas_0", jm_getCanvas_0 ), ( "jm_processInputList_0", jm_processInputList_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "gameKeyEventList", "" ), ( "playerInputId", "I" ), ( "gameCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect PlayerGameInput.jinit_3 JR.this [ (JR.local "gameKeyEventList"), (JR.new BasicArrayListD.jnew_0 []), (JR.local "playerInputId") ]),
                JR.exec (JR.setField "motionGestureEventList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "canvas" "" JR.this NullCanvas.jstatic_NULL_CANVAS),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "canvas" "" JR.this (JR.local "gameCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_onMotionGestureEvent_1 : JR.Method
jm_onMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "motionGestureEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "add_1" (JR.thisField "motionGestureEventList") [ (JR.local "motionGestureEvent") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_onScrolledMotionGestureEvent_1 : JR.Method
jm_onScrolledMotionGestureEvent_1 jheap jthis jargs =
    JR.method [ ( "motionGestureEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setCanvas_1 : JR.Method
jm_setCanvas_1 jheap jthis jargs =
    JR.method [ ( "canvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "canvas" "" JR.this (JR.local "canvas")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCanvas_0 : JR.Method
jm_getCanvas_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "canvas") ])
        (jregister jheap)
        jthis
        jargs


jm_processInputList_0 : JR.Method
jm_processInputList_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.map JR.neg (JR.int 1)) ])
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

