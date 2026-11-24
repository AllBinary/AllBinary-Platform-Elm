module Org.Allbinary.Media.Image.ImageToRotationImageArrayUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR
import Org.Allbinary.Media.Image.ImageRotationUtil as ImageRotationUtil


jclass : String
jclass =
    "ImageToRotationImageArrayUtil"


jchain : List String
jchain =
    [ "ImageToRotationImageArrayUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "generate_3", jm_generate_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageToRotationImageArrayUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_generate_3", jm_generate_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ImageToRotationImageArrayUtil" jclinit "instance"
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


jm_generate_3 : JR.Method
jm_generate_3 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "angleIncrement", "I" ), ( "totalAngle", "I" ) ] ""
        (JR.run [ 
                    JR.declare "imageRotationUtil" "" (JR.callStatic ImageRotationUtil.jm_getInstance_0 []), 
                    JR.declare "totalFrames" "I" (JR.map2 JR.div (JR.local "totalAngle") (JR.local "angleIncrement")), 
                    JR.declare "imageArray" "" (JR.newArray "" [ (JR.local "totalFrames") ]), 
                    JR.exec (JR.andThen (JR.local "imageArray") (\jaN65978 -> JR.andThen (JR.int 0) (\jiN65978 -> (JR.aset (JR.lit jaN65978) (JR.lit jiN65978) (JR.local "image"))))), 
                    JR.run [ JR.declare "index" "I" (JR.int 1), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "totalFrames")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66148 -> (JR.setLocal "index" "I" (JR.lit jwN66148))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "imageArray") (\jaN66019 -> JR.andThen (JR.local "index") (\jiN66019 -> (JR.aset (JR.lit jaN66019) (JR.lit jiN66019) (JR.invoke "createRotatedImage_2" (JR.local "imageRotationUtil") [ (JR.local "image"), (JR.map2 JR.mul (JR.local "index") (JR.local "angleIncrement")) ]))))) ]) ], 
                    JR.return (JR.local "imageArray") ])
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

