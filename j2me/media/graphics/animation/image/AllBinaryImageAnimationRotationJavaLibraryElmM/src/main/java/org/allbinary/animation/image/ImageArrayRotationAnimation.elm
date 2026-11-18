module Org.Allbinary.Animation.Image.ImageArrayRotationAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.ImageArrayBaseRotationAnimation as ImageArrayBaseRotationAnimation


jclass : String
jclass =
    "ImageArrayRotationAnimation"


jchain : List String
jchain =
    [ "ImageArrayRotationAnimation" ]
        ++ ImageArrayBaseRotationAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    ImageArrayBaseRotationAnimation.jfields ++ [ ( "expectedTotalFrames", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "createAnimation_2", jm_createAnimation_2 )
        , ( "initImageArray_3", jm_initImageArray_3 )
        , ( "setImageArray_1", jm_setImageArray_1 ) ]
        ImageArrayBaseRotationAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageArrayRotationAnimation"
        [ ( "jm_createAnimation_2", jm_createAnimation_2 ), ( "jm_initImageArray_3", jm_initImageArray_3 ), ( "jm_setImageArray_1", jm_setImageArray_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ), ( "angleInfo", "" ), ( "totalAngle", "I" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ImageArrayBaseRotationAnimation.jinit_3 JR.this [ (JR.local "imageArray"), (JR.local "angleInfo"), (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "initImageArray_3" JR.this [ (JR.local "imageArray"), (JR.local "angleInfo"), (JR.local "totalAngle") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_createAnimation_2 : JR.Method
jm_createAnimation_2 jheap jthis jargs =
    JR.method [ ( "anyType", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ 
                    JR.declare "imageRotationAnimationInfo" "" (JR.local "anyType"), 
                    JR.return (JR.new jnew_4 [ (JR.invoke "getImageArray_0" (JR.local "imageRotationAnimationInfo") []), (JR.invoke "getAngleInfoP_0" (JR.local "imageRotationAnimationInfo") []), (JR.invoke "getTotalAngle_0" (JR.local "imageRotationAnimationInfo") []), (JR.local "animationBehavior") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_initImageArray_3 : JR.Method
jm_initImageArray_3 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ), ( "angleInfo", "" ), ( "totalAngle", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "expectedTotalFrames" "I" JR.this (JR.map2 JR.div (JR.local "totalAngle") (JR.cast "I" (JR.invoke "getAngleIncrement_0" (JR.invoke "getAngleIncrementInfo_0" (JR.thisField "angleInfo") []) [])))), 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.int 0) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "expectedTotalFrames") (JR.invoke "getSize_0" JR.this [])) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "Wrong Number of Frames") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_setImageArray_1 : JR.Method
jm_setImageArray_1 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia ImageArrayBaseRotationAnimation.jvtable "setImageArray_1" JR.this [ (JR.local "imageArray") ]), 
                    JR.exec (JR.invoke "adjustAngle_1" (JR.thisField "angleInfo") [ (JR.int 0) ]) ])
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

