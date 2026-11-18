module Org.Allbinary.Media.Audio.NullAudioFormat exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR



jclass : String
jclass =
    "NullAudioFormat"


jchain : List String
jchain =
    [ "NullAudioFormat" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullAudioFormat"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_AUDIO_FORMAT", jstatic_NULL_AUDIO_FORMAT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_AUDIO_FORMAT : JR.M
jstatic_NULL_AUDIO_FORMAT s =
    JR.static "NullAudioFormat" jclinit "NULL_AUDIO_FORMAT"
        (JR.new (JR.namedMethod "AudioFormat.jnew_7") [ (JR.field "PCM_UNSIGNED" (JR.namedStatic "AudioFormat.jstatic_Encoding")), (JR.float 0.0), (JR.int 0), (JR.int 0), (JR.int 0), (JR.float 0.0), (JR.bool False) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

