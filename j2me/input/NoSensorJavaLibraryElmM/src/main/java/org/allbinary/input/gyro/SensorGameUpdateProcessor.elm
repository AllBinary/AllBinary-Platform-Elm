module Org.Allbinary.Input.Gyro.SensorGameUpdateProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.gyro
-}

import JR
import Org.Allbinary.Input.NoAllBinarySensor as NoAllBinarySensor


jclass : String
jclass =
    "SensorGameUpdateProcessor"


jchain : List String
jchain =
    [ "SensorGameUpdateProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "inputSensor", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setInputSensor_1", jm_setInputSensor_1 )
        , ( "getInputSensor_0", jm_getInputSensor_0 )
        , ( "process_1", jm_process_1 )
        , ( "sendNotifications_1", jm_sendNotifications_1 )
        , ( "isAnySensor_0", jm_isAnySensor_0 )
        , ( "setNoSensors_0", jm_setNoSensors_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SensorGameUpdateProcessor"
        [ ( "jm_setInputSensor_1", jm_setInputSensor_1 ), ( "jm_getInputSensor_0", jm_getInputSensor_0 ), ( "jm_process_1", jm_process_1 ), ( "jm_sendNotifications_1", jm_sendNotifications_1 ), ( "jm_isAnySensor_0", jm_isAnySensor_0 ), ( "jm_setNoSensors_0", jm_setNoSensors_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "inputSensor" "" JR.this (JR.callStatic NoAllBinarySensor.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setInputSensor_1 : JR.Method
jm_setInputSensor_1 jheap jthis jargs =
    JR.method [ ( "inputSensor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "inputSensor" "" JR.this (JR.local "inputSensor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getInputSensor_0 : JR.Method
jm_getInputSensor_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "inputSensor") ])
        (jregister jheap)
        jthis
        jargs


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


jm_isAnySensor_0 : JR.Method
jm_isAnySensor_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "inputSensor") (JR.callStatic NoAllBinarySensor.jm_getInstance_0 [])) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setNoSensors_0 : JR.Method
jm_setNoSensors_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setInputSensor_1" JR.this [ (JR.callStatic NoAllBinarySensor.jm_getInstance_0 []) ]) ])
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

