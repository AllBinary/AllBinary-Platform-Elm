module Org.Allbinary.Animation.IndexedAnimationBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.AnimationBehavior as AnimationBehavior


jclass : String
jclass =
    "IndexedAnimationBehavior"


jchain : List String
jchain =
    [ "IndexedAnimationBehavior" ]
        ++ AnimationBehavior.jchain


jfields : List ( String, JR.JValue )
jfields =
    AnimationBehavior.jfields ++ [ ( "frameDelayTime", JR.defaultOf "J" ), ( "loopTotal", JR.defaultOf "I" ), ( "elapsedTime", JR.defaultOf "J" ), ( "loopIndex", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "reset_0", jm_reset_0 ) ]
        AnimationBehavior.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IndexedAnimationBehavior"
        [ ( "jm_reset_0", jm_reset_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "loopTotal", "I" ), ( "frameDelayTime", "J" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AnimationBehavior.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "loopTotal" "I" JR.this (JR.local "loopTotal")), 
                    JR.exec (JR.setField "frameDelayTime" "J" JR.this (JR.local "frameDelayTime")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_reset_0 : JR.Method
jm_reset_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "loopIndex" "I" JR.this (JR.int 0)) ])
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

