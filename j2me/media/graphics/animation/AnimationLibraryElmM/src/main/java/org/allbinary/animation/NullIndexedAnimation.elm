module Org.Allbinary.Animation.NullIndexedAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation


jclass : String
jclass =
    "NullIndexedAnimation"


jchain : List String
jchain =
    [ "NullIndexedAnimation" ]
        ++ IndexedAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getAnimationSize_0", jm_getAnimationSize_0 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullIndexedAnimation"
        [ ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getAnimationSize_0 : JR.Method
jm_getAnimationSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
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

