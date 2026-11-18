module Org.Allbinary.Input.Gyro.GyroSensorUpdateProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.gyro
-}

import JR
import Org.Allbinary.Canvas.Processor as Processor


jclass : String
jclass =
    "GyroSensorUpdateProcessor"


jchain : List String
jchain =
    [ "GyroSensorUpdateProcessor" ]
        ++ Processor.jchain


jfields : List ( String, JR.JValue )
jfields =
    Processor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "process_0", jm_process_0 ) ]
        Processor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GyroSensorUpdateProcessor"
        [ ( "jm_process_0", jm_process_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Processor.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
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

