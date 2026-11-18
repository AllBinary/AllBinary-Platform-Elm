module Org.Allbinary.Animation.Image.AdjustedImageArrayRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.ImageArrayRotationAnimation as ImageArrayRotationAnimation


jclass : String
jclass =
    "AdjustedImageArrayRotationAnimation"


jchain : List String
jchain =
    [ "AdjustedImageArrayRotationAnimation" ]
        ++ ImageArrayRotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    ImageArrayRotationAnimation.jfields ++ [ ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "createAdjustedImageArrayRotationAnimationInfo_2", jm_createAdjustedImageArrayRotationAnimationInfo_2 )
        , ( "createAnimation_4", jm_createAnimation_4 )
        , ( "init_2", jm_init_2 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "setDx_1", jm_setDx_1 )
        , ( "getDx_0", jm_getDx_0 )
        , ( "setDy_1", jm_setDy_1 )
        , ( "getDy_0", jm_getDy_0 ) ]
        ImageArrayRotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AdjustedImageArrayRotationAnimation"
        [ ( "jm_createAdjustedImageArrayRotationAnimationInfo_2", jm_createAdjustedImageArrayRotationAnimationInfo_2 ), ( "jm_createAnimation_4", jm_createAnimation_4 ), ( "jm_init_2", jm_init_2 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_setDx_1", jm_setDx_1 ), ( "jm_getDx_0", jm_getDx_0 ), ( "jm_setDy_1", jm_setDy_1 ), ( "jm_getDy_0", jm_getDy_0 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ), ( "angleInfo", "" ), ( "totalAngle", "I" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ImageArrayRotationAnimation.jinit_4 JR.this [ (JR.local "imageArray"), (JR.local "angleInfo"), (JR.local "totalAngle"), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "init_2" JR.this [ (JR.local "dx"), (JR.local "dy") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_createAdjustedImageArrayRotationAnimationInfo_2 : JR.Method
jm_createAdjustedImageArrayRotationAnimationInfo_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ 
                    JR.declare "imageRotationAnimationInfo" "" (JR.local "anyType"), 
                    JR.return (JR.new jnew_6 [ (JR.invoke "getImageArray_0" (JR.local "imageRotationAnimationInfo") []), (JR.invoke "getAngleInfoP_0" (JR.local "imageRotationAnimationInfo") []), (JR.invoke "getTotalAngle_0" (JR.local "imageRotationAnimationInfo") []), (JR.invoke "getDx_0" (JR.local "imageRotationAnimationInfo") []), (JR.invoke "getDy_0" (JR.local "imageRotationAnimationInfo") []), (JR.local "animationBehavior") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createAnimation_4 : JR.Method
jm_createAnimation_4 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ), ( "angleInfo", "" ), ( "totalAngle", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_6 [ (JR.local "imageArray"), (JR.local "angleInfo"), (JR.local "totalAngle"), (JR.map JR.neg ((JR.map2 JR.shr (JR.invoke "getWidth_0" (JR.aget (JR.local "imageArray") (JR.int 0)) []) (JR.int 2)))), (JR.map JR.neg ((JR.map2 JR.shr (JR.invoke "getHeight_0" (JR.aget (JR.local "imageArray") (JR.int 0)) []) (JR.int 2)))), (JR.local "animationBehavior") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_init_2 : JR.Method
jm_init_2 jheap jthis jargs =
    JR.method [ ( "dx", "I" ), ( "dy", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setDx_1" JR.this [ (JR.local "dx") ]), 
                    JR.exec (JR.invoke "setDy_1" JR.this [ (JR.local "dy") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ImageArrayRotationAnimation.jvtable "paintXY_3" JR.this [ (JR.local "graphics"), (JR.map2 JR.add (JR.local "x") (JR.thisField "dx")), (JR.map2 JR.add (JR.local "y") (JR.thisField "dy")) ]) ])
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

