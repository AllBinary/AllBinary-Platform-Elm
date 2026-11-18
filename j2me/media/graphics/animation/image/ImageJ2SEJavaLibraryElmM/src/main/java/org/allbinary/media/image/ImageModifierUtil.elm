module Org.Allbinary.Media.Image.ImageModifierUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Media.Image.ImageCreationUtil as ImageCreationUtil
import Org.Allbinary.Media.Image.ImageUtil as ImageUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil


jclass : String
jclass =
    "ImageModifierUtil"


jchain : List String
jchain =
    [ "ImageModifierUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "imageUtil", JR.defaultOf "" ), ( "colorArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstanceOrCreate_0", jm_getInstanceOrCreate_0 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "setColor_4", jm_setColor_4 )
        , ( "changeColor_4", jm_changeColor_4 )
        , ( "setAlpha_4", jm_setAlpha_4 )
        , ( "getImageArray_1", jm_getImageArray_1 )
        , ( "handleImage_3", jm_handleImage_3 )
        , ( "reset_0", jm_reset_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageModifierUtil"
        [ ( "jm_getInstanceOrCreate_0", jm_getInstanceOrCreate_0 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_setColor_4", jm_setColor_4 ), ( "jm_changeColor_4", jm_changeColor_4 ), ( "jm_setAlpha_4", jm_setAlpha_4 ), ( "jm_getImageArray_1", jm_getImageArray_1 ), ( "jm_handleImage_3", jm_handleImage_3 ), ( "jm_reset_0", jm_reset_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageModifierUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "imageUtil" "" JR.this (JR.callStatic ImageUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "colorArray" "" JR.this (JR.newArray "I" [ (JR.int 1) ])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstanceOrCreate_0 : JR.Method
jm_getInstanceOrCreate_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_setColor_4 : JR.Method
jm_setColor_4 jheap jthis jargs =
    JR.method [ ( "unusedOriginalImage", "" ), ( "image", "" ), ( "imageIndex", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "newBufferedImage" "" (JR.invoke "getBufferedImage_1" (JR.thisField "imageUtil") [ (JR.local "image") ]), 
                    JR.declare "r" "S" (JR.field "red" (JR.local "basicColor")), 
                    JR.declare "g" "S" (JR.field "green" (JR.local "basicColor")), 
                    JR.declare "b" "S" (JR.field "blue" (JR.local "basicColor")), 
                    JR.declare "width" "I" (JR.invoke "getWidth_0" (JR.local "image") []), 
                    JR.declare "height" "I" (JR.invoke "getHeight_0" (JR.local "image") []), 
                    JR.declare "colorModel" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "dataElements" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "ax" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "rx" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "gx" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "bx" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "width")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67940 -> (JR.setLocal "index" "I" (JR.lit jwN67940))) JR.increment) ]) (JR.run [ 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "height")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN67874 -> (JR.setLocal "index2" "I" (JR.lit jwN67874))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "colorModel" "" (JR.invoke "getColorModel_0" (JR.local "newBufferedImage") [])), 
                            JR.exec (JR.setLocal "dataElements" "" (JR.invoke "getDataElements_3" (JR.invoke "getRaster_0" (JR.local "newBufferedImage") []) [ (JR.local "index"), (JR.local "index2"), JR.null ])), 
                            JR.exec (JR.setLocal "ax" "I" (JR.invoke "getAlpha_1" (JR.local "colorModel") [ (JR.local "dataElements") ])), 
                            JR.exec (JR.setLocal "rx" "I" (JR.invoke "getRed_1" (JR.local "colorModel") [ (JR.local "dataElements") ])), 
                            JR.exec (JR.setLocal "gx" "I" (JR.invoke "getGreen_1" (JR.local "colorModel") [ (JR.local "dataElements") ])), 
                            JR.exec (JR.setLocal "bx" "I" (JR.invoke "getBlue_1" (JR.local "colorModel") [ (JR.local "dataElements") ])), 
                            JR.ifElse (JR.or (JR.or (JR.map2 JR.notEquals (JR.local "rx") (JR.int 0)) (JR.map2 JR.notEquals (JR.local "gx") (JR.int 0))) (JR.map2 JR.notEquals (JR.local "bx") (JR.int 0))) (JR.run [ 
                                JR.exec (JR.invoke "setRGB_3" (JR.local "newBufferedImage") [ (JR.local "index"), (JR.local "index2"), (JR.map2 JR.bor (JR.map2 JR.bor (JR.map2 JR.bor ((JR.map2 JR.shl (JR.local "ax") (JR.int 24))) ((JR.map2 JR.shl (JR.local "r") (JR.int 16)))) ((JR.map2 JR.shl (JR.local "g") (JR.int 8)))) (JR.cast "I" ((JR.local "b")))) ]) ]) identity ]) ] ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_changeColor_4 : JR.Method
jm_changeColor_4 jheap jthis jargs =
    JR.method [ ( "unusedOriginalImage", "" ), ( "image", "" ), ( "imageIndex", "I" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.declare "newBufferedImage" "" (JR.invoke "getBufferedImage_1" (JR.thisField "imageUtil") [ (JR.local "image") ]), 
                    JR.declare "MAX" "F" (JR.float 255.0), 
                    JR.declare "r" "F" (JR.map2 JR.div ((JR.cast "F" (JR.field "red" (JR.local "basicColor")))) (JR.local "MAX")), 
                    JR.declare "g" "F" (JR.map2 JR.div ((JR.cast "F" (JR.field "green" (JR.local "basicColor")))) (JR.local "MAX")), 
                    JR.declare "b" "F" (JR.map2 JR.div ((JR.cast "F" (JR.field "blue" (JR.local "basicColor")))) (JR.local "MAX")), 
                    JR.declare "width" "I" (JR.invoke "getWidth_0" (JR.local "image") []), 
                    JR.declare "height" "I" (JR.invoke "getHeight_0" (JR.local "image") []), 
                    JR.declare "colorModel" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "dataElements" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "ax" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "rx" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "gx" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "bx" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "width")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69241 -> (JR.setLocal "index" "I" (JR.lit jwN69241))) JR.increment) ]) (JR.run [ 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "height")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN69175 -> (JR.setLocal "index2" "I" (JR.lit jwN69175))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "colorModel" "" (JR.invoke "getColorModel_0" (JR.local "newBufferedImage") [])), 
                            JR.exec (JR.setLocal "dataElements" "" (JR.invoke "getDataElements_3" (JR.invoke "getRaster_0" (JR.local "newBufferedImage") []) [ (JR.local "index"), (JR.local "index2"), JR.null ])), 
                            JR.exec (JR.setLocal "ax" "I" (JR.invoke "getAlpha_1" (JR.local "colorModel") [ (JR.local "dataElements") ])), 
                            JR.exec (JR.setLocal "rx" "I" (JR.invoke "getRed_1" (JR.local "colorModel") [ (JR.local "dataElements") ])), 
                            JR.exec (JR.setLocal "gx" "I" (JR.invoke "getGreen_1" (JR.local "colorModel") [ (JR.local "dataElements") ])), 
                            JR.exec (JR.setLocal "bx" "I" (JR.invoke "getBlue_1" (JR.local "colorModel") [ (JR.local "dataElements") ])), 
                            JR.exec (JR.setLocal "rx" "I" (JR.map2 JR.mul (JR.local "rx") (JR.local "r"))), 
                            JR.exec (JR.setLocal "gx" "I" (JR.map2 JR.mul (JR.local "gx") (JR.local "g"))), 
                            JR.exec (JR.setLocal "bx" "I" (JR.map2 JR.mul (JR.local "bx") (JR.local "b"))), 
                            JR.exec (JR.invoke "setRGB_3" (JR.local "newBufferedImage") [ (JR.local "index"), (JR.local "index2"), (JR.map2 JR.bor (JR.map2 JR.bor (JR.map2 JR.bor ((JR.map2 JR.shl (JR.local "ax") (JR.int 24))) ((JR.map2 JR.shl (JR.local "rx") (JR.int 16)))) ((JR.map2 JR.shl (JR.local "gx") (JR.int 8)))) ((JR.local "bx"))) ]) ]) ] ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_setAlpha_4 : JR.Method
jm_setAlpha_4 jheap jthis jargs =
    JR.method [ ( "unusedOriginalImage", "" ), ( "image", "" ), ( "imageIndex", "I" ), ( "alphaInt", "I" ) ] ""
        (JR.run [ 
                    JR.declare "alpha" "B" (JR.cast "B" (JR.local "alphaInt")), 
                    JR.declare "newBufferedImage" "" (JR.invoke "getBufferedImage_1" (JR.thisField "imageUtil") [ (JR.local "image") ]), 
                    JR.declare "width" "I" (JR.invoke "getWidth_0" (JR.local "image") []), 
                    JR.declare "height" "I" (JR.invoke "getHeight_0" (JR.local "image") []), 
                    JR.declare "raster" "" (JR.invoke "getAlphaRaster_0" (JR.local "newBufferedImage") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "width")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69922 -> (JR.setLocal "index" "I" (JR.lit jwN69922))) JR.increment) ]) (JR.run [ 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.local "height")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN69852 -> (JR.setLocal "index2" "I" (JR.lit jwN69852))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "getPixel_3" (JR.local "raster") [ (JR.local "index"), (JR.local "index2"), (JR.thisField "colorArray") ]), 
                            JR.exec (JR.andThen (JR.thisField "colorArray") (\jaN69694 -> JR.andThen (JR.int 0) (\jiN69694 -> (JR.aset (JR.lit jaN69694) (JR.lit jiN69694) (JR.map2 JR.band (JR.cast "I" (JR.local "alpha")) (JR.aget (JR.thisField "colorArray") (JR.int 0))))))), 
                            JR.exec (JR.invoke "setPixel_3" (JR.local "raster") [ (JR.local "index"), (JR.local "index2"), (JR.thisField "colorArray") ]) ]) ] ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getImageArray_1 : JR.Method
jm_getImageArray_1 jheap jthis jargs =
    JR.method [ ( "originalImageArray", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "newImageArray" "" (JR.newArray "" [ (JR.alength (JR.local "originalImageArray")) ]), 
                        JR.declare "size" "I" (JR.alength (JR.local "newImageArray")), 
                        JR.declare "originalImage" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70497 -> (JR.setLocal "index" "I" (JR.lit jwN70497))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "originalImage" "" (JR.aget (JR.local "originalImageArray") (JR.local "index"))), 
                            JR.declare "image" "" (JR.invoke "createImageWH_2" (JR.callStatic ImageCreationUtil.jm_getInstance_0 []) [ (JR.invoke "getWidth_0" (JR.local "originalImage") []), (JR.invoke "getHeight_0" (JR.local "originalImage") []) ]), 
                            JR.exec (JR.invoke "drawImage_4" (JR.invoke "getGraphics_0" (JR.local "image") []) [ (JR.local "originalImage"), (JR.int 0), (JR.int 0), Anchor.jstatic_TOP_LEFT ]), 
                            JR.exec (JR.andThen (JR.local "newImageArray") (\jaN70412 -> JR.andThen (JR.local "index") (\jiN70412 -> (JR.aset (JR.lit jaN70412) (JR.lit jiN70412) (JR.local "image"))))) ]) ], 
                        JR.return (JR.local "newImageArray") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "getImageArray"), (JR.local "e") ]), 
                        JR.return (JR.local "originalImageArray") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_handleImage_3 : JR.Method
jm_handleImage_3 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ), ( "index", "I" ), ( "image", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_reset_0 : JR.Method
jm_reset_0 jheap jthis jargs =
    JR.method [] ""
        identity
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

