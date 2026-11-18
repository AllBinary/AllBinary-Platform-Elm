module Org.Allbinary.Input.Gyro.NoGyroSensor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.gyro
-}

import JR
import Org.Allbinary.Input.Gyro.AllBinaryOrientationSensor as AllBinaryOrientationSensor
import Org.Allbinary.Input.AllBinarySensorListener as AllBinarySensorListener
import Org.Allbinary.Logic.Math.Orientation as Orientation


jclass : String
jclass =
    "NoGyroSensor"


jchain : List String
jchain =
    [ "NoGyroSensor" ]
        ++ AllBinaryOrientationSensor.jchain
        ++ AllBinarySensorListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryOrientationSensor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getOrientation_0", jm_getOrientation_0 )
        , ( "onSensorChange_0", jm_onSensorChange_0 ) ]
        AllBinaryOrientationSensor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoGyroSensor"
        [ ( "jm_getOrientation_0", jm_getOrientation_0 ), ( "jm_onSensorChange_0", jm_onSensorChange_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryOrientationSensor.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.thisField "commonStrings")), JR.this, (JR.field "CONSTRUCTOR" (JR.thisField "commonStrings")) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getOrientation_0 : JR.Method
jm_getOrientation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return Orientation.jstatic_NONE ])
        (jregister jheap)
        jthis
        jargs


jm_onSensorChange_0 : JR.Method
jm_onSensorChange_0 jheap jthis jargs =
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

