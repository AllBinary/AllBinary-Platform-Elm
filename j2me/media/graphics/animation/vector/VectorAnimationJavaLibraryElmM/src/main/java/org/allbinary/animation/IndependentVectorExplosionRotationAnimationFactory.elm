module Org.Allbinary.Animation.IndependentVectorExplosionRotationAnimationFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Animation.ProceduralAnimationInterfaceFactoryInterface as ProceduralAnimationInterfaceFactoryInterface
import Org.Allbinary.Animation.VectorExplosionGenerator as VectorExplosionGenerator
import Org.Allbinary.Animation.VectorRotationGenerator as VectorRotationGenerator


jclass : String
jclass =
    "IndependentVectorExplosionRotationAnimationFactory"


jchain : List String
jchain =
    [ "IndependentVectorExplosionRotationAnimationFactory" ]
        ++ ProceduralAnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "framePoints", JR.defaultOf "" ), ( "vectorInfo", JR.defaultOf "" ), ( "basicColor", JR.defaultOf "" ), ( "vectorAnimationFactoryInterface", JR.defaultOf "" ), ( "vectorExplosionGenerator", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "getInstanceAnimation_1", jm_getInstanceAnimation_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IndependentVectorExplosionRotationAnimationFactory"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_getInstanceAnimation_1", jm_getInstanceAnimation_1 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "vectorInfo", "" ), ( "basicColor", "" ), ( "vectorAnimationFactoryInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "framePoints" "" JR.this (JR.field "NULL_INT_ARRAY_ARRAY_ARRAY" (JR.callStatic NullUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "vectorExplosionGenerator" "" JR.this (JR.callStatic VectorExplosionGenerator.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "vectorInfo" "" JR.this (JR.local "vectorInfo")), 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")), 
                    JR.exec (JR.setField "vectorAnimationFactoryInterface" "" JR.this (JR.local "vectorAnimationFactoryInterface")), 
                    JR.exec (JR.invoke "init_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "framePoints" "" JR.this (JR.invoke "getInstance_1" (JR.callStatic VectorRotationGenerator.jm_getInstance_0 []) [ (JR.thisField "vectorInfo") ])) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstanceAnimation_1 : JR.Method
jm_getInstanceAnimation_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "frame" "I" (JR.int 0), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "animationInterface") JR.null) (JR.run [ 
                        JR.declare "rotationAnimationInterface" "" (JR.local "animationInterface"), 
                        JR.exec (JR.setLocal "frame" "I" (JR.invoke "getFrame_0" (JR.local "rotationAnimationInterface") [])) ]) identity, 
                    JR.declare "points" "" (JR.invoke "getInstance_3" (JR.thisField "vectorExplosionGenerator") [ (JR.aget (JR.thisField "framePoints") (JR.local "frame")), (JR.int 6), (JR.field "ROTATION" (JR.thisField "vectorExplosionGenerator")) ]), 
                    JR.return (JR.invoke "getInstance_2" (JR.thisField "vectorAnimationFactoryInterface") [ (JR.local "points"), (JR.thisField "basicColor") ]) ])
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

