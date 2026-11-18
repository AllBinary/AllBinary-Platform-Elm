module Org.Allbinary.Animation.Special.SpecialAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.special
-}

import JR
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation
import Org.Allbinary.Animation.IndexedAnimationBehavior as IndexedAnimationBehavior
import Org.Allbinary.Animation.Special.SpecialAnimationInterface as SpecialAnimationInterface


jclass : String
jclass =
    "SpecialAnimation"


jchain : List String
jchain =
    [ "SpecialAnimation" ]
        ++ IndexedAnimation.jchain
        ++ SpecialAnimationInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "setLastFrame_0", jm_setLastFrame_0 )
        , ( "isComplete_0", jm_isComplete_0 )
        , ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "process_0", jm_process_0 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpecialAnimation"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_setLastFrame_0", jm_setLastFrame_0 ), ( "jm_isComplete_0", jm_isComplete_0 ), ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_process_0", jm_process_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_NULL_SPECIAL_ANIMATION", jstatic_NULL_SPECIAL_ANIMATION ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_SPECIAL_ANIMATION : JR.M
jstatic_NULL_SPECIAL_ANIMATION s =
    JR.static "SpecialAnimation" jclinit "NULL_SPECIAL_ANIMATION"
        (JR.new jnew_1 [ (JR.new IndexedAnimationBehavior.jnew_2 [ (JR.int 1), (JR.int 250) ]) ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_NULL_SPECIAL_ANIMATION ])
        (jregister jheap)
        jthis
        jargs


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "indexedAnimationBehavior" "" ((JR.thisField "animationBehaviorP")), 
                    JR.exec (JR.andThen (JR.local "indexedAnimationBehavior") (\jtN66933 -> (JR.postUpdate (JR.field "loopIndex" (JR.lit jtN66933)) (\jwN66933 -> (JR.setField "loopIndex" "I" (JR.lit jtN66933) (JR.lit jwN66933))) JR.increment))) ])
        (jregister jheap)
        jthis
        jargs


jm_setLastFrame_0 : JR.Method
jm_setLastFrame_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isComplete_0 : JR.Method
jm_isComplete_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_process_0 : JR.Method
jm_process_0 jheap jthis jargs =
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

