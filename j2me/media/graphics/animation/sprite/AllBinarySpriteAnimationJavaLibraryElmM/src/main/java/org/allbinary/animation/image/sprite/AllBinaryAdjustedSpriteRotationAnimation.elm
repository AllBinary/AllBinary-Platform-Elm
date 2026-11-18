module Org.Allbinary.Animation.Image.Sprite.AllBinaryAdjustedSpriteRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image.sprite
-}

import JR
import Org.Allbinary.Animation.Image.Sprite.AllBinarySpriteRotationAnimation as AllBinarySpriteRotationAnimation


jclass : String
jclass =
    "AllBinaryAdjustedSpriteRotationAnimation"


jchain : List String
jchain =
    [ "AllBinaryAdjustedSpriteRotationAnimation" ]
        ++ AllBinarySpriteRotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    AllBinarySpriteRotationAnimation.jfields ++ [ ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "paintXY_3", jm_paintXY_3 ) ]
        AllBinarySpriteRotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryAdjustedSpriteRotationAnimation"
        [ ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "sprite", "" ), ( "image", "" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AllBinarySpriteRotationAnimation.jinit_3 JR.this [ (JR.local "sprite"), (JR.local "image"), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "g", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPosition_2" (JR.thisField "sprite") [ (JR.map2 JR.add (JR.local "x") (JR.thisField "dx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "dy")) ]), 
                    JR.exec (JR.invoke "paint_1" JR.this [ (JR.local "g") ]) ])
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

