module Org.Allbinary.Animation.Image.AllBinaryJ2SEImageRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AlphaProcessor as AlphaProcessor
import Org.Allbinary.Animation.Image.ChangeColorProcessor as ChangeColorProcessor
import Org.Allbinary.DisposalUtil as DisposalUtil
import Org.Allbinary.Animation.Image.ImageBaseRotationAnimation as ImageBaseRotationAnimation
import Org.Allbinary.Media.Image.ImageCopyUtil as ImageCopyUtil
import Org.Allbinary.Media.Image.ImageModifierUtil as ImageModifierUtil
import Org.Allbinary.Media.Image.ImageRotationUtil as ImageRotationUtil
import Org.Allbinary.Animation.Image.ModifierBaseProcessor as ModifierBaseProcessor
import Javax.Microedition.Lcdui.NullImage as NullImage
import Org.Allbinary.Animation.Image.ScaleProcessor as ScaleProcessor
import Org.Allbinary.Animation.Image.SetColorProcessor as SetColorProcessor


jclass : String
jclass =
    "AllBinaryJ2SEImageRotationAnimation"


jchain : List String
jchain =
    [ "AllBinaryJ2SEImageRotationAnimation" ]
        ++ ImageBaseRotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    ImageBaseRotationAnimation.jfields ++ [ ( "imageRotationUtil", JR.defaultOf "" ), ( "imageModifierUtil", JR.defaultOf "" ), ( "realOriginalImage", JR.defaultOf "" ), ( "originalImageArray", JR.defaultOf "" ), ( "twoImages", JR.defaultOf "" ), ( "imageToShow", JR.defaultOf "" ), ( "bufferedImageIndex", JR.defaultOf "I" ), ( "lastScaleX", JR.defaultOf "F" ), ( "lastScaleY", JR.defaultOf "F" ), ( "scaleX", JR.defaultOf "F" ), ( "scaleY", JR.defaultOf "F" ), ( "maxScaleX", JR.defaultOf "F" ), ( "maxScaleY", JR.defaultOf "F" ), ( "alphaProcessor", JR.defaultOf "" ), ( "setColorProcessor", JR.defaultOf "" ), ( "changeColorProcessor", JR.defaultOf "" ), ( "scaleProcessor", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "changeBasicColor_1", jm_changeBasicColor_1 )
        , ( "setAlpha_1", jm_setAlpha_1 )
        , ( "setScale_2", jm_setScale_2 )
        , ( "setMaxScale_2", jm_setMaxScale_2 )
        , ( "nextRotation_0", jm_nextRotation_0 )
        , ( "previousRotation_0", jm_previousRotation_0 )
        , ( "updateImage_0", jm_updateImage_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "swap_0", jm_swap_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "close_0", jm_close_0 )
        , ( "finalize_0", jm_finalize_0 ) ]
        ImageBaseRotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryJ2SEImageRotationAnimation"
        [ ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_changeBasicColor_1", jm_changeBasicColor_1 ), ( "jm_setAlpha_1", jm_setAlpha_1 ), ( "jm_setScale_2", jm_setScale_2 ), ( "jm_setMaxScale_2", jm_setMaxScale_2 ), ( "jm_nextRotation_0", jm_nextRotation_0 ), ( "jm_previousRotation_0", jm_previousRotation_0 ), ( "jm_updateImage_0", jm_updateImage_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_swap_0", jm_swap_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_close_0", jm_close_0 ), ( "jm_finalize_0", jm_finalize_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ), ( "image", "" ), ( "angleInfo", "" ), ( "totalAngle", "S" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ImageBaseRotationAnimation.jinit_4 JR.this [ (JR.local "image"), (JR.local "angleInfo"), (JR.local "totalAngle"), (JR.local "animationBehavior") ]),
                JR.exec (JR.setField "imageRotationUtil" "" JR.this (JR.callStatic ImageRotationUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "imageModifierUtil" "" JR.this (JR.callStatic ImageModifierUtil.jm_getInstanceOrCreate_0 [])),
                JR.exec (JR.setField "originalImageArray" "" JR.this (JR.newArray "" [ (JR.int 1) ])),
                JR.exec (JR.setField "twoImages" "" JR.this (JR.newArray "" [ (JR.int 2) ])),
                JR.exec (JR.setField "lastScaleX" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "lastScaleY" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "scaleX" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "scaleY" "F" JR.this (JR.float 1.0)),
                JR.exec (JR.setField "alphaProcessor" "" JR.this (JR.callStatic ModifierBaseProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "setColorProcessor" "" JR.this (JR.callStatic ModifierBaseProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "changeColorProcessor" "" JR.this (JR.callStatic ModifierBaseProcessor.jm_getInstance_0 [])),
                JR.exec (JR.setField "scaleProcessor" "" JR.this (JR.callStatic ScaleProcessor.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "realOriginalImage" "" JR.this (JR.local "originalImage")), 
                    JR.exec (JR.andThen (JR.thisField "originalImageArray") (\jaN69092 -> JR.andThen (JR.int 0) (\jiN69092 -> (JR.aset (JR.lit jaN69092) (JR.lit jiN69092) (JR.local "originalImage"))))), 
                    JR.exec (JR.setField "imageToShow" "" JR.this (JR.local "image")), 
                    JR.exec (JR.andThen (JR.thisField "twoImages") (\jaN69160 -> JR.andThen (JR.int 0) (\jiN69160 -> (JR.aset (JR.lit jaN69160) (JR.lit jiN69160) (JR.local "image"))))), 
                    JR.exec (JR.andThen (JR.thisField "twoImages") (\jaN69196 -> JR.andThen (JR.int 1) (\jiN69196 -> (JR.aset (JR.lit jaN69196) (JR.lit jiN69196) (JR.invoke "createImageForRotation_1" (JR.callStatic ImageCopyUtil.jm_getInstance_0 []) [ (JR.local "image") ]))))) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "changed" "Z" (JR.bool False), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.invoke "getBasicColorP_0" JR.this []) JR.null) (JR.map2 JR.notEquals (JR.invoke "intValue_0" (JR.invoke "getBasicColorP_0" JR.this []) []) (JR.invoke "intValue_0" (JR.local "basicColor") []))) (JR.run [ 
                        JR.exec (JR.setLocal "changed" "Z" (JR.bool True)) ]) identity, 
                    JR.exec (JR.callVia ImageBaseRotationAnimation.jvtable "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.ifElse (JR.local "changed") (JR.run [ 
                        JR.exec (JR.setField "setColorProcessor" "" JR.this (JR.callStatic SetColorProcessor.jm_getInstance_0 [])), 
                        JR.exec (JR.invoke "updateImage_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_changeBasicColor_1 : JR.Method
jm_changeBasicColor_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "changed" "Z" (JR.bool False), 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.invoke "getChangeBasicColor_0" JR.this []) JR.null) (JR.map2 JR.notEquals (JR.invoke "intValue_0" (JR.invoke "getChangeBasicColor_0" JR.this []) []) (JR.invoke "intValue_0" (JR.local "basicColor") []))) (JR.run [ 
                        JR.exec (JR.setLocal "changed" "Z" (JR.bool True)) ]) identity, 
                    JR.exec (JR.callVia ImageBaseRotationAnimation.jvtable "changeBasicColor_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.ifElse (JR.local "changed") (JR.run [ 
                        JR.exec (JR.setField "changeColorProcessor" "" JR.this (JR.callStatic ChangeColorProcessor.jm_getInstance_0 [])), 
                        JR.exec (JR.invoke "updateImage_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setAlpha_1 : JR.Method
jm_setAlpha_1 jheap jthis jargs =
    JR.method [ ( "alpha", "I" ) ] ""
        (JR.run [ 
                    JR.declare "changed" "Z" (JR.bool False), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "alphaP") (JR.local "alpha")) (JR.run [ 
                        JR.exec (JR.setLocal "changed" "Z" (JR.bool True)) ]) identity, 
                    JR.exec (JR.callVia ImageBaseRotationAnimation.jvtable "setAlpha_1" JR.this [ (JR.local "alpha") ]), 
                    JR.ifElse (JR.local "changed") (JR.run [ 
                        JR.exec (JR.setField "alphaProcessor" "" JR.this (JR.callStatic AlphaProcessor.jm_getInstance_0 [])), 
                        JR.exec (JR.invoke "updateImage_0" JR.this []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setScale_2 : JR.Method
jm_setScale_2 jheap jthis jargs =
    JR.method [ ( "scaleX", "F" ), ( "scaleY", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "scaleX" "F" JR.this (JR.local "scaleX")), 
                    JR.exec (JR.setField "scaleY" "F" JR.this (JR.local "scaleY")), 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.thisField "scaleX") (JR.thisField "lastScaleX")) (JR.map2 JR.notEquals (JR.thisField "scaleY") (JR.thisField "lastScaleY"))) (JR.run [ 
                        JR.exec (JR.invoke "update_8" (JR.thisField "scaleProcessor") [ (JR.thisField "realOriginalImage"), (JR.thisField "originalImageArray"), (JR.thisField "twoImages"), (JR.thisField "bufferedImageIndex"), (JR.thisField "scaleX"), (JR.thisField "scaleY"), (JR.thisField "maxScaleX"), (JR.thisField "maxScaleY") ]), 
                        JR.exec (JR.invoke "updateImage_0" JR.this []) ]) identity, 
                    JR.exec (JR.setField "lastScaleX" "F" JR.this (JR.thisField "scaleX")), 
                    JR.exec (JR.setField "lastScaleY" "F" JR.this (JR.thisField "scaleY")) ])
        (jregister jheap)
        jthis
        jargs


jm_setMaxScale_2 : JR.Method
jm_setMaxScale_2 jheap jthis jargs =
    JR.method [ ( "maxScaleX", "F" ), ( "maxScaleY", "F" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "maxScaleX" "F" JR.this (JR.local "maxScaleX")), 
                    JR.exec (JR.setField "maxScaleY" "F" JR.this (JR.local "maxScaleY")), 
                    JR.exec (JR.invoke "update_8" (JR.thisField "scaleProcessor") [ (JR.thisField "realOriginalImage"), (JR.thisField "originalImageArray"), (JR.thisField "twoImages"), (JR.thisField "bufferedImageIndex"), (JR.thisField "scaleX"), (JR.thisField "scaleY"), (JR.thisField "maxScaleX"), (JR.thisField "maxScaleY") ]), 
                    JR.exec (JR.invoke "updateImage_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_nextRotation_0 : JR.Method
jm_nextRotation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia ImageBaseRotationAnimation.jvtable "nextRotation_0" JR.this []), 
                    JR.exec (JR.invoke "updateImage_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_previousRotation_0 : JR.Method
jm_previousRotation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia ImageBaseRotationAnimation.jvtable "previousRotation_0" JR.this []), 
                    JR.exec (JR.invoke "updateImage_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_updateImage_0 : JR.Method
jm_updateImage_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "rotateImage_3" (JR.thisField "imageRotationUtil") [ (JR.aget (JR.thisField "originalImageArray") (JR.int 0)), (JR.aget (JR.thisField "twoImages") (JR.thisField "bufferedImageIndex")), (JR.map2 JR.add (JR.cast "I" (JR.invoke "getAngle_0" (JR.thisField "angleInfo") [])) (JR.int 90)) ]), 
                    JR.exec (JR.invoke "updateAlpha_5" (JR.thisField "alphaProcessor") [ (JR.thisField "imageModifierUtil"), NullImage.jstatic_NULL_IMAGE, (JR.aget (JR.thisField "twoImages") (JR.thisField "bufferedImageIndex")), (JR.int 0), (JR.thisField "alphaP") ]), 
                    JR.exec (JR.invoke "updateColor_5" (JR.thisField "setColorProcessor") [ (JR.thisField "imageModifierUtil"), NullImage.jstatic_NULL_IMAGE, (JR.aget (JR.thisField "twoImages") (JR.thisField "bufferedImageIndex")), (JR.int 0), (JR.thisField "basicColor") ]), 
                    JR.exec (JR.invoke "updateColor_5" (JR.thisField "changeColorProcessor") [ (JR.thisField "imageModifierUtil"), NullImage.jstatic_NULL_IMAGE, (JR.aget (JR.thisField "twoImages") (JR.thisField "bufferedImageIndex")), (JR.int 0), (JR.thisField "changeBasicColorP") ]), 
                    JR.exec (JR.invoke "swap_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ImageBaseRotationAnimation.jvtable "setFrame_1" JR.this [ (JR.local "index") ]), 
                    JR.exec (JR.invoke "updateImage_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_swap_0 : JR.Method
jm_swap_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "imageToShow" "" JR.this (JR.aget (JR.thisField "twoImages") (JR.thisField "bufferedImageIndex"))), 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "bufferedImageIndex") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setField "bufferedImageIndex" "I" JR.this (JR.int 1)) ]) (JR.run [ 
                        JR.exec (JR.setField "bufferedImageIndex" "I" JR.this (JR.int 0)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "drawImage_4" (JR.local "graphics") [ (JR.thisField "imageToShow"), (JR.local "x"), (JR.local "y"), (JR.thisField "anchor") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia ImageBaseRotationAnimation.jvtable "close_0" JR.this []), 
                    JR.declare "disposalUtil" "" (JR.callStatic DisposalUtil.jm_getInstance_0 []), 
                    JR.declare "size2" "I" (JR.alength (JR.thisField "twoImages")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72087 -> (JR.setLocal "index" "I" (JR.lit jwN72087))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.aget (JR.thisField "twoImages") (JR.local "index")) ]) ]) ], 
                    JR.declare "size" "I" (JR.alength (JR.thisField "originalImageArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72256 -> (JR.setLocal "index" "I" (JR.lit jwN72256))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.aget (JR.thisField "originalImageArray") (JR.local "index")) ]) ]) ], 
                    JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.thisField "realOriginalImage") ]), 
                    JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.thisField "imageToShow") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_finalize_0 : JR.Method
jm_finalize_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia ImageBaseRotationAnimation.jvtable "finalize_0" JR.this []), 
                    JR.declare "disposalUtil" "" (JR.callStatic DisposalUtil.jm_getInstance_0 []), 
                    JR.declare "size2" "I" (JR.alength (JR.thisField "twoImages")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size2")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72605 -> (JR.setLocal "index" "I" (JR.lit jwN72605))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.aget (JR.thisField "twoImages") (JR.local "index")) ]) ]) ], 
                    JR.declare "size" "I" (JR.alength (JR.thisField "originalImageArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72774 -> (JR.setLocal "index" "I" (JR.lit jwN72774))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.aget (JR.thisField "originalImageArray") (JR.local "index")) ]) ]) ], 
                    JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.thisField "realOriginalImage") ]), 
                    JR.exec (JR.invoke "disposeImage_1" (JR.local "disposalUtil") [ (JR.thisField "imageToShow") ]) ])
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

