module Org.Allbinary.Graphics.Displayable.Screen.ScreenRepaintUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.displayable.screen
-}

import JR



jclass : String
jclass =
    "ScreenRepaintUtil"


jchain : List String
jchain =
    [ "ScreenRepaintUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "repaint_1", jm_repaint_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScreenRepaintUtil"
        [ ( "jm_repaint_1", jm_repaint_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_repaint_1 : JR.Method
jm_repaint_1 jheap jthis jargs =
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

