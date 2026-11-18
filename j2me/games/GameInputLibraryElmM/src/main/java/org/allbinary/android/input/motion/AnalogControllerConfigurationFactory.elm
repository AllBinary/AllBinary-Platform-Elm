module Org.Allbinary.Android.Input.Motion.AnalogControllerConfigurationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.android.input.motion
-}

import JR
import Org.Allbinary.Android.Input.Motion.Event.AnalogControllerConfigurationEvent as AnalogControllerConfigurationEvent
import Org.Allbinary.Android.Input.Motion.Event.AnalogControllerConfigurationEventHandler as AnalogControllerConfigurationEventHandler
import Org.Allbinary.Logic.Math.ScaleFactorFactory as ScaleFactorFactory


jclass : String
jclass =
    "AnalogControllerConfigurationFactory"


jchain : List String
jchain =
    [ "AnalogControllerConfigurationFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "SCALE_FACTOR", JR.defaultOf "I" ), ( "SCALE_VALUE", JR.defaultOf "I" ), ( "available", JR.defaultOf "Z" ), ( "analogControllerConfigurationEvent", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isAvailable_0", jm_isAvailable_0 )
        , ( "setAvailable_1", jm_setAvailable_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnalogControllerConfigurationFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isAvailable_0", jm_isAvailable_0 ), ( "jm_setAvailable_1", jm_setAvailable_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AnalogControllerConfigurationFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "SCALE_FACTOR" "I" JR.this (JR.field "DEFAULT_SCALE_FACTOR" (JR.callStatic ScaleFactorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "SCALE_VALUE" "I" JR.this (JR.field "DEFAULT_SCALE_VALUE" (JR.callStatic ScaleFactorFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "analogControllerConfigurationEvent" "" JR.this (JR.new AnalogControllerConfigurationEvent.jnew_1 [ JR.this ])),
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_isAvailable_0 : JR.Method
jm_isAvailable_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "available") ])
        (jregister jheap)
        jthis
        jargs


jm_setAvailable_1 : JR.Method
jm_setAvailable_1 jheap jthis jargs =
    JR.method [ ( "available", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "available" "Z" JR.this (JR.local "available")), 
                    JR.exec (JR.invoke "fireEvent_1" (JR.callStatic AnalogControllerConfigurationEventHandler.jm_getInstance_0 []) [ (JR.thisField "analogControllerConfigurationEvent") ]) ])
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

