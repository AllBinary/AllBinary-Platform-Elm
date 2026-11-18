module Org.Allbinary.View.NullEmulatorView exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.view
-}

import JR
import Org.Allbinary.View.EmulatorViewInterface as EmulatorViewInterface


jclass : String
jclass =
    "NullEmulatorView"


jchain : List String
jchain =
    [ "NullEmulatorView" ]
        ++ EmulatorViewInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "setMidlet_1", jm_setMidlet_1 )
        , ( "onEmulatorInitComplete_1", jm_onEmulatorInitComplete_1 )
        , ( "onSetDisplayable_1", jm_onSetDisplayable_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullEmulatorView"
        [ ( "jm_setMidlet_1", jm_setMidlet_1 ), ( "jm_onEmulatorInitComplete_1", jm_onEmulatorInitComplete_1 ), ( "jm_onSetDisplayable_1", jm_onSetDisplayable_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_EMULATOR_VIEW", jstatic_NULL_EMULATOR_VIEW ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_EMULATOR_VIEW : JR.M
jstatic_NULL_EMULATOR_VIEW s =
    JR.static "NullEmulatorView" jclinit "NULL_EMULATOR_VIEW"
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


jm_setMidlet_1 : JR.Method
jm_setMidlet_1 jheap jthis jargs =
    JR.method [ ( "midlet", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onEmulatorInitComplete_1 : JR.Method
jm_onEmulatorInitComplete_1 jheap jthis jargs =
    JR.method [ ( "midletActivity", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onSetDisplayable_1 : JR.Method
jm_onSetDisplayable_1 jheap jthis jargs =
    JR.method [ ( "displayable", "" ) ] ""
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

