module Org.Allbinary.Animation.Image.ImageArraySingletonAnimationInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.AnimationBehavior as AnimationBehavior
import Org.Allbinary.Animation.Image.ImageArrayAnimation as ImageArrayAnimation
import Org.Allbinary.Animation.SingletonAnimationInterfaceFactory as SingletonAnimationInterfaceFactory


jclass : String
jclass =
    "ImageArraySingletonAnimationInterfaceFactory"


jchain : List String
jchain =
    [ "ImageArraySingletonAnimationInterfaceFactory" ]
        ++ SingletonAnimationInterfaceFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    SingletonAnimationInterfaceFactory.jfields ++ []


jvtable =
    JR.vtable
        []
        SingletonAnimationInterfaceFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageArraySingletonAnimationInterfaceFactory"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SingletonAnimationInterfaceFactory.jinit_1 JR.this [ (JR.new ImageArrayAnimation.jnew_2 [ (JR.local "imageArray"), (JR.callStatic AnimationBehavior.jm_getInstance_0 []) ]) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

