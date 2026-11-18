module Org.Allbinary.Animation.Transition.Shake.NoShakeAnimationListener exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.transition.shake
-}

import JR
import Org.Allbinary.Animation.Transition.Shake.ShakeAnimationListener as ShakeAnimationListener


jclass : String
jclass =
    "NoShakeAnimationListener"


jchain : List String
jchain =
    [ "NoShakeAnimationListener" ]
        ++ ShakeAnimationListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    ShakeAnimationListener.jfields ++ []


jvtable =
    JR.vtable
        []
        ShakeAnimationListener.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoShakeAnimationListener"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NO_SHAKE_ANIMATION_LISTENER", jstatic_NO_SHAKE_ANIMATION_LISTENER ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NO_SHAKE_ANIMATION_LISTENER : JR.M
jstatic_NO_SHAKE_ANIMATION_LISTENER s =
    JR.static "NoShakeAnimationListener" jclinit "NO_SHAKE_ANIMATION_LISTENER"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect ShakeAnimationListener.jinit_0 JR.this []),
            identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

