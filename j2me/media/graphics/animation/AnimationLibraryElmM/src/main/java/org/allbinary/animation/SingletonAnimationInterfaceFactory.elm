module Org.Allbinary.Animation.SingletonAnimationInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Animation.ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterface


jclass : String
jclass =
    "SingletonAnimationInterfaceFactory"


jchain : List String
jchain =
    [ "SingletonAnimationInterfaceFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain
        ++ ProceduralAnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "animationInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "getInstanceAnimation_1", jm_getInstanceAnimation_1 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SingletonAnimationInterfaceFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getInstanceAnimation_1", jm_getInstanceAnimation_1 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.thisField "animationInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceAnimation_1 : JR.Method
jm_getInstanceAnimation_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.thisField "animationInterface") ])
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

