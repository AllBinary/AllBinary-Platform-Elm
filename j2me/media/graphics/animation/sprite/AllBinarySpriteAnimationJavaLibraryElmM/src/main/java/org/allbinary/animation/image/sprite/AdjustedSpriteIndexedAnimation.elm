module Org.Allbinary.Animation.Image.Sprite.AdjustedSpriteIndexedAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image.sprite
-}

import JR
import Org.Allbinary.Animation.Image.Sprite.SpriteIndexedAnimation as SpriteIndexedAnimation


jclass : String
jclass =
    "AdjustedSpriteIndexedAnimation"


jchain : List String
jchain =
    [ "AdjustedSpriteIndexedAnimation" ]
        ++ SpriteIndexedAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    SpriteIndexedAnimation.jfields ++ [ ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "paintFrame_4", jm_paintFrame_4 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paint_1", jm_paint_1 ) ]
        SpriteIndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdjustedSpriteIndexedAnimation"
        [ ( "jm_paintFrame_4", jm_paintFrame_4 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "sprite", "" ), ( "image", "" ), ( "basicColorArray", "" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SpriteIndexedAnimation.jinit_4 JR.this [ (JR.local "sprite"), (JR.local "image"), (JR.local "basicColorArray"), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_paintFrame_4 : JR.Method
jm_paintFrame_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "frame", "I" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.local "frame") ]), 
                    JR.exec (JR.invoke "setPosition_2" (JR.thisField "sprite") [ (JR.map2 JR.add (JR.local "x") (JR.thisField "dx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "dy")) ]), 
                    JR.exec (JR.callVia SpriteIndexedAnimation.jvtable "paint_1" JR.this [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "g", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPosition_2" (JR.thisField "sprite") [ (JR.map2 JR.add (JR.local "x") (JR.thisField "dx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "dy")) ]), 
                    JR.exec (JR.callVia SpriteIndexedAnimation.jvtable "paint_1" JR.this [ (JR.local "g") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "g", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setPosition_2" (JR.thisField "sprite") [ (JR.thisField "dx"), (JR.thisField "dy") ]), 
                    JR.exec (JR.callVia SpriteIndexedAnimation.jvtable "paint_1" JR.this [ (JR.local "g") ]) ])
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

