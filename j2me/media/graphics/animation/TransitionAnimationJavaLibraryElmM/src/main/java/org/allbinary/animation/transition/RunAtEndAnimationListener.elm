module Org.Allbinary.Animation.Transition.RunAtEndAnimationListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.transition
-}

import JR
import Org.Allbinary.Animation.Transition.AnimationListenerInterface as AnimationListenerInterface


jclass : String
jclass =
    "RunAtEndAnimationListener"


jchain : List String
jchain =
    [ "RunAtEndAnimationListener" ]
        ++ AnimationListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "runnable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "onPlatformAnimationStart_0", jm_onPlatformAnimationStart_0 )
        , ( "onPlatformAnimationEnd_0", jm_onPlatformAnimationEnd_0 )
        , ( "onPlatformAnimationRepeat_0", jm_onPlatformAnimationRepeat_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RunAtEndAnimationListener"
        [ ( "jm_onPlatformAnimationStart_0", jm_onPlatformAnimationStart_0 ), ( "jm_onPlatformAnimationEnd_0", jm_onPlatformAnimationEnd_0 ), ( "jm_onPlatformAnimationRepeat_0", jm_onPlatformAnimationRepeat_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "runnable", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "runnable" "" JR.this (JR.local "runnable")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_onPlatformAnimationStart_0 : JR.Method
jm_onPlatformAnimationStart_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onPlatformAnimationEnd_0 : JR.Method
jm_onPlatformAnimationEnd_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onPlatformAnimationRepeat_0 : JR.Method
jm_onPlatformAnimationRepeat_0 jheap jthis jargs =
    JR.method [] ""
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

