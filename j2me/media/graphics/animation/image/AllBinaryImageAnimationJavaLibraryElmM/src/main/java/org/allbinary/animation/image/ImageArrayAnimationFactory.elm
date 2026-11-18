module Org.Allbinary.Animation.Image.ImageArrayAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.image
-}

import JR
import Org.Allbinary.Animation.Image.AdjustedImageArrayAnimation as AdjustedImageArrayAnimation
import Org.Allbinary.Animation.AnimationBehavior as AnimationBehavior
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Animation.Image.ImageArrayAnimation as ImageArrayAnimation


jclass : String
jclass =
    "ImageArrayAnimationFactory"


jchain : List String
jchain =
    [ "ImageArrayAnimationFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "dx", JR.defaultOf "I" ), ( "dy", JR.defaultOf "I" ), ( "imageArray", JR.defaultOf "" ), ( "animationBehaviorFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ImageArrayAnimationFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "imageArray", "" ), ( "dx", "I" ), ( "dy", "I" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "dx" "I" JR.this (JR.int 0)),
                JR.exec (JR.setField "dy" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "imageArray" "" JR.this (JR.local "imageArray")), 
                    JR.exec (JR.setField "animationBehaviorFactory" "" JR.this (JR.local "animationBehaviorFactory")), 
                    JR.exec (JR.setField "dx" "I" JR.this (JR.local "dx")), 
                    JR.exec (JR.setField "dy" "I" JR.this (JR.local "dy")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.or (JR.map2 JR.notEquals (JR.thisField "dx") (JR.int 0)) (JR.map2 JR.notEquals (JR.thisField "dy") (JR.int 0))) (JR.run [ 
                        JR.return (JR.new AdjustedImageArrayAnimation.jnew_4 [ (JR.thisField "imageArray"), (JR.thisField "dx"), (JR.thisField "dy"), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ]) (JR.run [ 
                        JR.return (JR.new ImageArrayAnimation.jnew_2 [ (JR.thisField "imageArray"), (JR.callStatic AnimationBehavior.jm_getInstance_0 []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialScale_1 : JR.Method
jm_setInitialScale_1 jheap jthis jargs =
    JR.method [ ( "scaleProperties", "" ) ] ""
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

