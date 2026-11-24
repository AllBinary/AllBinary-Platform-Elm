module Org.Allbinary.Image.AnimationFactoryImageScaleUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.image
-}

import JR
import Org.Allbinary.Media.Image.ImageJ2MEScaleUtil as ImageJ2MEScaleUtil


jclass : String
jclass =
    "AnimationFactoryImageScaleUtil"


jchain : List String
jchain =
    [ "AnimationFactoryImageScaleUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "imageScaleUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createImage_5", jm_createImage_5 )
        , ( "processAdjust_1", jm_processAdjust_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnimationFactoryImageScaleUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createImage_5", jm_createImage_5 ), ( "jm_processAdjust_1", jm_processAdjust_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AnimationFactoryImageScaleUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "imageScaleUtil" "" JR.this (JR.callStatic ImageJ2MEScaleUtil.jm_getInstance_0 [])),
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
                    JR.declare "scaledImage" "" (JR.lit (JR.defaultOf "")), 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.local "scaleWidth") (JR.int 0)) (JR.map2 JR.notEquals (JR.local "scaleHeight") (JR.int 0))) (JR.run [ 
                        JR.declare "scaleX" "F" (JR.map2 JR.div ((JR.cast "F" (JR.local "scaleWidth"))) ((JR.cast "F" (JR.local "width")))), 
                        JR.declare "scaleY" "F" (JR.map2 JR.div ((JR.cast "F" (JR.local "scaleHeight"))) ((JR.cast "F" (JR.local "height")))), 
                        JR.ifElse (JR.or ((JR.and (JR.map2 JR.equals (JR.local "scaleX") (JR.float 1.0)) (JR.map2 JR.equals (JR.local "scaleY") (JR.float 1.0)))) ((JR.or (JR.map2 JR.equals (JR.local "scaleX") (JR.float 0.0)) (JR.map2 JR.equals (JR.local "scaleY") (JR.float 0.0))))) (JR.run [ 
                            JR.exec (JR.setLocal "scaledImage" "" (JR.local "image")) ]) (JR.run [ 
                            JR.declare "scaledWidth" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.local "scaleX") (JR.cast "F" (JR.local "width"))))), 
                            JR.declare "scaledHeight" "I" (JR.cast "I" ((JR.map2 JR.mul (JR.local "scaleY") (JR.cast "F" (JR.local "height"))))), 
                            JR.exec (JR.setLocal "scaledImage" "" (JR.invoke "scale_3" (JR.thisField "imageScaleUtil") [ (JR.local "image"), (JR.local "scaledWidth"), (JR.local "scaledHeight") ])) ]) ]) (JR.run [ 
                        JR.exec (JR.setLocal "scaledImage" "" (JR.local "image")) ]), 
                    JR.return (JR.local "scaledImage") ])
        (jregister jheap)
        jthis
        jargs


jm_processAdjust_1 : JR.Method
jm_processAdjust_1 jheap jthis jargs =
    JR.method [ ( "baseImageAnimationFactory", "" ) ] ""
        (JR.run [ 
                    JR.declare "scaleProperties" "" (JR.invoke "getScalePropertiesP_0" (JR.local "baseImageAnimationFactory") []), 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.field "scaleWidth" (JR.local "scaleProperties")) (JR.int 0)) (JR.map2 JR.notEquals (JR.field "scaleHeight" (JR.local "scaleProperties")) (JR.int 0))) (JR.run [ 
                        JR.declare "animationFactoryInitializationVisitor" "" (JR.invoke "getAnimationFactoryInitializationVisitorP_0" (JR.local "baseImageAnimationFactory") []), 
                        JR.declare "scaleX" "F" (JR.map2 JR.div ((JR.cast "F" (JR.field "scaleWidth" (JR.local "scaleProperties")))) ((JR.cast "F" (JR.field "width" (JR.local "animationFactoryInitializationVisitor"))))), 
                        JR.declare "scaleY" "F" (JR.map2 JR.div ((JR.cast "F" (JR.field "scaleHeight" (JR.local "scaleProperties")))) ((JR.cast "F" (JR.field "height" (JR.local "animationFactoryInitializationVisitor"))))), 
                        JR.ifElse (JR.or ((JR.and (JR.map2 JR.equals (JR.local "scaleX") (JR.float 1.0)) (JR.map2 JR.equals (JR.local "scaleY") (JR.float 1.0)))) ((JR.or (JR.map2 JR.equals (JR.local "scaleX") (JR.float 0.0)) (JR.map2 JR.equals (JR.local "scaleY") (JR.float 0.0))))) identity (JR.run [ 
                            JR.exec (JR.andThen (JR.local "animationFactoryInitializationVisitor") (\jtN68392 -> (JR.setField "dx" "I" (JR.lit jtN68392) (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.field "originalDx" (JR.local "animationFactoryInitializationVisitor"))) (JR.local "scaleX"))))))), 
                            JR.exec (JR.andThen (JR.local "animationFactoryInitializationVisitor") (\jtN68458 -> (JR.setField "dy" "I" (JR.lit jtN68458) (JR.cast "I" ((JR.map2 JR.mul (JR.cast "F" (JR.field "originalDy" (JR.local "animationFactoryInitializationVisitor"))) (JR.local "scaleY"))))))) ]) ]) identity ])
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

