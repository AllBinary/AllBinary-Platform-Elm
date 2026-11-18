module Org.Allbinary.Animation.Image.AllBinaryPlatformImageRotationAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AllBinaryJ2SEImageRotationAnimationFactory as AllBinaryJ2SEImageRotationAnimationFactory


jclass : String
jclass =
    "AllBinaryPlatformImageRotationAnimationFactory"


jchain : List String
jchain =
    [ "AllBinaryPlatformImageRotationAnimationFactory" ]
        ++ AllBinaryJ2SEImageRotationAnimationFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinaryJ2SEImageRotationAnimationFactory.jfields ++ []


jvtable =
    JR.vtable
        []
        AllBinaryJ2SEImageRotationAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryPlatformImageRotationAnimationFactory"
        [ ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ), ( "angleIncrement", "S" ), ( "animationBehaviorFactory", "" ), ( "resizeCanvasForRotation", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinaryJ2SEImageRotationAnimationFactory.jinit_6 JR.this [ (JR.local "image"), (JR.local "width"), (JR.local "height"), (JR.local "angleIncrement"), (JR.local "animationBehaviorFactory"), (JR.local "resizeCanvasForRotation") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

