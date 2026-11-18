module Org.Allbinary.Animation.Image.ImageBaseRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.DisposalUtil as DisposalUtil
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.RotationAnimation as RotationAnimation


jclass : String
jclass =
    "ImageBaseRotationAnimation"


jchain : List String
jchain =
    [ "ImageBaseRotationAnimation" ]
        ++ RotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    RotationAnimation.jfields ++ [ ( "image", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getAnimationSize_0", jm_getAnimationSize_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "getImage_0", jm_getImage_0 )
        , ( "getWidth_0", jm_getWidth_0 )
        , ( "getHeight_0", jm_getHeight_0 )
        , ( "close_0", jm_close_0 )
        , ( "finalize_0", jm_finalize_0 ) ]
        RotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageBaseRotationAnimation"
        [ ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_getImage_0", jm_getImage_0 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_finalize_0", jm_finalize_0 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "angleInfo", "" ), ( "totalAngle", "S" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RotationAnimation.jinit_3 JR.this [ (JR.local "angleInfo"), (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.map2 JR.div (JR.local "totalAngle") (JR.invoke "getAngleIncrement_0" (JR.invoke "getAngleIncrementInfo_0" (JR.local "angleInfo") []) [])) ]), (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "image" "" JR.this (JR.local "image")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getAnimationSize_0 : JR.Method
jm_getAnimationSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" JR.this []) ])
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


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getWidth_0" (JR.thisField "image") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getHeight_0" (JR.thisField "image") []) ])
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

