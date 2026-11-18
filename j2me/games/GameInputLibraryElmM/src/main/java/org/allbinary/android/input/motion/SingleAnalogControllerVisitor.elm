module Org.Allbinary.Android.Input.Motion.SingleAnalogControllerVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.android.input.motion
-}

import JR
import Org.Allbinary.Android.Input.Motion.AnalogControllerVisitor as AnalogControllerVisitor
import Org.Allbinary.Game.Input.Analog.AnalogLocationInputFactory as AnalogLocationInputFactory


jclass : String
jclass =
    "SingleAnalogControllerVisitor"


jchain : List String
jchain =
    [ "SingleAnalogControllerVisitor" ]
        ++ AnalogControllerVisitor.jchain


jfields : List ( String, JR.JValue )
jfields =
    AnalogControllerVisitor.jfields ++ [ ( "playerInputId", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "process_2", jm_process_2 ) ]
        AnalogControllerVisitor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SingleAnalogControllerVisitor"
        [ ( "jm_process_2", jm_process_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "playerInputId", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AnalogControllerVisitor.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "playerInputId" "I" JR.this (JR.local "playerInputId")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "analogLocationInputProcessor", "" ) ] ""
        (JR.run [ 
                    JR.declare "analogLocationInput" "" (JR.invoke "getInstanceForPlayer_1" (JR.callStatic AnalogLocationInputFactory.jm_getInstance_0 []) [ (JR.thisField "playerInputId") ]), 
                    JR.exec (JR.invoke "process_2" (JR.local "analogLocationInputProcessor") [ (JR.local "allbinaryLayerManager"), (JR.local "analogLocationInput") ]) ])
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

