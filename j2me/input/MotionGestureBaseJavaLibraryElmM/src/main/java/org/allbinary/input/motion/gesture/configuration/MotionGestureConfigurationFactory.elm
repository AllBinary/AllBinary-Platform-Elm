module Org.Allbinary.Input.Motion.Gesture.Configuration.MotionGestureConfigurationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.gesture.configuration
-}

import JR
import Org.Allbinary.Input.Motion.Gesture.Configuration.MotionGestureConfiguration as MotionGestureConfiguration


jclass : String
jclass =
    "MotionGestureConfigurationFactory"


jchain : List String
jchain =
    [ "MotionGestureConfigurationFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MotionGestureConfigurationFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_config", jstatic_config ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_config : JR.M
jstatic_config s =
    JR.static "MotionGestureConfigurationFactory" jclinit "config"
        (JR.new MotionGestureConfiguration.jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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
                    JR.return jstatic_config ])
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

