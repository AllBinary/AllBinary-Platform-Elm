module Org.Allbinary.Animation.Transition.Shake.ShakeAnimationListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.transition.shake
-}

import JR



jclass : String
jclass =
    "ShakeAnimationListener"


jchain : List String
jchain =
    [ "ShakeAnimationListener" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "onSmallShakeEvent_0", jm_onSmallShakeEvent_0 )
        , ( "onMediumShakeEvent_0", jm_onMediumShakeEvent_0 )
        , ( "onLargeShakeEvent_0", jm_onLargeShakeEvent_0 )
        , ( "onShakeEvent_1", jm_onShakeEvent_1 )
        , ( "getType_0", jm_getType_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ShakeAnimationListener"
        [ ( "jm_onSmallShakeEvent_0", jm_onSmallShakeEvent_0 ), ( "jm_onMediumShakeEvent_0", jm_onMediumShakeEvent_0 ), ( "jm_onLargeShakeEvent_0", jm_onLargeShakeEvent_0 ), ( "jm_onShakeEvent_1", jm_onShakeEvent_1 ), ( "jm_getType_0", jm_getType_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_onSmallShakeEvent_0 : JR.Method
jm_onSmallShakeEvent_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onMediumShakeEvent_0 : JR.Method
jm_onMediumShakeEvent_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onLargeShakeEvent_0 : JR.Method
jm_onLargeShakeEvent_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onShakeEvent_1 : JR.Method
jm_onShakeEvent_1 jheap jthis jargs =
    JR.method [ ( "shakeEvent", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getType_0 : JR.Method
jm_getType_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
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

