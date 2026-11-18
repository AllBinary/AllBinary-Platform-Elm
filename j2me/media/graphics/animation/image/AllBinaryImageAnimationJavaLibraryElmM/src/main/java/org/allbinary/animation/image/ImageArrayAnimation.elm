module Org.Allbinary.Animation.Image.ImageArrayAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil


jclass : String
jclass =
    "ImageArrayAnimation"


jchain : List String
jchain =
    [ "ImageArrayAnimation" ]
        ++ IndexedAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ [ ( "imageArray", JR.defaultOf "" ), ( "totalFrames", JR.defaultOf "I" ), ( "circularIndexUtil", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ) ]


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
        , ( "getImage_1", jm_getImage_1 )
        , ( "getImageArray_0", jm_getImageArray_0 )
        , ( "setImageArray_1", jm_setImageArray_1 )
        , ( "paintXY_3", jm_paintXY_3 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageArrayAnimation"
        [ ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_getImage_1", jm_getImage_1 ), ( "jm_getImageArray_0", jm_getImageArray_0 ), ( "jm_setImageArray_1", jm_setImageArray_1 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "imageArray" "" JR.this NullImage.jstatic_NULL_IMAGE_ARRAY),
                JR.exec (JR.setField "circularIndexUtil" "" JR.this CircularIndexUtil.jstatic_NULL_CIRCULAR_INDEX_UTIL),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setImageArray_1" JR.this [ (JR.local "imageArray") ]) ]) ])
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
        (JR.run [ 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_previousFrame_0 : JR.Method
jm_previousFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "previous_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setIndex_1" (JR.thisField "circularIndexUtil") [ (JR.local "index") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "totalFrames") ])
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


jm_getImage_1 : JR.Method
jm_getImage_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.aget (JR.thisField "imageArray") (JR.local "index")) ])
        (jregister jheap)
        jthis
        jargs


jm_getImageArray_0 : JR.Method
jm_getImageArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "imageArray") ])
        (jregister jheap)
        jthis
        jargs


jm_setImageArray_1 : JR.Method
jm_setImageArray_1 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "imageArray" "" JR.this (JR.local "imageArray")), 
                    JR.exec (JR.setField "totalFrames" "I" JR.this (JR.alength (JR.local "imageArray"))), 
                    JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.thisField "totalFrames") ])) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "drawImage_4" (JR.local "graphics") [ (JR.aget (JR.thisField "imageArray") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])), (JR.local "x"), (JR.local "y"), (JR.thisField "anchor") ]) ])
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

