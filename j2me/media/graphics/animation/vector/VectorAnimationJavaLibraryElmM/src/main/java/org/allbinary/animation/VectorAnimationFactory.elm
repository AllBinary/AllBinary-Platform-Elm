module Org.Allbinary.Animation.VectorAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.AnimationBehavior as AnimationBehavior
import Org.Allbinary.Animation.VectorAnimation as VectorAnimation
import Org.Allbinary.Animation.VectorAnimationFactoryInterface as VectorAnimationFactoryInterface


jclass : String
jclass =
    "VectorAnimationFactory"


jchain : List String
jchain =
    [ "VectorAnimationFactory" ]
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
    JR.register "VectorAnimationFactory"
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
                    JR.return (JR.new VectorAnimation.jnew_3 [ (JR.local "points"), (JR.local "basicColor"), (JR.callStatic AnimationBehavior.jm_getInstance_0 []) ]) ])
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

