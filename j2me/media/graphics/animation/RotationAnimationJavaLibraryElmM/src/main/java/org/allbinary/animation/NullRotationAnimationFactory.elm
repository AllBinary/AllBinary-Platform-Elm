module Org.Allbinary.Animation.NullRotationAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Animation.NullRotationAnimation2 as NullRotationAnimation2
import Org.Allbinary.Animation.ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterface


jclass : String
jclass =
    "NullRotationAnimationFactory"


jchain : List String
jchain =
    [ "NullRotationAnimationFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain
        ++ ProceduralAnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NULL_ROTATION_ANIMATION_ARRAY", JR.defaultOf "" ), ( "NULL_ANIMATION", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getFactoryInstance_0", jm_getFactoryInstance_0 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "getInstanceAnimation_1", jm_getInstanceAnimation_1 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NullRotationAnimationFactory"
        [ ( "jm_getFactoryInstance_0", jm_getFactoryInstance_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getInstanceAnimation_1", jm_getInstanceAnimation_1 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_ROTATION_ANIMATION_FACTORY", jstatic_NULL_ROTATION_ANIMATION_FACTORY ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_ROTATION_ANIMATION_FACTORY : JR.M
jstatic_NULL_ROTATION_ANIMATION_FACTORY s =
    JR.static "NullRotationAnimationFactory" jclinit "NULL_ROTATION_ANIMATION_FACTORY"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NULL_ROTATION_ANIMATION_ARRAY" "" JR.this (JR.newArray "" [ (JR.int 0) ])),
                JR.exec (JR.setField "NULL_ANIMATION" "" JR.this (JR.new NullRotationAnimation2.jnew_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getFactoryInstance_0 : JR.Method
jm_getFactoryInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_NULL_ROTATION_ANIMATION_FACTORY ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.thisField "NULL_ANIMATION") ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceAnimation_1 : JR.Method
jm_getInstanceAnimation_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.thisField "NULL_ANIMATION") ])
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

