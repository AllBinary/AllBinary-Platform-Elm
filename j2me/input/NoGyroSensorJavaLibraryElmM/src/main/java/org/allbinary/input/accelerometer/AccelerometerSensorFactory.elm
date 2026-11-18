module Org.Allbinary.Input.Accelerometer.AccelerometerSensorFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.accelerometer
-}

import JR
import Org.Allbinary.Input.Gyro.AllBinaryOrientationSensor as AllBinaryOrientationSensor
import Org.Allbinary.Game.Configuration.Feature.Features as Features
import Org.Allbinary.Input.Accelerometer.NoAccelerometerSensor as NoAccelerometerSensor
import Org.Allbinary.Game.Configuration.Feature.SensorFeatureFactory as SensorFeatureFactory


jclass : String
jclass =
    "AccelerometerSensorFactory"


jchain : List String
jchain =
    [ "AccelerometerSensorFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AccelerometerSensorFactory"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_allBinaryAccelerometerSensor", jstatic_allBinaryAccelerometerSensor ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_allBinaryAccelerometerSensor : JR.M
jstatic_allBinaryAccelerometerSensor s =
    JR.static "AccelerometerSensorFactory" jclinit "allBinaryAccelerometerSensor"
        AllBinaryOrientationSensor.jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "features" "" (JR.callStatic Features.jm_getInstance_0 []), 
                    JR.declare "sensorFeatureFactory" "" (JR.callStatic SensorFeatureFactory.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "ORIENTATION_SENSORS" (JR.local "sensorFeatureFactory")) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "No Orientation Sensors") ]) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "SIMULATED_ORIENTATION_SENSORS" (JR.local "sensorFeatureFactory")) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "No Simulation Sensors") ]) ]) (JR.run [ 
                    JR.ifElse (JR.invoke "isFeature_1" (JR.local "features") [ (JR.field "NO_ORIENTATION" (JR.local "sensorFeatureFactory")) ]) (JR.run [ 
                        JR.exec (JR.setStatic "AccelerometerSensorFactory.allBinaryAccelerometerSensor" "" (JR.new NoAccelerometerSensor.jnew_0 [])) ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Not Such SensorFeature") ]) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_allBinaryAccelerometerSensor ])
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

