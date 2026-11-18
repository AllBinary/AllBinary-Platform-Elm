module Org.Allbinary.Media.Image.ImageCopyUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR
import Org.Allbinary.Graphics.Anchor as Anchor
import Org.Allbinary.Media.Image.ImageCreationUtil as ImageCreationUtil
import Org.Allbinary.Media.Image.ImageUtil as ImageUtil
import Org.Microemu.Device.J2se.J2SEImmutableImage as J2SEImmutableImage
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "ImageCopyUtil"


jchain : List String
jchain =
    [ "ImageCopyUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "imageUtil", JR.defaultOf "" ), ( "imageCreationUtil", JR.defaultOf "" ), ( "anchor", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createImageForRotation_1", jm_createImageForRotation_1 )
        , ( "createImage_1", jm_createImage_1 )
        , ( "createImageScale_3", jm_createImageScale_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageCopyUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createImageForRotation_1", jm_createImageForRotation_1 ), ( "jm_createImage_1", jm_createImage_1 ), ( "jm_createImageScale_3", jm_createImageScale_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageCopyUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "imageUtil" "" JR.this (JR.callStatic ImageUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "imageCreationUtil" "" JR.this (JR.callStatic ImageCreationUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "anchor" "I" JR.this Anchor.jstatic_TOP_LEFT),
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


jm_createImageForRotation_1 : JR.Method
jm_createImageForRotation_1 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "createImage_1" JR.this [ (JR.local "originalImage") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createImage_1 : JR.Method
jm_createImage_1 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ) ] ""
        (JR.run [ 
                    JR.declare "image" "" (JR.invoke "createImageWH_2" (JR.thisField "imageCreationUtil") [ (JR.invoke "getWidth_0" (JR.local "originalImage") []), (JR.invoke "getHeight_0" (JR.local "originalImage") []) ]), 
                    JR.ifElse (JR.invoke "isMutable_0" (JR.local "image") []) (JR.run [ 
                        JR.exec (JR.invoke "drawImage_4" (JR.invoke "getGraphics_0" (JR.local "image") []) [ (JR.local "originalImage"), (JR.int 0), (JR.int 0), (JR.thisField "anchor") ]), 
                        JR.return (JR.local "image") ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Not Mutable") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createImageScale_3 : JR.Method
jm_createImageScale_3 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ), ( "canvasScale", "F" ), ( "resize", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "newWidth" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.invoke "getWidth_0" (JR.local "originalImage") []) (JR.local "canvasScale")))), 
                    JR.declare "newHeight" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.local "originalImage") []) (JR.local "canvasScale")))), 
                    JR.ifElse (JR.local "resize") (JR.run [ 
                        JR.ifElse (JR.map2 JR.less (JR.local "newWidth") (JR.local "newHeight")) (JR.run [ 
                            JR.exec (JR.setLocal "newWidth" "I" (JR.local "newHeight")) ]) identity, 
                        JR.ifElse (JR.map2 JR.less (JR.local "newHeight") (JR.local "newWidth")) (JR.run [ 
                            JR.exec (JR.setLocal "newHeight" "I" (JR.local "newWidth")) ]) identity ]) identity, 
                    JR.declare "originalBufferedImage" "" (JR.invoke "getBufferedImage_1" (JR.thisField "imageUtil") [ (JR.local "originalImage") ]), 
                    JR.declare "bufferedImage" "" (JR.invoke "createBufferedImageWithLargerCanvas_3" (JR.thisField "imageUtil") [ (JR.local "originalBufferedImage"), (JR.local "newWidth"), (JR.local "newHeight") ]), 
                    JR.declare "image" "" (JR.new J2SEImmutableImage.jnew_1 [ (JR.local "bufferedImage") ]), 
                    JR.return (JR.local "image") ])
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

