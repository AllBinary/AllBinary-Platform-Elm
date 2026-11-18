module Org.Allbinary.Media.Image.ImageJ2SERotationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR
import Org.Allbinary.Media.Image.ImageJ2SEUtil as ImageJ2SEUtil
import Org.Allbinary.Media.Image.ImageUtil as ImageUtil


jclass : String
jclass =
    "ImageJ2SERotationUtil"


jchain : List String
jchain =
    [ "ImageJ2SERotationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "imageUtil", JR.defaultOf "" ), ( "imageJ2SEUtil", JR.defaultOf "" ), ( "TWO_PIE", JR.defaultOf "D" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getRotatedImage_2", jm_getRotatedImage_2 )
        , ( "getRotatedImageRadians_2", jm_getRotatedImageRadians_2 )
        , ( "drawRotatedImageRadians_4", jm_drawRotatedImageRadians_4 )
        , ( "rotateImage_3", jm_rotateImage_3 )
        , ( "createRotatedImage_3", jm_createRotatedImage_3 )
        , ( "getRotatedImages_3", jm_getRotatedImages_3 )
        , ( "createSpriteImage_1", jm_createSpriteImage_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageJ2SERotationUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getRotatedImage_2", jm_getRotatedImage_2 ), ( "jm_getRotatedImageRadians_2", jm_getRotatedImageRadians_2 ), ( "jm_drawRotatedImageRadians_4", jm_drawRotatedImageRadians_4 ), ( "jm_rotateImage_3", jm_rotateImage_3 ), ( "jm_createRotatedImage_3", jm_createRotatedImage_3 ), ( "jm_getRotatedImages_3", jm_getRotatedImages_3 ), ( "jm_createSpriteImage_1", jm_createSpriteImage_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageJ2SERotationUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "imageUtil" "" JR.this (JR.callStatic ImageUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "imageJ2SEUtil" "" JR.this (JR.callStatic ImageJ2SEUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "TWO_PIE" "D" JR.this (JR.map2 JR.mul (JR.int 2) (JR.namedStatic "Math.jstatic_PI"))),
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


jm_getRotatedImage_2 : JR.Method
jm_getRotatedImage_2 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ), ( "totalAngle", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getRotatedImageRadians_2" JR.this [ (JR.local "bufferedImage"), (JR.map2 JR.div (JR.map2 JR.mul (JR.thisField "TWO_PIE") (JR.cast "D" (JR.local "totalAngle"))) (JR.float 360.0)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getRotatedImageRadians_2 : JR.Method
jm_getRotatedImageRadians_2 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ), ( "radians", "D" ) ] ""
        (JR.run [ 
                    JR.declare "newBufferedImage" "" (JR.invoke "create_2" (JR.thisField "imageUtil") [ (JR.invoke "getWidth_1" (JR.local "bufferedImage") [ JR.null ]), (JR.invoke "getHeight_1" (JR.local "bufferedImage") [ JR.null ]) ]), 
                    JR.return (JR.invoke "drawRotatedImageRadians_4" JR.this [ (JR.local "bufferedImage"), (JR.local "newBufferedImage"), (JR.invoke "createGraphics_0" (JR.local "newBufferedImage") []), (JR.local "radians") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_drawRotatedImageRadians_4 : JR.Method
jm_drawRotatedImageRadians_4 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ), ( "newBufferedImage", "" ), ( "g", "" ), ( "radians", "D" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "rotate_3" (JR.local "g") [ (JR.local "radians"), (JR.map2 JR.div (JR.invoke "getWidth_1" (JR.local "newBufferedImage") [ JR.null ]) (JR.int 2)), (JR.map2 JR.div (JR.invoke "getHeight_1" (JR.local "newBufferedImage") [ JR.null ]) (JR.int 2)) ]), 
                    JR.exec (JR.invoke "drawImage_6" (JR.local "g") [ (JR.local "bufferedImage"), (JR.int 0), (JR.int 0), (JR.invoke "getWidth_1" (JR.local "bufferedImage") [ JR.null ]), (JR.invoke "getHeight_1" (JR.local "bufferedImage") [ JR.null ]), JR.null ]), 
                    JR.exec (JR.invoke "dispose_0" (JR.local "g") []), 
                    JR.return (JR.local "newBufferedImage") ])
        (jregister jheap)
        jthis
        jargs


jm_rotateImage_3 : JR.Method
jm_rotateImage_3 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ), ( "newBufferedImage", "" ), ( "totalAngle", "I" ) ] ""
        (JR.run [ 
                    JR.declare "g" "" (JR.invoke "createGraphics_0" (JR.local "newBufferedImage") []), 
                    JR.exec (JR.invoke "setBackground_1" (JR.local "g") [ (JR.field "TRANSPARENT_COLOR" (JR.thisField "imageJ2SEUtil")) ]), 
                    JR.exec (JR.invoke "clearRect_4" (JR.local "g") [ (JR.int 0), (JR.int 0), (JR.invoke "getWidth_0" (JR.local "newBufferedImage") []), (JR.invoke "getHeight_0" (JR.local "newBufferedImage") []) ]), 
                    JR.return (JR.invoke "drawRotatedImageRadians_4" JR.this [ (JR.local "bufferedImage"), (JR.local "newBufferedImage"), (JR.local "g"), (JR.map2 JR.div (JR.map2 JR.mul (JR.thisField "TWO_PIE") (JR.cast "D" (JR.local "totalAngle"))) (JR.float 360.0)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createRotatedImage_3 : JR.Method
jm_createRotatedImage_3 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ), ( "newBufferedImage", "" ), ( "totalAngle", "I" ) ] ""
        (JR.run [ 
                    JR.declare "g" "" (JR.invoke "createGraphics_0" (JR.local "newBufferedImage") []), 
                    JR.return (JR.invoke "drawRotatedImageRadians_4" JR.this [ (JR.local "bufferedImage"), (JR.local "newBufferedImage"), (JR.local "g"), (JR.map2 JR.div (JR.map2 JR.mul (JR.thisField "TWO_PIE") (JR.cast "D" (JR.local "totalAngle"))) (JR.float 360.0)) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getRotatedImages_3 : JR.Method
jm_getRotatedImages_3 jheap jthis jargs =
    JR.method [ ( "bufferedImage", "" ), ( "numberOfFrames", "I" ), ( "totalAngle", "I" ) ] ""
        (JR.run [ 
                    JR.declare "bufferedImageArray" "" (JR.newArray "" [ (JR.local "numberOfFrames") ]), 
                    JR.declare "arc" "D" (JR.map2 JR.div (JR.map2 JR.mul ((JR.thisField "TWO_PIE")) (JR.cast "D" (JR.local "totalAngle"))) (JR.float 360.0)), 
                    JR.declare "size" "I" (JR.alength (JR.local "bufferedImageArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68210 -> (JR.setLocal "index" "I" (JR.lit jwN68210))) JR.increment) ]) (JR.run [ 
                        JR.declare "radians" "D" (JR.map2 JR.mul ((JR.map2 JR.div (JR.local "arc") (JR.cast "D" (JR.local "size")))) (JR.cast "D" (JR.local "index"))), 
                        JR.exec (JR.andThen (JR.local "bufferedImageArray") (\jaN68103 -> JR.andThen (JR.local "index") (\jiN68103 -> (JR.aset (JR.lit jaN68103) (JR.lit jiN68103) (JR.invoke "getRotatedImageRadians_2" JR.this [ (JR.local "bufferedImage"), (JR.local "radians") ]))))) ]) ], 
                    JR.return (JR.local "bufferedImageArray") ])
        (jregister jheap)
        jthis
        jargs


jm_createSpriteImage_1 : JR.Method
jm_createSpriteImage_1 jheap jthis jargs =
    JR.method [ ( "bufferedImageArray", "" ) ] ""
        (JR.run [ 
                    JR.declare "columns" "I" (JR.int 9), 
                    JR.declare "rows" "I" (JR.int 0), 
                    JR.declare "size" "I" (JR.alength (JR.local "bufferedImageArray")), 
                    JR.ifElse (JR.map2 JR.less (JR.local "size") (JR.local "columns")) (JR.run [ 
                        JR.exec (JR.setLocal "columns" "I" (JR.local "size")) ]) identity, 
                    JR.exec (JR.setLocal "rows" "I" ((JR.map2 JR.div (JR.local "size") (JR.local "columns")))), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.map2 JR.rem (JR.local "size") (JR.local "columns")) (JR.int 0)) (JR.run [ 
                        JR.exec (JR.postUpdate (JR.local "rows") (\jwN68579 -> (JR.setLocal "rows" "I" (JR.lit jwN68579))) JR.increment) ]) identity, 
                    JR.declare "firstBufferedImage" "" (JR.aget (JR.local "bufferedImageArray") (JR.int 0)), 
                    JR.declare "bufferedImage" "" (JR.invoke "create_2" (JR.thisField "imageUtil") [ (JR.map2 JR.mul (JR.invoke "getWidth_1" (JR.local "firstBufferedImage") [ JR.null ]) (JR.local "columns")), (JR.map2 JR.mul (JR.invoke "getHeight_1" (JR.local "firstBufferedImage") [ JR.null ]) (JR.local "rows")) ]), 
                    JR.declare "g" "" (JR.invoke "createGraphics_0" (JR.local "bufferedImage") []), 
                    JR.declare "columnIndex" "I" (JR.int 0), 
                    JR.declare "rowIndex" "I" (JR.int 0), 
                    JR.declare "nextBufferedImage" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69282 -> (JR.setLocal "index" "I" (JR.lit jwN69282))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.map2 JR.div (JR.local "index") (JR.int 9)) (JR.int 0)) (JR.map2 JR.equals (JR.map2 JR.rem (JR.local "index") (JR.int 9)) (JR.int 0))) (JR.run [ 
                            JR.exec (JR.postUpdate (JR.local "rowIndex") (\jwN68987 -> (JR.setLocal "rowIndex" "I" (JR.lit jwN68987))) JR.increment), 
                            JR.exec (JR.setLocal "columnIndex" "I" (JR.int 0)) ]) identity, 
                        JR.exec (JR.setLocal "nextBufferedImage" "" (JR.aget (JR.local "bufferedImageArray") (JR.local "index"))), 
                        JR.exec (JR.invoke "drawImage_6" (JR.local "g") [ (JR.local "nextBufferedImage"), (JR.map2 JR.mul (JR.invoke "getWidth_1" (JR.local "nextBufferedImage") [ JR.null ]) (JR.local "columnIndex")), (JR.map2 JR.mul (JR.invoke "getHeight_1" (JR.local "nextBufferedImage") [ JR.null ]) (JR.local "rowIndex")), (JR.invoke "getWidth_1" (JR.local "nextBufferedImage") [ JR.null ]), (JR.invoke "getHeight_1" (JR.local "nextBufferedImage") [ JR.null ]), JR.null ]), 
                        JR.exec (JR.postUpdate (JR.local "columnIndex") (\jwN69213 -> (JR.setLocal "columnIndex" "I" (JR.lit jwN69213))) JR.increment) ]) ], 
                    JR.exec (JR.invoke "dispose_0" (JR.local "g") []), 
                    JR.return (JR.local "bufferedImage") ])
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

