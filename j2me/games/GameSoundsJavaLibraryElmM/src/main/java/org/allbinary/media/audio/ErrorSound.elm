module Org.Allbinary.Media.Audio.ErrorSound exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Media.Audio.CompositeSound as CompositeSound


jclass : String
jclass =
    "ErrorSound"


jchain : List String
jchain =
    [ "ErrorSound" ]
        ++ CompositeSound.jchain


jfields : List ( String, JR.JValue )
jfields =
    CompositeSound.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        CompositeSound.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ErrorSound"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_soundInterface", jstatic_soundInterface ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_soundInterface : JR.M
jstatic_soundInterface s =
    JR.static "ErrorSound" jclinit "soundInterface"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect CompositeSound.jinit_1 JR.this [ (JR.str "resource:/wav/error.wav") ]),
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
                    JR.return jstatic_soundInterface ])
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

