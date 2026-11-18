module Org.Allbinary.Media.Image.ImageScaleUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR
import Org.Allbinary.Media.Image.ImageCreationUtil as ImageCreationUtil
import Org.Allbinary.Media.Image.ImageJ2SEUtil as ImageJ2SEUtil
import Org.Allbinary.Media.Image.ImageUtil as ImageUtil


jclass : String
jclass =
    "ImageScaleUtil"


jchain : List String
jchain =
    [ "ImageScaleUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "imageUtil", JR.defaultOf "" ), ( "imageJ2SEUtil", JR.defaultOf "" ), ( "imageCreationUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createImage2_7", jm_createImage2_7 )
        , ( "createImage3_8", jm_createImage3_8 )
        , ( "scale2_8", jm_scale2_8 )
        , ( "scale_5", jm_scale_5 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageScaleUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createImage2_7", jm_createImage2_7 ), ( "jm_createImage3_8", jm_createImage3_8 ), ( "jm_scale2_8", jm_scale2_8 ), ( "jm_scale_5", jm_scale_5 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageScaleUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "imageUtil" "" JR.this (JR.callStatic ImageUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "imageJ2SEUtil" "" JR.this (JR.callStatic ImageJ2SEUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "imageCreationUtil" "" JR.this (JR.callStatic ImageCreationUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_createImage2_7 : JR.Method
jm_createImage2_7 jheap jthis jargs =
    JR.method [ ( "imageCache", "" ), ( "originalImage", "" ), ( "scaleNominatorX", "F" ), ( "scaleDenominatorX", "F" ), ( "scaleNominatorY", "F" ), ( "scaleDenominatorY", "F" ), ( "cached", "Z" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "createImage3_8" JR.this [ (JR.local "imageCache"), (JR.local "originalImage"), (JR.local "scaleNominatorX"), (JR.local "scaleDenominatorX"), (JR.local "scaleNominatorY"), (JR.local "scaleDenominatorY"), (JR.local "cached"), (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createImage3_8 : JR.Method
jm_createImage3_8 jheap jthis jargs =
    JR.method [ ( "imageCache", "" ), ( "originalImage", "" ), ( "scaleNominatorX", "F" ), ( "scaleDenominatorX", "F" ), ( "scaleNominatorY", "F" ), ( "scaleDenominatorY", "F" ), ( "cached", "Z" ), ( "mutable", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "width" "I" (JR.invoke "getWidth_0" (JR.local "originalImage") []), 
                    JR.declare "height" "I" (JR.invoke "getHeight_0" (JR.local "originalImage") []), 
                    JR.declare "scaleX" "F" (JR.map2 JR.div (JR.local "scaleNominatorX") (JR.local "scaleDenominatorX")), 
                    JR.declare "scaleY" "F" (JR.map2 JR.div (JR.local "scaleNominatorY") (JR.local "scaleDenominatorY")), 
                    JR.declare "image" "" (JR.lit (JR.defaultOf "")), 
                    JR.ifElse (JR.local "cached") (JR.run [ 
                        JR.exec (JR.setLocal "image" "" (JR.invoke "get_3" (JR.local "imageCache") [ (JR.invoke "getName_0" (JR.getClass JR.this) []), (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "width")) (JR.local "scaleX")))), (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "height")) (JR.local "scaleY")))) ])) ]) (JR.run [ 
                        JR.exec (JR.setLocal "image" "" (JR.invoke "get_3" (JR.local "imageCache") [ (JR.str "createImage"), (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "width")) (JR.local "scaleX")))), (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "height")) (JR.local "scaleY")))) ])) ]), 
                    JR.exec (JR.invoke "scale_5" JR.this [ (JR.local "originalImage"), (JR.local "image"), (JR.local "scaleX"), (JR.local "scaleY"), (JR.bool True) ]), 
                    JR.return (JR.local "image") ])
        (jregister jheap)
        jthis
        jargs


jm_scale2_8 : JR.Method
jm_scale2_8 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ), ( "originalImageArray", "" ), ( "ximageToShowArray", "" ), ( "unused", "I" ), ( "scaleX", "F" ), ( "scaleY", "F" ), ( "maxScaleX", "F" ), ( "maxScaleY", "F" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.greater (JR.map2 JR.mul (JR.local "maxScaleX") (JR.invoke "getWidth_0" (JR.local "originalImage") [])) (JR.invoke "getWidth_0" (JR.aget (JR.local "originalImageArray") (JR.int 0)) [])) (JR.map2 JR.greater (JR.map2 JR.mul (JR.local "maxScaleY") (JR.invoke "getHeight_0" (JR.local "originalImage") [])) (JR.invoke "getHeight_0" (JR.aget (JR.local "originalImageArray") (JR.int 0)) []))) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "originalImageArray") (\jaN68410 -> JR.andThen (JR.int 0) (\jiN68410 -> (JR.aset (JR.lit jaN68410) (JR.lit jiN68410) (JR.invoke "createImage_4" (JR.thisField "imageCreationUtil") [ (JR.invoke "getWidth_0" (JR.local "originalImage") []), (JR.invoke "getHeight_0" (JR.local "originalImage") []), (JR.local "maxScaleX"), (JR.local "maxScaleY") ]))))) ]) identity, 
                    JR.exec (JR.invoke "scale_5" JR.this [ (JR.local "originalImage"), (JR.aget (JR.local "originalImageArray") (JR.int 0)), (JR.local "scaleX"), (JR.local "scaleY"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_scale_5 : JR.Method
jm_scale_5 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ), ( "newMaxSizeImage", "" ), ( "scaleX", "F" ), ( "scaleY", "F" ), ( "clear", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "bufferedImage" "" (JR.invoke "getBufferedImage_1" (JR.thisField "imageUtil") [ (JR.local "originalImage") ]), 
                    JR.declare "newBufferedImage" "" (JR.invoke "getBufferedImage_1" (JR.thisField "imageUtil") [ (JR.local "newMaxSizeImage") ]), 
                    JR.declare "at" "" (JR.callStatic (JR.namedMethod "AffineTransform.jm_getScaleInstance_2") [ (JR.local "scaleX"), (JR.local "scaleY") ]), 
                    JR.declare "g" "" (JR.invoke "createGraphics_0" (JR.local "newBufferedImage") []), 
                    JR.ifElse (JR.local "clear") (JR.run [ 
                        JR.exec (JR.invoke "setBackground_1" (JR.local "g") [ (JR.field "TRANSPARENT_COLOR" (JR.thisField "imageJ2SEUtil")) ]), 
                        JR.exec (JR.invoke "clearRect_4" (JR.local "g") [ (JR.int 0), (JR.int 0), (JR.invoke "getWidth_0" (JR.local "newBufferedImage") []), (JR.invoke "getHeight_0" (JR.local "newBufferedImage") []) ]) ]) identity, 
                    JR.exec (JR.invoke "drawRenderedImage_2" (JR.local "g") [ (JR.local "bufferedImage"), (JR.local "at") ]), 
                    JR.exec (JR.invoke "dispose_0" (JR.local "g") []) ])
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

