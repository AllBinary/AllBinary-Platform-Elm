module Org.Allbinary.Animation.BaseAnimationInterfaceFactoryInterfaceComposite exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.AnimationInterfaceFactoryInterface as AnimationInterfaceFactoryInterface
import Org.Allbinary.Animation.NullAnimationFactory as NullAnimationFactory


jclass : String
jclass =
    "BaseAnimationInterfaceFactoryInterfaceComposite"


jchain : List String
jchain =
    [ "BaseAnimationInterfaceFactoryInterfaceComposite" ]
        ++ AnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "basicAnimationInterfaceFactoryInterfaceArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 )
        , ( "getBasicAnimationInterfaceFactoryInterfaceArray_0", jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 )
        , ( "setBasicAnimationInterfaceFactoryInterfaceArray_1", jm_setBasicAnimationInterfaceFactoryInterfaceArray_1 )
        , ( "setInitialScale_1", jm_setInitialScale_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BaseAnimationInterfaceFactoryInterfaceComposite"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getBasicAnimationInterfaceFactoryInterfaceArray_0", jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 ), ( "jm_setBasicAnimationInterfaceFactoryInterfaceArray_1", jm_setBasicAnimationInterfaceFactoryInterfaceArray_1 ), ( "jm_setInitialScale_1", jm_setInitialScale_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "basicAnimationInterfaceFactoryInterfaceArray", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "basicAnimationInterfaceFactoryInterfaceArray" "" JR.this (JR.local "basicAnimationInterfaceFactoryInterfaceArray")) ]) ])
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
                    JR.return (JR.invoke "getInstance_1" (JR.callStatic NullAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 : JR.Method
jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicAnimationInterfaceFactoryInterfaceArray") ])
        (jregister jheap)
        jthis
        jargs


jm_setBasicAnimationInterfaceFactoryInterfaceArray_1 : JR.Method
jm_setBasicAnimationInterfaceFactoryInterfaceArray_1 jheap jthis jargs =
    JR.method [ ( "basicAnimationInterfaceFactoryInterfaceArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicAnimationInterfaceFactoryInterfaceArray" "" JR.this (JR.local "basicAnimationInterfaceFactoryInterfaceArray")) ])
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

