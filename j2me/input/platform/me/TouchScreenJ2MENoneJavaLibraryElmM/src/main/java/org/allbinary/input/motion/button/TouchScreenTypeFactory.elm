module Org.Allbinary.Input.Motion.Button.TouchScreenTypeFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Input.Motion.Button.TouchScreenFactory as TouchScreenFactory


jclass : String
jclass =
    "TouchScreenTypeFactory"


jchain : List String
jchain =
    [ "TouchScreenTypeFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "TouchScreenTypeFactory_0", jm_TouchScreenTypeFactory_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchScreenTypeFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_TouchScreenTypeFactory_0", jm_TouchScreenTypeFactory_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TouchScreenTypeFactory" jclinit "instance"
        (JR.new jnew_0 [])
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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_TouchScreenTypeFactory_0 : JR.Method
jm_TouchScreenTypeFactory_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "touchScreenFactory" "" (JR.callStatic TouchScreenFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "setTouch_1" (JR.local "touchScreenFactory") [ (JR.bool False) ]) ])
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

