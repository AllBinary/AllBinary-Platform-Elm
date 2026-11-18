module Org.Allbinary.Animation.Image.ImageAnimationSingletonInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.AnimationBehavior as AnimationBehavior
import Org.Allbinary.Image.AnimationFrameToImageUtil as AnimationFrameToImageUtil
import Org.Allbinary.Animation.Image.ImageAnimation as ImageAnimation
import Org.Allbinary.Animation.SingletonAnimationInterfaceFactory as SingletonAnimationInterfaceFactory


jclass : String
jclass =
    "ImageAnimationSingletonInterfaceFactory"


jchain : List String
jchain =
    [ "ImageAnimationSingletonInterfaceFactory" ]
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
    JR.register "ImageAnimationSingletonInterfaceFactory"
        [ ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SingletonAnimationInterfaceFactory.jinit_1 JR.this [ (JR.new ImageAnimation.jnew_2 [ (JR.invoke "getInstanceWH_3" (JR.callStatic AnimationFrameToImageUtil.jm_getInstance_0 []) [ (JR.local "width"), (JR.local "height"), (JR.local "animationInterface") ]), (JR.callStatic AnimationBehavior.jm_getInstance_0 []) ]) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

