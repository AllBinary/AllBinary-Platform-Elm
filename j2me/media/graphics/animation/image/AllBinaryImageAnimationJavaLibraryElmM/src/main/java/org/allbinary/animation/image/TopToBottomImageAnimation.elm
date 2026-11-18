module Org.Allbinary.Animation.Image.TopToBottomImageAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Animation.Image.ImageSegmentAnimation as ImageSegmentAnimation
import Javax.Microedition.Lcdui.Game.Sprite as Sprite


jclass : String
jclass =
    "TopToBottomImageAnimation"


jchain : List String
jchain =
    [ "TopToBottomImageAnimation" ]
        ++ ImageSegmentAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    ImageSegmentAnimation.jfields ++ [ ( "currentHeight", JR.defaultOf "I" ), ( "anchor", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "nextFrame_0", jm_nextFrame_0 )
        , ( "previousFrame_0", jm_previousFrame_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "update_0", jm_update_0 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        ImageSegmentAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TopToBottomImageAnimation"
        [ ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_update_0", jm_update_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "sequenceArray", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ImageSegmentAnimation.jinit_3 JR.this [ (JR.local "image"), (JR.local "sequenceArray"), (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "currentHeight" "I" JR.this (JR.int 0)), 
                    JR.ifElse (JR.map2 JR.equals (JR.aget (JR.invoke "getSequence_0" JR.this []) (JR.int 0)) (JR.map JR.neg (JR.int 1))) (JR.run [ 
                        JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.map2 JR.sub (JR.invoke "getSize_0" JR.this []) (JR.int 1)) ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.aget (JR.invoke "getSequence_0" JR.this []) (JR.int 0)) (JR.map JR.neg (JR.int 1))) (JR.run [ 
                        JR.exec (JR.callVia ImageSegmentAnimation.jvtable "previousFrame_0" JR.this []) ]) (JR.run [ 
                        JR.exec (JR.callVia ImageSegmentAnimation.jvtable "nextFrame_0" JR.this []) ]), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_previousFrame_0 : JR.Method
jm_previousFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.aget (JR.invoke "getSequence_0" JR.this []) (JR.int 0)) (JR.map JR.neg (JR.int 1))) (JR.run [ 
                        JR.exec (JR.callVia ImageSegmentAnimation.jvtable "nextFrame_0" JR.this []) ]) (JR.run [ 
                        JR.exec (JR.callVia ImageSegmentAnimation.jvtable "previousFrame_0" JR.this []) ]), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ImageSegmentAnimation.jvtable "setFrame_1" JR.this [ (JR.local "index") ]), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentHeight" "I" JR.this (JR.map2 JR.div (JR.map2 JR.mul (JR.invoke "getDrawHeight_0" JR.this []) (JR.invoke "getFrame_0" JR.this [])) (JR.invoke "getSize_0" JR.this []))) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "drawRegion_9" (JR.local "graphics") [ (JR.invoke "getImage_0" JR.this []), (JR.invoke "getStartX_0" JR.this []), (JR.invoke "getStartY_0" JR.this []), (JR.invoke "getDrawWidth_0" JR.this []), (JR.thisField "currentHeight"), Sprite.jstatic_TRANS_NONE, (JR.local "x"), (JR.local "y"), (JR.thisField "anchor") ]) ])
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

