module Org.Allbinary.Animation.Image.ScaleProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Media.Image.ImageScaleUtil as ImageScaleUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Animation.Image.ScaleBaseProcessor as ScaleBaseProcessor


jclass : String
jclass =
    "ScaleProcessor"


jchain : List String
jchain =
    [ "ScaleProcessor" ]
        ++ ScaleBaseProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    ScaleBaseProcessor.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "imageScaleUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "update_8", jm_update_8 ) ]
        ScaleBaseProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScaleProcessor"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_update_8", jm_update_8 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instanceC", jstatic_instanceC ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instanceC : JR.M
jstatic_instanceC s =
    JR.static "ScaleProcessor" jclinit "instanceC"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect ScaleBaseProcessor.jinit_0 JR.this []),
            JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "imageScaleUtil" "" JR.this (JR.callStatic ImageScaleUtil.jm_getInstance_0 [])),
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
                    JR.return jstatic_instanceC ])
        (jregister jheap)
        jthis
        jargs


jm_update_8 : JR.Method
jm_update_8 jheap jthis jargs =
    JR.method [ ( "originalImage", "" ), ( "originalImageArray", "" ), ( "ximageToShowArray", "" ), ( "unused", "I" ), ( "scaleX", "F" ), ( "scaleY", "F" ), ( "maxScaleX", "F" ), ( "maxScaleY", "F" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "scale2_8" (JR.thisField "imageScaleUtil") [ (JR.local "originalImage"), (JR.local "originalImageArray"), (JR.local "ximageToShowArray"), (JR.local "unused"), (JR.local "scaleX"), (JR.local "scaleY"), (JR.local "maxScaleX"), (JR.local "maxScaleY") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "UPDATE" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

