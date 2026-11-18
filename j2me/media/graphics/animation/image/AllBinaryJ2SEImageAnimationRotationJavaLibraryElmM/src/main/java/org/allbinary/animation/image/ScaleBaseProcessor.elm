module Org.Allbinary.Animation.Image.ScaleBaseProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR



jclass : String
jclass =
    "ScaleBaseProcessor"


jchain : List String
jchain =
    [ "ScaleBaseProcessor" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "update_8", jm_update_8 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScaleBaseProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_update_8", jm_update_8 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ScaleBaseProcessor" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
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


jm_update_8 : JR.Method
jm_update_8 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ), ( "originalImageArray", "" ), ( "imageToShowArray", "" ), ( "index", "I" ), ( "scaleX", "F" ), ( "scaleY", "F" ), ( "maxScaleX", "F" ), ( "maxScaleY", "F" ) ] ""
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

