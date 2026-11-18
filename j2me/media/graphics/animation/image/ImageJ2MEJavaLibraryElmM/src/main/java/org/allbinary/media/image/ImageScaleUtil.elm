module Org.Allbinary.Media.Image.ImageScaleUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.media.image
-}

import JR



jclass : String
jclass =
    "ImageScaleUtil"


jchain : List String
jchain =
    [ "ImageScaleUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "createImage2_7", jm_createImage2_7 )
        , ( "createImage3_8", jm_createImage3_8 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageScaleUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_createImage2_7", jm_createImage2_7 ), ( "jm_createImage3_8", jm_createImage3_8 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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
                    JR.return (JR.local "originalImage") ])
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

