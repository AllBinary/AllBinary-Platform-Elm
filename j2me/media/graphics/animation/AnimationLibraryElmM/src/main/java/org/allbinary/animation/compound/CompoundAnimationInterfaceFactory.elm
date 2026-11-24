module Org.Allbinary.Animation.Compound.CompoundAnimationInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.compound
-}

import JR
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory


jclass : String
jclass =
    "CompoundAnimationInterfaceFactory"


jchain : List String
jchain =
    [ "CompoundAnimationInterfaceFactory" ]
        ++ AnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "basicAnimationInterfaceFactoryInterfaceArrayP", JR.defaultOf "" ), ( "animationBehaviorFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "createArray_1", jm_createArray_1 )
        , ( "createAnimation_1", jm_createAnimation_1 )
        , ( "getBasicAnimationInterfaceFactoryInterfaceArray_0", jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CompoundAnimationInterfaceFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_createArray_1", jm_createArray_1 ), ( "jm_createAnimation_1", jm_createAnimation_1 ), ( "jm_getBasicAnimationInterfaceFactoryInterfaceArray_0", jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "basicAnimationInterfaceFactoryInterfaceArray", "" ), ( "animationBehaviorFactory", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "basicAnimationInterfaceFactoryInterfaceArrayP" "" JR.this (JR.local "basicAnimationInterfaceFactoryInterfaceArray")), 
                    JR.exec (JR.setField "animationBehaviorFactory" "" JR.this (JR.local "animationBehaviorFactory")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "instanceId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.thisField "basicAnimationInterfaceFactoryInterfaceArrayP")), 
                    JR.declare "animationInterfaceArray" "" (JR.invoke "createArray_1" JR.this [ (JR.local "size") ]), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66816 -> (JR.setLocal "index" "I" (JR.lit jwN66816))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.andThen (JR.local "animationInterfaceArray") (\jaN66697 -> JR.andThen (JR.local "index") (\jiN66697 -> (JR.aset (JR.lit jaN66697) (JR.lit jiN66697) (JR.invoke "getInstance_1" (JR.aget (JR.thisField "basicAnimationInterfaceFactoryInterfaceArrayP") (JR.local "index")) [ (JR.local "instanceId") ]))))) ]) ], 
                    JR.return (JR.invoke "createAnimation_1" JR.this [ (JR.local "animationInterfaceArray") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createArray_1 : JR.Method
jm_createArray_1 jheap jthis jargs =
    JR.method [ ( "size", "I" ) ] ""
        (JR.run [ 
                    JR.return (JR.field "EMPTY_ARRAY" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_createAnimation_1 : JR.Method
jm_createAnimation_1 jheap jthis jargs =
    JR.method [ ( "animationInterfaceArray", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 : JR.Method
jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicAnimationInterfaceFactoryInterfaceArrayP") ])
        (jregister jheap)
        jthis
        jargs


jm_setInitialScale_1 : JR.Method
jm_setInitialScale_1 jheap jthis jargs =
    JR.method [ ( "scaleProperties", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.thisField "basicAnimationInterfaceFactoryInterfaceArrayP")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67319 -> (JR.setLocal "index" "I" (JR.lit jwN67319))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "setInitialScale_1" (JR.aget (JR.thisField "basicAnimationInterfaceFactoryInterfaceArrayP") (JR.local "index")) [ (JR.local "scaleProperties") ]) ]) ] ])
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

