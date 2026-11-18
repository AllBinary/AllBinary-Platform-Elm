module Org.Allbinary.Animation.VectorRotationAnimationInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Animation.VectorRotationAnimation as VectorRotationAnimation


jclass : String
jclass =
    "VectorRotationAnimationInterfaceFactory"


jchain : List String
jchain =
    [ "VectorRotationAnimationInterfaceFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "currentPoints", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "animationBehaviorFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VectorRotationAnimationInterfaceFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "currentPoints", "" ), ( "basicColor", "" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "currentPoints" "" JR.this (JR.field "NULL_INT_ARRAY_ARRAY_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "currentPoints" "" JR.this (JR.local "currentPoints")), 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]), 
                    JR.exec (JR.setField "animationBehaviorFactory" "" JR.this (JR.local "animationBehaviorFactory")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.new VectorRotationAnimation.jnew_3 [ (JR.thisField "currentPoints"), (JR.invoke "getBasicColorP_0" JR.this []), (JR.invoke "getOrCreateInstance_0" (JR.thisField "animationBehaviorFactory") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicColor") ])
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

