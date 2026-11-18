module Org.Allbinary.Media.Audio.SoundStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR



jclass : String
jclass =
    "SoundStrings"


jchain : List String
jchain =
    [ "SoundStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "STOP_ALL", JR.defaultOf "" ), ( "CLOSE_ALL", JR.defaultOf "" ), ( "SOUND", JR.defaultOf "" ), ( "INIT_SOUND", JR.defaultOf "" ), ( "STOPPING_SOUND", JR.defaultOf "" ), ( "CLOSING_SOUND", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SoundStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "SoundStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "STOP_ALL" "" JR.this (JR.str "stopAll")),
                JR.exec (JR.setField "CLOSE_ALL" "" JR.this (JR.str "closeAll")),
                JR.exec (JR.setField "SOUND" "" JR.this (JR.str " Sound: ")),
                JR.exec (JR.setField "INIT_SOUND" "" JR.this (JR.str "Initializing Sound: ")),
                JR.exec (JR.setField "STOPPING_SOUND" "" JR.this (JR.str "Stopping Sound: ")),
                JR.exec (JR.setField "CLOSING_SOUND" "" JR.this (JR.str "Closing Sound: ")),
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

