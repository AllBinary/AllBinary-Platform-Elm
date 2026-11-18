module Org.Allbinary.Animation.TimedVectorAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.AnimationBehavior as AnimationBehavior
import Org.Allbinary.Animation.TimedVectorAnimation as TimedVectorAnimation
import Org.Allbinary.Animation.VectorAnimationFactoryInterface as VectorAnimationFactoryInterface


jclass : String
jclass =
    "TimedVectorAnimationFactory"


jchain : List String
jchain =
    [ "TimedVectorAnimationFactory" ]
        ++ VectorAnimationFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_2", jm_getInstance_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TimedVectorAnimationFactory"
        [ ( "jm_getInstance_2", jm_getInstance_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "points", "" ), ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new TimedVectorAnimation.jnew_3 [ (JR.local "points"), (JR.local "basicColor"), (JR.callStatic AnimationBehavior.jm_getInstance_0 []) ]) ])
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

