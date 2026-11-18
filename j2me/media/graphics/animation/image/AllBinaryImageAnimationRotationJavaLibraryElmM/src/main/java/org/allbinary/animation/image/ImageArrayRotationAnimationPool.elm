module Org.Allbinary.Animation.Image.ImageArrayRotationAnimationPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Logic.Util.Cache.BasicArrayListResetablePool as BasicArrayListResetablePool
import Org.Allbinary.Animation.Image.ImageArrayRotationAnimationCacheableInterfaceFactory as ImageArrayRotationAnimationCacheableInterfaceFactory


jclass : String
jclass =
    "ImageArrayRotationAnimationPool"


jchain : List String
jchain =
    [ "ImageArrayRotationAnimationPool" ]
        ++ BasicArrayListResetablePool.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicArrayListResetablePool.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "remove_1", jm_remove_1 ) ]
        BasicArrayListResetablePool.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageArrayRotationAnimationPool"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_remove_1", jm_remove_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_IMAGE_ROTATION_ANIMATION_POOL", jstatic_IMAGE_ROTATION_ANIMATION_POOL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_IMAGE_ROTATION_ANIMATION_POOL : JR.M
jstatic_IMAGE_ROTATION_ANIMATION_POOL s =
    JR.static "ImageArrayRotationAnimationPool" jclinit "IMAGE_ROTATION_ANIMATION_POOL"
        (JR.new jnew_1 [ (JR.new ImageArrayRotationAnimationCacheableInterfaceFactory.jnew_0 []) ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "cacheableInterfaceFactoryInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicArrayListResetablePool.jinit_1 JR.this [ (JR.local "cacheableInterfaceFactoryInterface") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_IMAGE_ROTATION_ANIMATION_POOL ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "key", "" ) ] ""
        (JR.run [ 
                    JR.declare "cacheableInterface" "" (JR.callVia BasicArrayListResetablePool.jvtable "remove_1" JR.this [ (JR.local "key") ]), 
                    JR.declare "allBinaryImageRotationAnimationInfo" "" (JR.local "key"), 
                    JR.declare "imageArrayRotationAnimationCacheable" "" ((JR.local "cacheableInterface")), 
                    JR.exec (JR.invoke "setImageArray_1" (JR.local "imageArrayRotationAnimationCacheable") [ (JR.invoke "getImageArray_0" (JR.local "allBinaryImageRotationAnimationInfo") []) ]), 
                    JR.return (JR.local "cacheableInterface") ])
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

