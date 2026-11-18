module Org.Allbinary.Animation.Image.ImageAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.DisposalUtil as DisposalUtil
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil


jclass : String
jclass =
    "ImageAnimation"


jchain : List String
jchain =
    [ "ImageAnimation" ]
        ++ IndexedAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ [ ( "image", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getAnimationSize_0", jm_getAnimationSize_0 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "previousFrame_0", jm_previousFrame_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "getImage_0", jm_getImage_0 )
        , ( "close_0", jm_close_0 )
        , ( "finalize_0", jm_finalize_0 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageAnimation"
        [ ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_getImage_0", jm_getImage_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_finalize_0", jm_finalize_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "image" "" JR.this (JR.local "image")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getAnimationSize_0 : JR.Method
jm_getAnimationSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_previousFrame_0 : JR.Method
jm_previousFrame_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 1) ])
        (jregister jheap)
        jthis
        jargs


jm_setSequence_1 : JR.Method
jm_setSequence_1 jheap jthis jargs =
    JR.method [ ( "sequence", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getSequence_0 : JR.Method
jm_getSequence_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "drawImage_4" (JR.local "graphics") [ (JR.thisField "image"), (JR.local "x"), (JR.local "y"), (JR.thisField "anchor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getImage_0 : JR.Method
jm_getImage_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "image") ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "disposeImage_1" (JR.callStatic DisposalUtil.jm_getInstance_0 []) [ (JR.thisField "image") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_finalize_0 : JR.Method
jm_finalize_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "disposeImage_1" (JR.callStatic DisposalUtil.jm_getInstance_0 []) [ (JR.thisField "image") ]) ])
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

