module Org.Allbinary.Game.Configuration.Feature.SensorFeatureFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Org.Allbinary.Game.Configuration.Feature.SensorFeature as SensorFeature


jclass : String
jclass =
    "SensorFeatureFactory"


jchain : List String
jchain =
    [ "SensorFeatureFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NO_ORIENTATION", JR.defaultOf "" ), ( "ORIENTATION_SENSORS", JR.defaultOf "" ), ( "SIMULATED_ORIENTATION_SENSORS", JR.defaultOf "" ), ( "YAW", JR.defaultOf "" ), ( "YAW_MINUS_RIGHT_PLUS_LEFT", JR.defaultOf "" ), ( "YAW_MINUS_LEFT_PLUS_RIGHT", JR.defaultOf "" ), ( "PITCH", JR.defaultOf "" ), ( "ROLL", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SensorFeatureFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SensorFeatureFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NO_ORIENTATION" "" JR.this (JR.new SensorFeature.jnew_1 [ (JR.str "No Orientation") ])),
                JR.exec (JR.setField "ORIENTATION_SENSORS" "" JR.this (JR.new SensorFeature.jnew_1 [ (JR.str "Orientation Sensors") ])),
                JR.exec (JR.setField "SIMULATED_ORIENTATION_SENSORS" "" JR.this (JR.new SensorFeature.jnew_1 [ (JR.str "Simulated Orientation Sensors") ])),
                JR.exec (JR.setField "YAW" "" JR.this (JR.new SensorFeature.jnew_1 [ (JR.str "Yaw") ])),
                JR.exec (JR.setField "YAW_MINUS_RIGHT_PLUS_LEFT" "" JR.this (JR.new SensorFeature.jnew_1 [ (JR.str "Yaw -Right +Left") ])),
                JR.exec (JR.setField "YAW_MINUS_LEFT_PLUS_RIGHT" "" JR.this (JR.new SensorFeature.jnew_1 [ (JR.str "Yaw -Left +Right ") ])),
                JR.exec (JR.setField "PITCH" "" JR.this (JR.new SensorFeature.jnew_1 [ (JR.str "Pitch") ])),
                JR.exec (JR.setField "ROLL" "" JR.this (JR.new SensorFeature.jnew_1 [ (JR.str "Roll") ])),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

