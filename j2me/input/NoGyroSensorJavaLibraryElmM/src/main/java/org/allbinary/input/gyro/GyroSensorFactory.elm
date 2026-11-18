module Org.Allbinary.Input.Gyro.GyroSensorFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.gyro
-}

import JR
import Org.Allbinary.Input.Gyro.AllBinaryOrientationSensor as AllBinaryOrientationSensor
import Org.Allbinary.Input.Gyro.NoGyroSensor as NoGyroSensor


jclass : String
jclass =
    "GyroSensorFactory"


jchain : List String
jchain =
    [ "GyroSensorFactory" ]


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
    JR.register "GyroSensorFactory"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_allBinaryGyroSensor", jstatic_allBinaryGyroSensor ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_allBinaryGyroSensor : JR.M
jstatic_allBinaryGyroSensor s =
    JR.static "GyroSensorFactory" jclinit "allBinaryGyroSensor"
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
                    JR.exec (JR.setStatic "GyroSensorFactory.allBinaryGyroSensor" "" (JR.new NoGyroSensor.jnew_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_allBinaryGyroSensor ])
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

