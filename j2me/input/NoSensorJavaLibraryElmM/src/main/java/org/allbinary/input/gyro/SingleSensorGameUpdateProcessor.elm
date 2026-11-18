module Org.Allbinary.Input.Gyro.SingleSensorGameUpdateProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.gyro
-}

import JR
import Org.Allbinary.Input.Gyro.SensorGameUpdateProcessor as SensorGameUpdateProcessor


jclass : String
jclass =
    "SingleSensorGameUpdateProcessor"


jchain : List String
jchain =
    [ "SingleSensorGameUpdateProcessor" ]
        ++ SensorGameUpdateProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    SensorGameUpdateProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "process_1", jm_process_1 )
        , ( "sendNotifications_1", jm_sendNotifications_1 ) ]
        SensorGameUpdateProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SingleSensorGameUpdateProcessor"
        [ ( "jm_process_1", jm_process_1 ), ( "jm_sendNotifications_1", jm_sendNotifications_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect SensorGameUpdateProcessor.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_process_1 : JR.Method
jm_process_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_sendNotifications_1 : JR.Method
jm_sendNotifications_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
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

