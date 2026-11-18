module Org.Allbinary.Midlet.MidletExitProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.midlet
-}

import JR
import JSystem
import Org.Allbinary.Canvas.Processor as Processor


jclass : String
jclass =
    "MidletExitProcessor"


jchain : List String
jchain =
    [ "MidletExitProcessor" ]
        ++ Processor.jchain


jfields : List ( String, JR.JValue )
jfields =
    Processor.jfields ++ [ ( "midlet", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "process_0", jm_process_0 ) ]
        Processor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MidletExitProcessor"
        [ ( "jm_process_0", jm_process_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "midlet", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Processor.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "midlet" "" JR.this (JR.local "midlet")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callStatic JSystem.jm_exit_1 [ (JR.int 0) ]) ])
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

