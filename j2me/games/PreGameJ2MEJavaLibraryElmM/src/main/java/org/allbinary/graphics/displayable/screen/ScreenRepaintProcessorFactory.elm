module Org.Allbinary.Graphics.Displayable.Screen.ScreenRepaintProcessorFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable.screen
-}

import JR
import Org.Allbinary.J2MEUtil as J2MEUtil
import Org.Allbinary.Canvas.Processor as Processor
import Org.Allbinary.Graphics.Displayable.Screen.ScreenRepaintProcessor as ScreenRepaintProcessor


jclass : String
jclass =
    "ScreenRepaintProcessorFactory"


jchain : List String
jchain =
    [ "ScreenRepaintProcessorFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "create_1", jm_create_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScreenRepaintProcessorFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_create_1", jm_create_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ScreenRepaintProcessorFactory" jclinit "instance"
        (JR.new jnew_0 [])
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
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_create_1 : JR.Method
jm_create_1 jheap jthis jargs =
    JR.method [ ( "displayable", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ (JR.callStatic J2MEUtil.jm_isJ2ME_0 [])) (JR.run [ 
                        JR.return (JR.new ScreenRepaintProcessor.jnew_1 [ (JR.local "displayable") ]) ]) (JR.run [ 
                        JR.return (JR.callStatic Processor.jm_getInstance_0 []) ]) ])
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

