module Org.Allbinary.Animation.IndexedAnimationBehaviorFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.AnimationBehaviorFactory as AnimationBehaviorFactory
import Org.Allbinary.Animation.IndexedAnimationBehavior as IndexedAnimationBehavior


jclass : String
jclass =
    "IndexedAnimationBehaviorFactory"


jchain : List String
jchain =
    [ "IndexedAnimationBehaviorFactory" ]
        ++ AnimationBehaviorFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    AnimationBehaviorFactory.jfields ++ [ ( "frameDelayTime", JR.defaultOf "J" ), ( "loopTotal", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getOrCreateInstance_0", jm_getOrCreateInstance_0 ) ]
        AnimationBehaviorFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IndexedAnimationBehaviorFactory"
        [ ( "jm_getOrCreateInstance_0", jm_getOrCreateInstance_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "loopTotal", "I" ), ( "frameDelayTime", "J" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AnimationBehaviorFactory.jinit_0 JR.this []),
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


jm_getOrCreateInstance_0 : JR.Method
jm_getOrCreateInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new IndexedAnimationBehavior.jnew_2 [ (JR.thisField "loopTotal"), (JR.thisField "frameDelayTime") ]) ])
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

