module Org.Allbinary.Media.Audio.NoSound exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Media.Audio.NoPlayer as NoPlayer
import Org.Allbinary.Media.Audio.Sound as Sound
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "NoSound"


jchain : List String
jchain =
    [ "NoSound" ]
        ++ Sound.jchain


jfields : List ( String, JR.JValue )
jfields =
    Sound.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        Sound.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoSound"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NoSound" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Sound.jinit_1 JR.this [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setPlayerP_1" JR.this [ NoPlayer.jstatic_NO_PLAYER ]) ]) ])
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

