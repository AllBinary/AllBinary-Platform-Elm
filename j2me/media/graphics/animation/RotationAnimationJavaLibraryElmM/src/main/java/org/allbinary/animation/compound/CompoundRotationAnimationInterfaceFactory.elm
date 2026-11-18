module Org.Allbinary.Animation.Compound.CompoundRotationAnimationInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.compound
-}

import JR
import Org.Allbinary.Animation.AnimationBehaviorFactory as AnimationBehaviorFactory
import Org.Allbinary.Animation.Compound.CompoundAnimationInterfaceFactory as CompoundAnimationInterfaceFactory
import Org.Allbinary.Animation.Compound.CompoundRotationAnimation as CompoundRotationAnimation
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil


jclass : String
jclass =
    "CompoundRotationAnimationInterfaceFactory"


jchain : List String
jchain =
    [ "CompoundRotationAnimationInterfaceFactory" ]
        ++ CompoundAnimationInterfaceFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    CompoundAnimationInterfaceFactory.jfields ++ []


jvtable =
    JR.vtable
        [ ( "createArray_1", jm_createArray_1 )
        , ( "createAnimation_1", jm_createAnimation_1 ) ]
        CompoundAnimationInterfaceFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CompoundRotationAnimationInterfaceFactory"
        [ ( "jm_createArray_1", jm_createArray_1 ), ( "jm_createAnimation_1", jm_createAnimation_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "basicAnimationInterfaceFactoryInterfaceArray", "" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CompoundAnimationInterfaceFactory.jinit_2 JR.this [ (JR.local "basicAnimationInterfaceFactoryInterfaceArray"), (JR.local "animationBehaviorFactory") ]),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "animationBehaviorFactory") (JR.callStatic AnimationBehaviorFactory.jm_getInstance_0 [])) (JR.run [ 
                        JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.str "Using default AnimationBehaviorFactory with IndexedAnimationFactory"), JR.this ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_createArray_1 : JR.Method
jm_createArray_1 jheap jthis jargs =
    JR.method [ ( "size", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.newArray "" [ (JR.local "size") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createAnimation_1 : JR.Method
jm_createAnimation_1 jheap jthis jargs =
    JR.method [ ( "animationInterfaceArray", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new CompoundRotationAnimation.jnew_2 [ (JR.local "animationInterfaceArray"), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ])
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

