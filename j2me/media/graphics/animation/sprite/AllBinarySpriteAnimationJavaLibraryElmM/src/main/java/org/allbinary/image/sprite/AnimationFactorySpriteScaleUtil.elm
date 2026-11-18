module Org.Allbinary.Image.Sprite.AnimationFactorySpriteScaleUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image.sprite
-}

import JR
import Org.Allbinary.Image.ImageCacheFactory as ImageCacheFactory
import Org.Allbinary.Media.Image.ImageScaleUtil as ImageScaleUtil
import Org.Allbinary.Logic.Math.J2SEMath as J2SEMath
import Org.Allbinary.Image.Opengles.OpenGLESImageExclusionUtil as OpenGLESImageExclusionUtil
import Org.Allbinary.Graphics.Opengles.OpenGLUtil as OpenGLUtil
import Org.Allbinary.Game.Layer.SpriteFactory as SpriteFactory


jclass : String
jclass =
    "AnimationFactorySpriteScaleUtil"


jchain : List String
jchain =
    [ "AnimationFactorySpriteScaleUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "imageCache", JR.defaultOf "" ), ( "imageScaleUtil", JR.defaultOf "" ), ( "openGLUtil", JR.defaultOf "" ), ( "j2seMath", JR.defaultOf "" ), ( "openGLESImageExclusionUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createImage_5", jm_createImage_5 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnimationFactorySpriteScaleUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createImage_5", jm_createImage_5 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AnimationFactorySpriteScaleUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "imageCache" "" JR.this (JR.callStatic ImageCacheFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "imageScaleUtil" "" JR.this (JR.callStatic ImageScaleUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "openGLUtil" "" JR.this (JR.callStatic OpenGLUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "j2seMath" "" JR.this (JR.callStatic J2SEMath.jm_getInstance_0 [])),
                JR.exec (JR.setField "openGLESImageExclusionUtil" "" JR.this (JR.callStatic OpenGLESImageExclusionUtil.jm_getInstance_0 [])),
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


jm_createImage_5 : JR.Method
jm_createImage_5 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ), ( "scaleWidth", "I" ), ( "scaleHeight", "I" ) ] ""
        (JR.run [ 
                    JR.declare "spriteFactory" "" (JR.callStatic SpriteFactory.jm_getInstance_0 []), 
                    JR.declare "sprite" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "scaledImage" "" (JR.lit (JR.defaultOf "")), 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.local "scaleWidth") (JR.int 0)) (JR.map2 JR.notEquals (JR.local "scaleHeight") (JR.int 0))) (JR.run [ 
                        JR.declare "scaleX" "F" (JR.map2 JR.div ((JR.cast "F" (JR.local "scaleWidth"))) ((JR.cast "F" (JR.local "width")))), 
                        JR.declare "scaleY" "F" (JR.map2 JR.div ((JR.cast "F" (JR.local "scaleHeight"))) ((JR.cast "F" (JR.local "height")))), 
                        JR.ifElse (JR.or ((JR.and (JR.map2 JR.equals (JR.local "scaleX") (JR.float 1.0)) (JR.map2 JR.equals (JR.local "scaleY") (JR.float 1.0)))) ((JR.or (JR.map2 JR.equals (JR.local "scaleX") (JR.float 0.0)) (JR.map2 JR.equals (JR.local "scaleY") (JR.float 0.0))))) (JR.run [ 
                            JR.exec (JR.setLocal "scaledImage" "" (JR.invoke "addImage_1" (JR.thisField "openGLUtil") [ (JR.local "image") ])), 
                            JR.exec (JR.setLocal "sprite" "" (JR.invoke "createSprite_3" (JR.local "spriteFactory") [ (JR.local "scaledImage"), (JR.local "width"), (JR.local "height") ])) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "isCustomScaling_1" (JR.thisField "openGLESImageExclusionUtil") [ (JR.local "image") ]) (JR.run [ 
                                JR.declare "width2" "I" (JR.invoke "round_1" (JR.thisField "j2seMath") [ (JR.map2 JR.sub (JR.cast "F" ((JR.local "scaleWidth"))) (JR.float 0.5)) ]), 
                                JR.declare "height2" "I" (JR.invoke "round_1" (JR.thisField "j2seMath") [ (JR.map2 JR.sub (JR.cast "F" ((JR.local "scaleHeight"))) (JR.float 0.5)) ]), 
                                JR.declare "multiplesOf16Width" "I" (JR.map2 JR.div (JR.local "width2") (JR.int 16)), 
                                JR.declare "by16Width" "I" (JR.map2 JR.mul (JR.local "multiplesOf16Width") (JR.int 16)), 
                                JR.exec (JR.setLocal "scaleX" "F" (JR.map2 JR.div ((JR.cast "F" (JR.local "by16Width"))) (JR.cast "F" (JR.local "width")))), 
                                JR.declare "multiplesOf16Height" "I" (JR.map2 JR.div (JR.local "height2") (JR.int 16)), 
                                JR.declare "by16Height" "I" (JR.map2 JR.mul (JR.local "multiplesOf16Height") (JR.int 16)), 
                                JR.exec (JR.setLocal "scaleY" "F" (JR.map2 JR.div ((JR.cast "F" (JR.local "by16Height"))) (JR.cast "F" (JR.local "height")))), 
                                JR.ifElse (JR.map2 JR.less (JR.local "scaleWidth") (JR.local "width")) (JR.run [ 
                                    JR.exec (JR.setLocal "scaleX" "F" (JR.map2 JR.mul (JR.local "scaleX") (JR.float 2.35))) ]) identity, 
                                JR.ifElse (JR.map2 JR.less (JR.local "scaleHeight") (JR.local "height")) (JR.run [ 
                                    JR.exec (JR.setLocal "scaleY" "F" (JR.map2 JR.mul (JR.local "scaleY") (JR.float 2.35))) ]) identity ]) identity, 
                            JR.exec (JR.setLocal "scaledImage" "" (JR.invoke "createImage2_7" (JR.thisField "imageScaleUtil") [ (JR.thisField "imageCache"), (JR.local "image"), (JR.local "scaleX"), (JR.float 1.0), (JR.local "scaleY"), (JR.float 1.0), (JR.bool True) ])), 
                            JR.exec (JR.setLocal "sprite" "" (JR.invoke "createSprite_3" (JR.local "spriteFactory") [ (JR.local "scaledImage"), (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "width")) (JR.local "scaleX")))), (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.local "height")) (JR.local "scaleY")))) ])) ]) ]) (JR.run [ 
                        JR.exec (JR.setLocal "scaledImage" "" (JR.invoke "addImage_1" (JR.thisField "openGLUtil") [ (JR.local "image") ])), 
                        JR.exec (JR.setLocal "sprite" "" (JR.invoke "createSprite_3" (JR.local "spriteFactory") [ (JR.local "scaledImage"), (JR.local "width"), (JR.local "height") ])) ]), 
                    JR.return (JR.local "sprite") ])
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

