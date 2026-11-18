module Org.Allbinary.Animation.Image.ImageArrayRotationAnimationInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Math.AngleInfo as AngleInfo


jclass : String
jclass =
    "ImageArrayRotationAnimationInfo"


jchain : List String
jchain =
    [ "ImageArrayRotationAnimationInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "imageArray", JR.defaultOf "" ), ( "angleIncrement", JR.defaultOf "I" ), ( "totalAngle", JR.defaultOf "I" ), ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "setImageArray_1", jm_setImageArray_1 )
        , ( "getImageArray_0", jm_getImageArray_0 )
        , ( "getAngleInfoP_0", jm_getAngleInfoP_0 )
        , ( "setTotalAngle_1", jm_setTotalAngle_1 )
        , ( "getTotalAngle_0", jm_getTotalAngle_0 )
        , ( "setDx_1", jm_setDx_1 )
        , ( "getDx_0", jm_getDx_0 )
        , ( "setDy_1", jm_setDy_1 )
        , ( "getDy_0", jm_getDy_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageArrayRotationAnimationInfo"
        [ ( "jm_setImageArray_1", jm_setImageArray_1 ), ( "jm_getImageArray_0", jm_getImageArray_0 ), ( "jm_getAngleInfoP_0", jm_getAngleInfoP_0 ), ( "jm_setTotalAngle_1", jm_setTotalAngle_1 ), ( "jm_getTotalAngle_0", jm_getTotalAngle_0 ), ( "jm_setDx_1", jm_setDx_1 ), ( "jm_getDx_0", jm_getDx_0 ), ( "jm_setDy_1", jm_setDy_1 ), ( "jm_getDy_0", jm_getDy_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ), ( "angleIncrement", "I" ), ( "totalAngle", "I" ), ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "imageArray" "" JR.this (JR.local "imageArray")), 
                    JR.exec (JR.setField "angleIncrement" "I" JR.this (JR.local "angleIncrement")), 
                    JR.exec (JR.setField "totalAngle" "I" JR.this (JR.local "totalAngle")), 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_setImageArray_1 : JR.Method
jm_setImageArray_1 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "imageArray" "" JR.this (JR.local "imageArray")) ])
        (jregister jheap)
        jthis
        jargs


jm_getImageArray_0 : JR.Method
jm_getImageArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "imageArray") ])
        (jregister jheap)
        jthis
        jargs


jm_getAngleInfoP_0 : JR.Method
jm_getAngleInfoP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic AngleInfo.jm_getInstance_1 [ (JR.cast "S" (JR.thisField "angleIncrement")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setTotalAngle_1 : JR.Method
jm_setTotalAngle_1 jheap jthis jargs =
    JR.method [ ( "totalAngle", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "totalAngle" "I" JR.this (JR.local "totalAngle")) ])
        (jregister jheap)
        jthis
        jargs


jm_getTotalAngle_0 : JR.Method
jm_getTotalAngle_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "totalAngle") ])
        (jregister jheap)
        jthis
        jargs


jm_setDx_1 : JR.Method
jm_setDx_1 jheap jthis jargs =
    JR.method [ ( "dx", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDx_0 : JR.Method
jm_getDx_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "dx") ])
        (jregister jheap)
        jthis
        jargs


jm_setDy_1 : JR.Method
jm_setDy_1 jheap jthis jargs =
    JR.method [ ( "dy", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDy_0 : JR.Method
jm_getDy_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "dy") ])
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

