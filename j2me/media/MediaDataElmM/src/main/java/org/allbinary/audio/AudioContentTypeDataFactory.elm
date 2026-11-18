module Org.Allbinary.Audio.AudioContentTypeDataFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.audio
-}

import JR
import Org.Allbinary.Audio.AudioContentTypeData as AudioContentTypeData


jclass : String
jclass =
    "AudioContentTypeDataFactory"


jchain : List String
jchain =
    [ "AudioContentTypeDataFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "MIME_AUDIO_TONE", JR.defaultOf "" ), ( "MIME_AUDIO_AMR", JR.defaultOf "" ), ( "MIME_AUDIO_AMR_WB", JR.defaultOf "" ), ( "MIME_AUDIO_WAV", JR.defaultOf "" ), ( "MIME_AUDIO_MIDI", JR.defaultOf "" ), ( "MIME_AUDIO_SP_MIDI", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AudioContentTypeDataFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AudioContentTypeDataFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "MIME_AUDIO_TONE" "" JR.this (JR.new AudioContentTypeData.jnew_1 [ (JR.str "audio/x-tone-seq") ])),
                JR.exec (JR.setField "MIME_AUDIO_AMR" "" JR.this (JR.new AudioContentTypeData.jnew_1 [ (JR.str "audio/amr") ])),
                JR.exec (JR.setField "MIME_AUDIO_AMR_WB" "" JR.this (JR.new AudioContentTypeData.jnew_1 [ (JR.str "audio/amr-wb") ])),
                JR.exec (JR.setField "MIME_AUDIO_WAV" "" JR.this (JR.new AudioContentTypeData.jnew_1 [ (JR.str "audio/x-wav") ])),
                JR.exec (JR.setField "MIME_AUDIO_MIDI" "" JR.this (JR.new AudioContentTypeData.jnew_1 [ (JR.str "audio/midi") ])),
                JR.exec (JR.setField "MIME_AUDIO_SP_MIDI" "" JR.this (JR.new AudioContentTypeData.jnew_1 [ (JR.str "audio/sp-midi") ])),
                identity,
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

