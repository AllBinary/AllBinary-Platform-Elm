module Org.Allbinary.Graphics.ScreenEmptyListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR
import Org.Allbinary.Graphics.ScreenListenerInterface as ScreenListenerInterface


jclass : String
jclass =
    "ScreenEmptyListener"


jchain : List String
jchain =
    [ "ScreenEmptyListener" ]
        ++ ScreenListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "onFullScreen_1", jm_onFullScreen_1 )
        , ( "onFullScreenDisplay_0", jm_onFullScreenDisplay_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScreenEmptyListener"
        [ ( "jm_onFullScreen_1", jm_onFullScreen_1 ), ( "jm_onFullScreenDisplay_0", jm_onFullScreenDisplay_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_onFullScreen_1 : JR.Method
jm_onFullScreen_1 jheap jthis jargs =
    JR.method [ ( "isFullScreen", "Z" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onFullScreenDisplay_0 : JR.Method
jm_onFullScreenDisplay_0 jheap jthis jargs =
    JR.method [] ""
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

