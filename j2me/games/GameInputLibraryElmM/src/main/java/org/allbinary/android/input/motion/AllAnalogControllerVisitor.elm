module Org.Allbinary.Android.Input.Motion.AllAnalogControllerVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.android.input.motion
-}

import JR
import Org.Allbinary.Android.Input.Motion.AnalogControllerVisitor as AnalogControllerVisitor
import Org.Allbinary.Game.Input.Analog.AnalogLocationInputFactory as AnalogLocationInputFactory


jclass : String
jclass =
    "AllAnalogControllerVisitor"


jchain : List String
jchain =
    [ "AllAnalogControllerVisitor" ]
        ++ AnalogControllerVisitor.jchain


jfields : List ( String, JR.JValue )
jfields =
    AnalogControllerVisitor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "process_2", jm_process_2 ) ]
        AnalogControllerVisitor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllAnalogControllerVisitor"
        [ ( "jm_process_2", jm_process_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect AnalogControllerVisitor.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "analogLocationInputProcessor", "" ) ] ""
        (JR.run [ 
                    JR.declare "analogLocationInputList" "" (JR.invoke "getList_0" (JR.callStatic AnalogLocationInputFactory.jm_getInstance_0 []) []), 
                    JR.declare "analogLocationInput" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.invoke "size_0" (JR.local "analogLocationInputList") []) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67835 -> (JR.setLocal "index" "I" (JR.lit jwN67835))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "analogLocationInput" "" (JR.invoke "get_1" (JR.local "analogLocationInputList") [ (JR.local "index") ])), 
                        JR.exec (JR.invoke "process_2" (JR.local "analogLocationInputProcessor") [ (JR.local "allbinaryLayerManager"), (JR.local "analogLocationInput") ]) ]) ] ])
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

