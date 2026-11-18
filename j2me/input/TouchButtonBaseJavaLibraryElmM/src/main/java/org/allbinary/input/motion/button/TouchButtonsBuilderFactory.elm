module Org.Allbinary.Input.Motion.Button.TouchButtonsBuilderFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.input.motion.button
-}

import JR
import Org.Allbinary.Input.Motion.Button.NoButtonsTouchInputFactory as NoButtonsTouchInputFactory


jclass : String
jclass =
    "TouchButtonsBuilderFactory"


jchain : List String
jchain =
    [ "TouchButtonsBuilderFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TouchButtonsBuilderFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY", jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY : JR.M
jstatic_NO_TOUCH_BUTTON_BUILDER_FACTORY s =
    JR.static "TouchButtonsBuilderFactory" jclinit "NO_TOUCH_BUTTON_BUILDER_FACTORY"
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
                    JR.return (JR.callStatic NoButtonsTouchInputFactory.jm_getInstance_0 []) ])
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

