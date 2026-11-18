module Org.Allbinary.Media.Audio.CompositeSound exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.audio
-}

import JR
import Org.Allbinary.Media.Audio.AllBinaryMediaManager as AllBinaryMediaManager
import Org.Allbinary.Media.Audio.PlayerComposite as PlayerComposite
import Org.Allbinary.Media.Audio.Sound as Sound


jclass : String
jclass =
    "CompositeSound"


jchain : List String
jchain =
    [ "CompositeSound" ]
        ++ Sound.jchain


jfields : List ( String, JR.JValue )
jfields =
    Sound.jfields ++ []


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 ) ]
        Sound.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CompositeSound"
        [ ( "jm_init_0", jm_init_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "resource", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Sound.jinit_1 JR.this [ (JR.local "resource") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPlayerP_1" JR.this [ (JR.new PlayerComposite.jnew_2 [ (JR.callStatic AllBinaryMediaManager.jm_createPlayer_1 [ (JR.invoke "getResource_0" JR.this []) ]), (JR.int 570) ]) ]) ])
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

