module Org.Allbinary.Game.Input.CompleteMotionGestureInputEvent exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Logic.Util.Event.AllBinaryEventObject as AllBinaryEventObject
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Input.CompleteMotionGestureInputInterface as CompleteMotionGestureInputInterface
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Input.Motion.Gesture.TouchMotionGestureFactory as TouchMotionGestureFactory


jclass : String
jclass =
    "CompleteMotionGestureInputEvent"


jchain : List String
jchain =
    [ "CompleteMotionGestureInputEvent" ]
        ++ AllBinaryEventObject.jchain
        ++ CompleteMotionGestureInputInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryEventObject.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "name", JR.defaultOf "" ), ( "motionGestureInput", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setName_1", jm_setName_1 )
        , ( "getName_0", jm_getName_0 )
        , ( "setMotionGestureInput_1", jm_setMotionGestureInput_1 )
        , ( "getMotionGestureInput_0", jm_getMotionGestureInput_0 ) ]
        AllBinaryEventObject.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CompleteMotionGestureInputEvent"
        [ ( "jm_setName_1", jm_setName_1 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_setMotionGestureInput_1", jm_setMotionGestureInput_1 ), ( "jm_getMotionGestureInput_0", jm_getMotionGestureInput_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "motionGestureInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryEventObject.jinit_1 JR.this [ (JR.local "motionGestureInput") ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "name" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "motionGestureInput" "" JR.this (JR.field "NO_MOTION" (JR.callStatic TouchMotionGestureFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setName_1" JR.this [ (JR.local "name") ]), 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "setMotionGestureInput_1" JR.this [ (JR.local "motionGestureInput") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "InputToGameKeyEventAction"), (JR.local "e") ]) ]) ) ] identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "name")) ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_setMotionGestureInput_1 : JR.Method
jm_setMotionGestureInput_1 jheap jthis jargs =
    JR.method [ ( "motionGestureInput", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "motionGestureInput" "" JR.this (JR.local "motionGestureInput")) ])
        (jregister jheap)
        jthis
        jargs


jm_getMotionGestureInput_0 : JR.Method
jm_getMotionGestureInput_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "motionGestureInput") ])
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

