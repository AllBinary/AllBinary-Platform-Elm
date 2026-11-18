module Org.Allbinary.Media.Image.ImageUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "ImageUtil"


jchain : List String
jchain =
    [ "ImageUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ), ( "commonSeps", JR.defaultOf "" ), ( "IIOIMAGE_POOL_NAME", JR.defaultOf "" ), ( "CREATE_BUFFERED_IMAGE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getDefaultConfiguration_0", jm_getDefaultConfiguration_0 )
        , ( "create_2", jm_create_2 )
        , ( "createBufferedImageForResize_3", jm_createBufferedImageForResize_3 )
        , ( "createBufferedImage2_3", jm_createBufferedImage2_3 )
        , ( "createBufferedImage3_4", jm_createBufferedImage3_4 )
        , ( "createBufferedImageForSave_3", jm_createBufferedImageForSave_3 )
        , ( "createBufferedImage_4", jm_createBufferedImage_4 )
        , ( "createBufferedImageAllowTranslate_5", jm_createBufferedImageAllowTranslate_5 )
        , ( "createBufferedImageWithLargerCanvas_3", jm_createBufferedImageWithLargerCanvas_3 )
        , ( "convertToBufferedImage_1", jm_convertToBufferedImage_1 )
        , ( "getBufferedImage_1", jm_getBufferedImage_1 )
        , ( "toString_1", jm_toString_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getDefaultConfiguration_0", jm_getDefaultConfiguration_0 ), ( "jm_create_2", jm_create_2 ), ( "jm_createBufferedImageForResize_3", jm_createBufferedImageForResize_3 ), ( "jm_createBufferedImage2_3", jm_createBufferedImage2_3 ), ( "jm_createBufferedImage3_4", jm_createBufferedImage3_4 ), ( "jm_createBufferedImageForSave_3", jm_createBufferedImageForSave_3 ), ( "jm_createBufferedImage_4", jm_createBufferedImage_4 ), ( "jm_createBufferedImageAllowTranslate_5", jm_createBufferedImageAllowTranslate_5 ), ( "jm_createBufferedImageWithLargerCanvas_3", jm_createBufferedImageWithLargerCanvas_3 ), ( "jm_convertToBufferedImage_1", jm_convertToBufferedImage_1 ), ( "jm_getBufferedImage_1", jm_getBufferedImage_1 ), ( "jm_toString_1", jm_toString_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonSeps" "" JR.this (JR.callStatic CommonSeps.jm_getInstance_0 [])),
                JR.exec (JR.setField "IIOIMAGE_POOL_NAME" "" JR.this (JR.str "IIOIMAGE_POOL_NAME")),
                JR.exec (JR.setField "CREATE_BUFFERED_IMAGE" "" JR.this (JR.str "createBufferedImage")),
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


jm_getDefaultConfiguration_0 : JR.Method
jm_getDefaultConfiguration_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "ge" "" (JR.callStatic (JR.namedMethod "GraphicsEnvironment.jm_getLocalGraphicsEnvironment_0") []), 
                    JR.declare "gd" "" (JR.invoke "getDefaultScreenDevice_0" (JR.local "ge") []), 
                    JR.return (JR.invoke "getDefaultConfiguration_0" (JR.local "gd") []) ])
        (jregister jheap)
        jthis
        jargs


jm_create_2 : JR.Method
jm_create_2 jheap jthis jargs =
    JR.method [ ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.declare "graphicsConfiguration" "" (JR.invoke "getDefaultConfiguration_0" JR.this []), 
                    JR.return (JR.invoke "createCompatibleImage_3" (JR.local "graphicsConfiguration") [ (JR.local "width"), (JR.local "height"), (JR.namedStatic "Transparency.jstatic_TRANSLUCENT") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createBufferedImageForResize_3 : JR.Method
jm_createBufferedImageForResize_3 jheap jthis jargs =
    JR.method [ ( "bufferedImageArray", "" ), ( "percent", "I" ), ( "scale", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.local "bufferedImageArray")), 
                    JR.declare "scaledBufferedImageArray" "" (JR.newArray "" [ (JR.local "size") ]), 
                    JR.declare "bufferedImage" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67771 -> (JR.setLocal "index" "I" (JR.lit jwN67771))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "bufferedImage" "" (JR.aget (JR.local "bufferedImageArray") (JR.local "index"))), 
                        JR.declare "newWidth" "I" (JR.cast "I" ((JR.map2 JR.div (JR.map2 JR.mul (JR.invoke "getWidth_0" (JR.local "bufferedImage") []) (JR.local "percent")) (JR.int 100)))), 
                        JR.declare "newHeight" "I" (JR.cast "I" ((JR.map2 JR.div (JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.local "bufferedImage") []) (JR.local "percent")) (JR.int 100)))), 
                        JR.exec (JR.andThen (JR.local "scaledBufferedImageArray") (\jaN67648 -> JR.andThen (JR.local "index") (\jiN67648 -> (JR.aset (JR.lit jaN67648) (JR.lit jiN67648) (JR.invoke "createBufferedImage_4" JR.this [ (JR.local "bufferedImage"), (JR.local "newWidth"), (JR.local "newHeight"), (JR.local "scale") ]))))) ]) ], 
                    JR.return (JR.local "scaledBufferedImageArray") ])
        (jregister jheap)
        jthis
        jargs


jm_createBufferedImage2_3 : JR.Method
jm_createBufferedImage2_3 jheap jthis jargs =
    JR.method [ ( "bufferedImageArray", "" ), ( "percent", "F" ), ( "scale", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.local "bufferedImageArray")), 
                    JR.declare "scaledBufferedImageArray" "" (JR.newArray "" [ (JR.local "size") ]), 
                    JR.declare "bufferedImage" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68368 -> (JR.setLocal "index" "I" (JR.lit jwN68368))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "bufferedImage" "" (JR.aget (JR.local "bufferedImageArray") (JR.local "index"))), 
                        JR.declare "newWidth" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.invoke "getWidth_0" (JR.local "bufferedImage") []) (JR.local "percent")))), 
                        JR.declare "newHeight" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.local "bufferedImage") []) (JR.local "percent")))), 
                        JR.exec (JR.andThen (JR.local "scaledBufferedImageArray") (\jaN68245 -> JR.andThen (JR.local "index") (\jiN68245 -> (JR.aset (JR.lit jaN68245) (JR.lit jiN68245) (JR.invoke "createBufferedImage_4" JR.this [ (JR.local "bufferedImage"), (JR.local "newWidth"), (JR.local "newHeight"), (JR.local "scale") ]))))) ]) ], 
                    JR.return (JR.local "scaledBufferedImageArray") ])
        (jregister jheap)
        jthis
        jargs


jm_createBufferedImage3_4 : JR.Method
jm_createBufferedImage3_4 jheap jthis jargs =
    JR.method [ ( "bufferedImageArray", "" ), ( "width", "I" ), ( "height", "I" ), ( "scale", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.local "bufferedImageArray")), 
                    JR.declare "scaledBufferedImageArray" "" (JR.newArray "" [ (JR.local "size") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68771 -> (JR.setLocal "index" "I" (JR.lit jwN68771))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "scaledBufferedImageArray") (\jaN68636 -> JR.andThen (JR.local "index") (\jiN68636 -> (JR.aset (JR.lit jaN68636) (JR.lit jiN68636) (JR.invoke "createBufferedImage_4" JR.this [ (JR.aget (JR.local "bufferedImageArray") (JR.local "index")), (JR.local "width"), (JR.local "height"), (JR.local "scale") ]))))) ]) ], 
                    JR.return (JR.local "scaledBufferedImageArray") ])
        (jregister jheap)
        jthis
        jargs


jm_createBufferedImageForSave_3 : JR.Method
jm_createBufferedImageForSave_3 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ), ( "newWidth", "I" ), ( "newHeight", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "createBufferedImage_4" JR.this [ (JR.local "bufferedImage"), (JR.local "newWidth"), (JR.local "newHeight"), (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createBufferedImage_4 : JR.Method
jm_createBufferedImage_4 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ), ( "newWidth", "I" ), ( "newHeight", "I" ), ( "scale", "Z" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "createBufferedImageAllowTranslate_5" JR.this [ (JR.local "bufferedImage"), (JR.local "newWidth"), (JR.local "newHeight"), (JR.local "scale"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createBufferedImageAllowTranslate_5 : JR.Method
jm_createBufferedImageAllowTranslate_5 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ), ( "newWidth", "I" ), ( "newHeight", "I" ), ( "scale", "Z" ), ( "allowTranslate", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "width" "D" (JR.invoke "getWidth_0" (JR.local "bufferedImage") []), 
                    JR.declare "height" "D" (JR.invoke "getHeight_0" (JR.local "bufferedImage") []), 
                    JR.declare "d_newWidth" "D" (JR.cast "D" (JR.local "newWidth")), 
                    JR.declare "d_newHeight" "D" (JR.cast "D" (JR.local "newHeight")), 
                    JR.declare "widthRatio" "D" (JR.map2 JR.div (JR.local "d_newWidth") (JR.local "width")), 
                    JR.declare "heightRatio" "D" (JR.map2 JR.div (JR.local "d_newHeight") (JR.local "height")), 
                    JR.declare "ratioX" "D" (JR.float 1.0), 
                    JR.declare "ratioY" "D" (JR.float 1.0), 
                    JR.ifElse (JR.local "scale") (JR.run [ 
                        JR.exec (JR.setLocal "ratioX" "D" (JR.local "widthRatio")), 
                        JR.exec (JR.setLocal "ratioY" "D" (JR.local "heightRatio")) ]) identity, 
                    JR.declare "affineTransform" "" (JR.callStatic (JR.namedMethod "AffineTransform.jm_getScaleInstance_2") [ (JR.local "ratioX"), (JR.local "ratioY") ]), 
                    JR.ifElse (JR.and (JR.map JR.not_ (JR.local "scale")) (JR.local "allowTranslate")) (JR.run [ 
                        JR.declare "dx" "D" (JR.map2 JR.div ((JR.map2 JR.sub (JR.cast "D" (JR.local "newWidth")) (JR.local "width"))) (JR.float 2.0)), 
                        JR.declare "dy" "D" (JR.map2 JR.div ((JR.map2 JR.sub (JR.cast "D" (JR.local "newHeight")) (JR.local "height"))) (JR.float 2.0)), 
                        JR.exec (JR.invoke "translate_2" (JR.local "affineTransform") [ (JR.local "dx"), (JR.local "dy") ]) ]) identity, 
                    JR.declare "newBufferedImage" "" (JR.new (JR.namedMethod "BufferedImage.jnew_3") [ (JR.local "newWidth"), (JR.local "newHeight"), (JR.namedStatic "BufferedImage.jstatic_TYPE_INT_ARGB_PRE") ]), 
                    JR.declare "graphics" "" (JR.invoke "createGraphics_0" (JR.local "newBufferedImage") []), 
                    JR.exec (JR.invoke "drawRenderedImage_2" (JR.local "graphics") [ (JR.local "bufferedImage"), (JR.local "affineTransform") ]), 
                    JR.return (JR.local "newBufferedImage") ])
        (jregister jheap)
        jthis
        jargs


jm_createBufferedImageWithLargerCanvas_3 : JR.Method
jm_createBufferedImageWithLargerCanvas_3 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ), ( "newWidth", "I" ), ( "newHeight", "I" ) ] ""
        (JR.run [ 
                    JR.declare "width" "D" (JR.invoke "getWidth_0" (JR.local "bufferedImage") []), 
                    JR.declare "height" "D" (JR.invoke "getHeight_0" (JR.local "bufferedImage") []), 
                    JR.declare "d_newWidth" "D" (JR.cast "D" (JR.local "newWidth")), 
                    JR.declare "d_newHeight" "D" (JR.cast "D" (JR.local "newHeight")), 
                    JR.declare "widthRatio" "D" (JR.map2 JR.div (JR.local "d_newWidth") (JR.local "width")), 
                    JR.declare "heightRatio" "D" (JR.map2 JR.div (JR.local "d_newHeight") (JR.local "height")), 
                    JR.declare "dx2" "I" (JR.cast "I" ((JR.map2 JR.sub (JR.cast "D" (JR.local "newWidth")) (JR.local "width")))), 
                    JR.declare "dy2" "I" (JR.cast "I" ((JR.map2 JR.sub (JR.cast "D" (JR.local "newHeight")) (JR.local "height")))), 
                    JR.declare "dx" "I" (JR.map2 JR.div (JR.local "dx2") (JR.int 2)), 
                    JR.declare "dy" "I" (JR.map2 JR.div (JR.local "dy2") (JR.int 2)), 
                    JR.declare "dx4" "I" (JR.map2 JR.div (JR.local "dx2") (JR.int 4)), 
                    JR.declare "dy4" "I" (JR.map2 JR.div (JR.local "dy2") (JR.int 4)), 
                    JR.declare "newBufferedImage" "" (JR.new (JR.namedMethod "BufferedImage.jnew_3") [ (JR.local "newWidth"), (JR.local "newHeight"), (JR.namedStatic "BufferedImage.jstatic_TYPE_INT_ARGB_PRE") ]), 
                    JR.declare "graphics" "" (JR.invoke "createGraphics_0" (JR.local "newBufferedImage") []), 
                    JR.exec (JR.invoke "drawImage_4" (JR.local "graphics") [ (JR.local "bufferedImage"), (JR.local "dx4"), (JR.local "dy4"), JR.null ]), 
                    JR.return (JR.local "newBufferedImage") ])
        (jregister jheap)
        jthis
        jargs


jm_convertToBufferedImage_1 : JR.Method
jm_convertToBufferedImage_1 jheap jthis jargs =
    JR.method [ ( "toolkitImage", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "toolkitImage") JR.null) (JR.run [ 
                        JR.return JR.null ]) identity, 
                    JR.declare "bufferedImage" "" (JR.new (JR.namedMethod "BufferedImage.jnew_3") [ (JR.invoke "getWidth_1" (JR.local "toolkitImage") [ JR.null ]), (JR.invoke "getHeight_1" (JR.local "toolkitImage") [ JR.null ]), (JR.namedStatic "BufferedImage.jstatic_TYPE_INT_ARGB") ]), 
                    JR.declare "g2d" "" (JR.invoke "createGraphics_0" (JR.local "bufferedImage") []), 
                    JR.exec (JR.invoke "drawImage_4" (JR.local "g2d") [ (JR.local "toolkitImage"), (JR.int 0), (JR.int 0), JR.null ]), 
                    JR.exec (JR.invoke "dispose_0" (JR.local "g2d") []), 
                    JR.return (JR.local "bufferedImage") ])
        (jregister jheap)
        jthis
        jargs


jm_getBufferedImage_1 : JR.Method
jm_getBufferedImage_1 jheap jthis jargs =
    JR.method [ ( "image", "" ) ] ""
        (JR.run [ 
                    JR.declare "bufferedImage" "" (JR.lit (JR.defaultOf "")), 
                    JR.ifElse (JR.invoke "isMutable_0" (JR.local "image") []) (JR.run [ 
                        JR.declare "j2seImage" "" (JR.local "image"), 
                        JR.exec (JR.setLocal "bufferedImage" "" (JR.invoke "getImage_0" (JR.local "j2seImage") [])) ]) (JR.run [ 
                        JR.declare "j2seImage" "" (JR.local "image"), 
                        JR.exec (JR.setLocal "bufferedImage" "" (JR.invoke "getImage_0" (JR.local "j2seImage") [])) ]), 
                    JR.return (JR.local "bufferedImage") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_1 : JR.Method
jm_toString_1 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonLabels" "" (JR.callStatic CommonLabels.jm_getInstance_0 []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " BufferedImage -") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "WIDTH_LABEL" (JR.local "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "getWidth_0" (JR.local "bufferedImage") [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "HEIGHT_LABEL" (JR.local "commonLabels")) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "getHeight_0" (JR.local "bufferedImage") [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Type: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.cast "I" (JR.invoke "getType_0" (JR.local "bufferedImage") [])) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

