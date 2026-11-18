module Org.Allbinary.Graphics.Displayable.Screen.ScreenRepaintProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable.screen
-}

import JR
import Org.Allbinary.Canvas.Processor as Processor
import Org.Allbinary.Graphics.Displayable.Screen.ScreenRepaintUtil as ScreenRepaintUtil


jclass : String
jclass =
    "ScreenRepaintProcessor"


jchain : List String
jchain =
    [ "ScreenRepaintProcessor" ]
        ++ Processor.jchain


jfields : List ( String, JR.JValue )
jfields =
    Processor.jfields ++ [ ( "displayable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "process_0", jm_process_0 ) ]
        Processor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScreenRepaintProcessor"
        [ ( "jm_process_0", jm_process_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "displayable", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Processor.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "displayable" "" JR.this (JR.local "displayable")) ]) ])
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
                    JR.exec (JR.callStatic ScreenRepaintUtil.jm_repaint_1 [ (JR.thisField "displayable") ]) ])
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

