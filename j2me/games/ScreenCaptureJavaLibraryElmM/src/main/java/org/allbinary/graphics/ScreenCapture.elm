module Org.Allbinary.Graphics.ScreenCapture exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics
-}

import JR



jclass : String
jclass =
    "ScreenCapture"


jchain : List String
jchain =
    [ "ScreenCapture" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "saveFrame_0", jm_saveFrame_0 )
        , ( "startRecording_0", jm_startRecording_0 )
        , ( "endRecording_0", jm_endRecording_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScreenCapture"
        [ ( "jm_saveFrame_0", jm_saveFrame_0 ), ( "jm_startRecording_0", jm_startRecording_0 ), ( "jm_endRecording_0", jm_endRecording_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_saveFrame_0 : JR.Method
jm_saveFrame_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_startRecording_0 : JR.Method
jm_startRecording_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_endRecording_0 : JR.Method
jm_endRecording_0 jheap jthis jargs =
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

