module Org.Allbinary.Media.Image.ImageRotationUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR
import Org.Allbinary.Media.Image.ImageCreationUtil as ImageCreationUtil
import Org.Allbinary.Media.Image.ImageJ2SERotationUtil as ImageJ2SERotationUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil


jclass : String
jclass =
    "ImageRotationUtil"


jchain : List String
jchain =
    [ "ImageRotationUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "imageJ2SERotationUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "rotateImage_3", jm_rotateImage_3 )
        , ( "createRotatedImage_2", jm_createRotatedImage_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageRotationUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_rotateImage_3", jm_rotateImage_3 ), ( "jm_createRotatedImage_2", jm_createRotatedImage_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageRotationUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "imageJ2SERotationUtil" "" JR.this (JR.callStatic ImageJ2SERotationUtil.jm_getInstance_0 [])),
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


jm_rotateImage_3 : JR.Method
jm_rotateImage_3 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ), ( "image", "" ), ( "totalAngle", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isMutable_0" (JR.local "image") []) (JR.run [ 
                        JR.declare "j2seImage" "" (JR.local "image"), 
                        JR.declare "newBufferedImage" "" (JR.invoke "getImage_0" (JR.local "j2seImage") []), 
                        JR.declare "originalAwtImage" "" JR.null, 
                        JR.ifElse (JR.invoke "isMutable_0" (JR.local "originalImage") []) (JR.run [ 
                            JR.declare "originalJ2SEImage" "" (JR.local "originalImage"), 
                            JR.exec (JR.setLocal "originalAwtImage" "" (JR.invoke "getImage_0" (JR.local "originalJ2SEImage") [])) ]) (JR.run [ 
                            JR.declare "originalJ2SEImage" "" (JR.local "originalImage"), 
                            JR.exec (JR.setLocal "originalAwtImage" "" (JR.invoke "getImage_0" (JR.local "originalJ2SEImage") [])) ]), 
                        JR.exec (JR.invoke "rotateImage_3" (JR.thisField "imageJ2SERotationUtil") [ (JR.local "originalAwtImage"), (JR.local "newBufferedImage"), (JR.local "totalAngle") ]) ]) (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.str "Not Mutable"), JR.this, (JR.str "getRotatedImage"), (JR.new (JR.newThrowable "Exception" [ "Exception" ]) []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createRotatedImage_2 : JR.Method
jm_createRotatedImage_2 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ), ( "rotationInDegrees", "I" ) ] ""
        (JR.run [ 
                    JR.declare "image" "" (JR.invoke "createImageWH_2" (JR.callStatic ImageCreationUtil.jm_getInstance_0 []) [ (JR.invoke "getWidth_0" (JR.local "originalImage") []), (JR.invoke "getHeight_0" (JR.local "originalImage") []) ]), 
                    JR.ifElse (JR.invoke "isMutable_0" (JR.local "image") []) (JR.run [ 
                        JR.declare "originalAwtImage" "" JR.null, 
                        JR.ifElse (JR.invoke "isMutable_0" (JR.local "originalImage") []) (JR.run [ 
                            JR.declare "originalJ2SEImage" "" (JR.local "originalImage"), 
                            JR.exec (JR.setLocal "originalAwtImage" "" (JR.invoke "getImage_0" (JR.local "originalJ2SEImage") [])) ]) (JR.run [ 
                            JR.declare "originalJ2SEImage" "" (JR.local "originalImage"), 
                            JR.exec (JR.setLocal "originalAwtImage" "" (JR.invoke "getImage_0" (JR.local "originalJ2SEImage") [])) ]), 
                        JR.declare "j2seImage" "" (JR.local "image"), 
                        JR.declare "newBufferedImage" "" (JR.invoke "getImage_0" (JR.local "j2seImage") []), 
                        JR.declare "bufferedImage" "" (JR.invoke "createRotatedImage_3" (JR.thisField "imageJ2SERotationUtil") [ (JR.local "originalAwtImage"), (JR.local "newBufferedImage"), (JR.local "rotationInDegrees") ]), 
                        JR.return (JR.local "image") ]) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Not Mutable") ]) ]) ])
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

