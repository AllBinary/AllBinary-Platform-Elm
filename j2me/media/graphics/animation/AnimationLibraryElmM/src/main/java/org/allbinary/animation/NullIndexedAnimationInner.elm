module Org.Allbinary.Animation.NullIndexedAnimationInner exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.IndexedAnimationBehavior as IndexedAnimationBehavior
import Org.Allbinary.Animation.NullIndexedAnimation as NullIndexedAnimation


jclass : String
jclass =
    "NullIndexedAnimationInner"


jchain : List String
jchain =
    [ "NullIndexedAnimationInner" ]
        ++ NullIndexedAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    NullIndexedAnimation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "paintXY_3", jm_paintXY_3 ) ]
        NullIndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullIndexedAnimationInner"
        [ ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect NullIndexedAnimation.jinit_1 JR.this [ (JR.new IndexedAnimationBehavior.jnew_2 [ (JR.int 1), (JR.int 250) ]) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
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

