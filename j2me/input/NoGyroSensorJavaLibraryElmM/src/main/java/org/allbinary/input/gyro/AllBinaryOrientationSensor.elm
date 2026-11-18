module Org.Allbinary.Input.Gyro.AllBinaryOrientationSensor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.gyro
-}

import JR
import Org.Allbinary.Input.AllBinarySensor as AllBinarySensor
import Org.Allbinary.Game.Input.Motion.Action.NoCompleteMotionGestureInputEventListener as NoCompleteMotionGestureInputEventListener


jclass : String
jclass =
    "AllBinaryOrientationSensor"


jchain : List String
jchain =
    [ "AllBinaryOrientationSensor" ]
        ++ AllBinarySensor.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinarySensor.jfields ++ [ ( "listener", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setListener_1", jm_setListener_1 )
        , ( "getOrientation_0", jm_getOrientation_0 ) ]
        AllBinarySensor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryOrientationSensor"
        [ ( "jm_setListener_1", jm_setListener_1 ), ( "jm_getOrientation_0", jm_getOrientation_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR", jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR : JR.M
jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR s =
    JR.static "AllBinaryOrientationSensor" jclinit "NULL_ALLBINARY_ORIENTATION_SENSOR"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect AllBinarySensor.jinit_0 JR.this []),
                JR.exec (JR.setField "listener" "" JR.this (JR.callStatic NoCompleteMotionGestureInputEventListener.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setListener_1 : JR.Method
jm_setListener_1 jheap jthis jargs =
    JR.method [ ( "completeMotionGestureInputEventListenerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "listener" "" JR.this (JR.local "completeMotionGestureInputEventListenerInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_getOrientation_0 : JR.Method
jm_getOrientation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
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

