module Org.Allbinary.Media.Image.ImageJ2MEScaleUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR
import Javax.Microedition.Lcdui.Image as Image


jclass : String
jclass =
    "ImageJ2MEScaleUtil"


jchain : List String
jchain =
    [ "ImageJ2MEScaleUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "scaleArray_3", jm_scaleArray_3 )
        , ( "scale_3", jm_scale_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageJ2MEScaleUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_scaleArray_3", jm_scaleArray_3 ), ( "jm_scale_3", jm_scale_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageJ2MEScaleUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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


jm_scaleArray_3 : JR.Method
jm_scaleArray_3 jheap jthis jargs =
    JR.method [ ( "images", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.declare "scaledImages" "" (JR.newArray "" [ (JR.alength (JR.local "images")) ]), 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.local "images")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN65951 -> (JR.setLocal "index" "I" (JR.lit jwN65951))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "scaledImages") (\jaN65869 -> JR.andThen (JR.local "index") (\jiN65869 -> (JR.aset (JR.lit jaN65869) (JR.lit jiN65869) (JR.invoke "scale_3" JR.this [ (JR.aget (JR.local "images") (JR.local "index")), (JR.local "width"), (JR.local "height") ]))))) ]) ], 
                    JR.return (JR.local "scaledImages") ])
        (jregister jheap)
        jthis
        jargs


jm_scale_3 : JR.Method
jm_scale_3 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "width", "I" ), ( "height", "I" ) ] ""
        (JR.run [ 
                    JR.declare "sourceWidth" "I" (JR.invoke "getWidth_0" (JR.local "image") []), 
                    JR.declare "sourceHeight" "I" (JR.invoke "getHeight_0" (JR.local "image") []), 
                    JR.declare "originalData" "" (JR.newArray "I" [ (JR.map2 JR.mul (JR.invoke "getWidth_0" (JR.local "image") []) (JR.invoke "getHeight_0" (JR.local "image") [])) ]), 
                    JR.exec (JR.invoke "getRGB_7" (JR.local "image") [ (JR.local "originalData"), (JR.int 0), (JR.invoke "getWidth_0" (JR.local "image") []), (JR.int 0), (JR.int 0), (JR.invoke "getWidth_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []) ]), 
                    JR.declare "scaledData" "" (JR.newArray "I" [ (JR.map2 JR.mul (JR.local "width") (JR.local "height")) ]), 
                    JR.declare "heightRatioFactor" "I" (JR.map2 JR.div ((JR.map2 JR.mul (JR.int 8) (JR.local "sourceHeight"))) (JR.local "height")), 
                    JR.declare "widthRatioFactor" "I" (JR.map2 JR.div ((JR.map2 JR.mul (JR.int 8) (JR.local "sourceWidth"))) (JR.local "width")), 
                    JR.declare "scaledIndex" "I" (JR.map2 JR.sub (JR.alength (JR.local "scaledData")) (JR.int 1)), 
                    JR.declare "dx" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "dy" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.run [ JR.declare "index" "I" (JR.local "height"), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN66964 -> (JR.setLocal "index" "I" (JR.lit jwN66964))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "dy" "I" (JR.map2 JR.shr ((JR.map2 JR.mul (JR.local "index") (JR.local "heightRatioFactor"))) (JR.int 3))), 
                        JR.run [ JR.declare "index2" "I" (JR.local "width"), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index2") (\jwN66909 -> (JR.setLocal "index2" "I" (JR.lit jwN66909))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                            JR.exec (JR.setLocal "dx" "I" (JR.map2 JR.shr ((JR.map2 JR.mul (JR.local "index2") (JR.local "widthRatioFactor"))) (JR.int 3))), 
                            JR.exec (JR.andThen (JR.local "scaledData") (\jaN66822 -> JR.andThen (JR.postUpdate (JR.local "scaledIndex") (\jwN66829 -> (JR.setLocal "scaledIndex" "I" (JR.lit jwN66829))) JR.decrement) (\jiN66822 -> (JR.aset (JR.lit jaN66822) (JR.lit jiN66822) (JR.aget (JR.local "originalData") (JR.map2 JR.add ((JR.map2 JR.mul (JR.local "sourceWidth") (JR.local "dy"))) (JR.local "dx"))))))) ]) ] ]) ], 
                    JR.declare "scaledImage" "" (JR.callStatic Image.jm_createRGBImage_4 [ (JR.local "scaledData"), (JR.local "width"), (JR.local "height"), (JR.bool True) ]), 
                    JR.return (JR.local "scaledImage") ])
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

