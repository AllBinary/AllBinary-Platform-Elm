module Org.Allbinary.Animation.Image.ImageArrayRotationAnimationCacheable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AdjustedImageArrayRotationAnimation as AdjustedImageArrayRotationAnimation
import Org.Allbinary.Logic.Util.Cache.CacheableInterface as CacheableInterface
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ImageArrayRotationAnimationCacheable"


jchain : List String
jchain =
    [ "ImageArrayRotationAnimationCacheable" ]
        ++ AdjustedImageArrayRotationAnimation.jchain
        ++ CacheableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    AdjustedImageArrayRotationAnimation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getKey_0", jm_getKey_0 )
        , ( "toString_0", jm_toString_0 ) ]
        AdjustedImageArrayRotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageArrayRotationAnimationCacheable"
        [ ( "jm_getKey_0", jm_getKey_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect AdjustedImageArrayRotationAnimation.jinit_6 JR.this [ (JR.invoke "getImageArray_0" ((JR.local "anyType")) []), (JR.invoke "getAngleInfoP_0" ((JR.local "anyType")) []), (JR.invoke "getTotalAngle_0" ((JR.local "anyType")) []), (JR.invoke "getDx_0" ((JR.local "anyType")) []), (JR.invoke "getDy_0" ((JR.local "anyType")) []), (JR.local "animationBehavior") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getKey_0 : JR.Method
jm_getKey_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
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

