module Org.Allbinary.Animation.Image.ImageArrayBaseRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.DisposalUtil as DisposalUtil
import Org.Allbinary.Media.Image.ImageModifierUtil as ImageModifierUtil
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil
import Org.Allbinary.Animation.RotationAnimation as RotationAnimation


jclass : String
jclass =
    "ImageArrayBaseRotationAnimation"


jchain : List String
jchain =
    [ "ImageArrayBaseRotationAnimation" ]
        ++ RotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    RotationAnimation.jfields ++ [ ( "imageModifierUtil", JR.defaultOf "" ), ( "originalImageArray", JR.defaultOf "" ), ( "imageArray", JR.defaultOf "" ), ( "currentImage", JR.defaultOf "" ), ( "totalFrames", JR.defaultOf "I" ), ( "anchor", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getAnimationSize_0", jm_getAnimationSize_0 )
        , ( "setAlpha_1", jm_setAlpha_1 )
        , ( "nextRotation_0", jm_nextRotation_0 )
        , ( "previousRotation_0", jm_previousRotation_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "setImageArray_1", jm_setImageArray_1 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "close_0", jm_close_0 )
        , ( "finalize_0", jm_finalize_0 ) ]
        RotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageArrayBaseRotationAnimation"
        [ ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jm_setAlpha_1", jm_setAlpha_1 ), ( "jm_nextRotation_0", jm_nextRotation_0 ), ( "jm_previousRotation_0", jm_previousRotation_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_setImageArray_1", jm_setImageArray_1 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_close_0", jm_close_0 ), ( "jm_finalize_0", jm_finalize_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "originalImageArray", "" ), ( "angleInfo", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect RotationAnimation.jinit_3 JR.this [ (JR.local "angleInfo"), (JR.callStatic CircularIndexUtil.jm_createInstance_1 [ (JR.map2 JR.div (JR.int 360) (JR.cast "I" (JR.invoke "getAngleIncrement_0" (JR.invoke "getAngleIncrementInfo_0" (JR.local "angleInfo") []) []))) ]), (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "imageModifierUtil" "" JR.this (JR.callStatic ImageModifierUtil.jm_getInstanceOrCreate_0 [])),
                JR.exec (JR.setField "imageArray" "" JR.this NullImage.jstatic_NULL_IMAGE_ARRAY),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "originalImageArray" "" JR.this (JR.local "originalImageArray")), 
                    JR.exec (JR.invoke "setImageArray_1" JR.this [ (JR.invoke "getImageArray_1" (JR.thisField "imageModifierUtil") [ (JR.local "originalImageArray") ]) ]), 
                    JR.exec (JR.setField "currentImage" "" JR.this (JR.aget (JR.thisField "imageArray") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getAnimationSize_0 : JR.Method
jm_getAnimationSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "getSize_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setAlpha_1 : JR.Method
jm_setAlpha_1 jheap jthis jargs =
    JR.method [ ( "alpha", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "alphaP") (JR.local "alpha")) (JR.run [ 
                        JR.exec (JR.callVia RotationAnimation.jvtable "setAlpha_1" JR.this [ (JR.local "alpha") ]), 
                        JR.exec (JR.invoke "reset_0" (JR.thisField "imageModifierUtil") []), 
                        JR.declare "index" "I" (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []), 
                        JR.exec (JR.invoke "setAlpha_4" (JR.thisField "imageModifierUtil") [ (JR.aget (JR.thisField "originalImageArray") (JR.local "index")), (JR.aget (JR.thisField "imageArray") (JR.local "index")), (JR.local "index"), (JR.thisField "alphaP") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_nextRotation_0 : JR.Method
jm_nextRotation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia RotationAnimation.jvtable "nextRotation_0" JR.this []), 
                    JR.declare "index" "I" (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []), 
                    JR.exec (JR.invoke "setAlpha_4" (JR.thisField "imageModifierUtil") [ (JR.aget (JR.thisField "originalImageArray") (JR.local "index")), (JR.aget (JR.thisField "imageArray") (JR.local "index")), (JR.local "index"), (JR.thisField "alphaP") ]), 
                    JR.exec (JR.setField "currentImage" "" JR.this (JR.aget (JR.thisField "imageArray") (JR.local "index"))) ])
        (jregister jheap)
        jthis
        jargs


jm_previousRotation_0 : JR.Method
jm_previousRotation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia RotationAnimation.jvtable "previousRotation_0" JR.this []), 
                    JR.declare "index" "I" (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []), 
                    JR.exec (JR.invoke "setAlpha_4" (JR.thisField "imageModifierUtil") [ (JR.aget (JR.thisField "originalImageArray") (JR.local "index")), (JR.aget (JR.thisField "imageArray") (JR.local "index")), (JR.local "index"), (JR.thisField "alphaP") ]), 
                    JR.exec (JR.setField "currentImage" "" JR.this (JR.aget (JR.thisField "imageArray") (JR.local "index"))) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index2", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia RotationAnimation.jvtable "setFrame_1" JR.this [ (JR.local "index2") ]), 
                    JR.declare "index" "I" (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []), 
                    JR.exec (JR.invoke "setAlpha_4" (JR.thisField "imageModifierUtil") [ (JR.aget (JR.thisField "originalImageArray") (JR.local "index")), (JR.aget (JR.thisField "imageArray") (JR.local "index")), (JR.local "index"), (JR.thisField "alphaP") ]), 
                    JR.exec (JR.setField "currentImage" "" JR.this (JR.aget (JR.thisField "imageArray") (JR.local "index"))) ])
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
                    JR.exec (JR.invoke "drawImage_4" (JR.local "graphics") [ (JR.thisField "currentImage"), (JR.local "x"), (JR.local "y"), (JR.thisField "anchor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "disposalUtil" "" (JR.callStatic DisposalUtil.jm_getInstance_0 []), 
                    JR.declare "size2" "I" (JR.alength (JR.thisField "imageArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69924 -> (JR.setLocal "index" "I" (JR.lit jwN69924))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.aget (JR.thisField "imageArray") (JR.local "index")) ]) ]) ], 
                    JR.declare "size" "I" (JR.alength (JR.thisField "originalImageArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70093 -> (JR.setLocal "index" "I" (JR.lit jwN70093))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.aget (JR.thisField "originalImageArray") (JR.local "index")) ]) ]) ], 
                    JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.thisField "currentImage") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_finalize_0 : JR.Method
jm_finalize_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "disposalUtil" "" (JR.callStatic DisposalUtil.jm_getInstance_0 []), 
                    JR.declare "size2" "I" (JR.alength (JR.thisField "imageArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70382 -> (JR.setLocal "index" "I" (JR.lit jwN70382))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.aget (JR.thisField "imageArray") (JR.local "index")) ]) ]) ], 
                    JR.declare "size" "I" (JR.alength (JR.thisField "originalImageArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70551 -> (JR.setLocal "index" "I" (JR.lit jwN70551))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.aget (JR.thisField "originalImageArray") (JR.local "index")) ]) ]) ], 
                    JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.thisField "currentImage") ]) ])
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

