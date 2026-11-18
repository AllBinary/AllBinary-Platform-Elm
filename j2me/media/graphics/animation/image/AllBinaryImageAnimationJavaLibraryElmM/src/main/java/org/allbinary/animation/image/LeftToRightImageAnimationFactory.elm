module Org.Allbinary.Animation.Image.LeftToRightImageAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AdjustedLeftToRightImageAnimation as AdjustedLeftToRightImageAnimation
import Org.Allbinary.Animation.Image.BaseImageAnimationFactory as BaseImageAnimationFactory
import Org.Allbinary.Animation.Image.LeftToRightImageAnimation as LeftToRightImageAnimation


jclass : String
jclass =
    "LeftToRightImageAnimationFactory"


jchain : List String
jchain =
    [ "LeftToRightImageAnimationFactory" ]
        ++ BaseImageAnimationFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    BaseImageAnimationFactory.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 ) ]
        BaseImageAnimationFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LeftToRightImageAnimationFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "image", "" ), ( "sequenceArray", "" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BaseImageAnimationFactory.jinit_7 JR.this [ (JR.local "image"), (JR.local "sequenceArray"), (JR.invoke "getWidth_0" (JR.local "image") []), (JR.invoke "getHeight_0" (JR.local "image") []), (JR.local "dx"), (JR.local "dy"), (JR.local "animationBehaviorFactory") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "scaledImage" "" (JR.invoke "createImage_5" (JR.thisField "animationFactoryImageScaleUtil") [ (JR.invoke "getImage_0" JR.this []), (JR.field "width" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "height" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "scaleWidth" (JR.thisField "scaleProperties")), (JR.field "scaleHeight" (JR.thisField "scaleProperties")) ]), 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0)) (JR.map2 JR.notEquals (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")) (JR.int 0))) (JR.run [ 
                        JR.exec (JR.invoke "processAdjust_1" (JR.thisField "animationFactoryImageScaleUtil") [ JR.this ]), 
                        JR.return (JR.new AdjustedLeftToRightImageAnimation.jnew_5 [ (JR.local "scaledImage"), (JR.invoke "getSequenceArray_0" JR.this []), (JR.field "dx" (JR.thisField "animationFactoryInitializationVisitor")), (JR.field "dy" (JR.thisField "animationFactoryInitializationVisitor")), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) (JR.run [ 
                        JR.return (JR.new LeftToRightImageAnimation.jnew_3 [ (JR.local "scaledImage"), (JR.invoke "getSequenceArray_0" JR.this []), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) ])
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

