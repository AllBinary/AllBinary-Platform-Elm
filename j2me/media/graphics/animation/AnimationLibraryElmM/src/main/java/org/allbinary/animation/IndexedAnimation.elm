module Org.Allbinary.Animation.IndexedAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.Animation as Animation
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Animation.IndexedAnimationInterface as IndexedAnimationInterface
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil


jclass : String
jclass =
    "IndexedAnimation"


jchain : List String
jchain =
    [ "IndexedAnimation" ]
        ++ Animation.jchain
        ++ IndexedAnimationInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Animation.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "animationBehaviorP", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getAnimationBehavior_0", jm_getAnimationBehavior_0 )
        , ( "reset_0", jm_reset_0 )
        , ( "setFrame_1", jm_setFrame_1 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "getAnimationSize_0", jm_getAnimationSize_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "previousFrame_0", jm_previousFrame_0 )
        , ( "isLastFrame_0", jm_isLastFrame_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "setState_1", jm_setState_1 )
        , ( "getWidth_0", jm_getWidth_0 )
        , ( "getHeight_0", jm_getHeight_0 ) ]
        Animation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IndexedAnimation"
        [ ( "jm_getAnimationBehavior_0", jm_getAnimationBehavior_0 ), ( "jm_reset_0", jm_reset_0 ), ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_getAnimationSize_0", jm_getAnimationSize_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_isLastFrame_0", jm_isLastFrame_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_setState_1", jm_setState_1 ), ( "jm_getWidth_0", jm_getWidth_0 ), ( "jm_getHeight_0", jm_getHeight_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Animation.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationBehaviorP" "" JR.this (JR.local "animationBehavior")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getAnimationBehavior_0 : JR.Method
jm_getAnimationBehavior_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "animationBehaviorP") ])
        (jregister jheap)
        jthis
        jargs


jm_reset_0 : JR.Method
jm_reset_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "reset_0" (JR.thisField "animationBehaviorP") []), 
                    JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getAnimationSize_0 : JR.Method
jm_getAnimationSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_previousFrame_0 : JR.Method
jm_previousFrame_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isLastFrame_0 : JR.Method
jm_isLastFrame_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "getFrame_0" JR.this []) (JR.map2 JR.sub (JR.invoke "getSize_0" JR.this []) (JR.int 1))) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setSequence_1 : JR.Method
jm_setSequence_1 jheap jthis jargs =
    JR.method [ ( "sequence", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getSequence_0 : JR.Method
jm_getSequence_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic PrimitiveIntUtil.jm_getArrayInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_setState_1 : JR.Method
jm_setState_1 jheap jthis jargs =
    JR.method [ ( "indexedAnimation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setFrame_1" JR.this [ (JR.invoke "getFrame_0" (JR.local "indexedAnimation") []) ]), 
                    JR.exec (JR.invoke "setDx_1" JR.this [ (JR.invoke "getDx_0" (JR.local "indexedAnimation") []) ]), 
                    JR.exec (JR.invoke "setDy_1" JR.this [ (JR.invoke "getDy_0" (JR.local "indexedAnimation") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getWidth_0 : JR.Method
jm_getWidth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 0) ])
        (jregister jheap)
        jthis
        jargs


jm_getHeight_0 : JR.Method
jm_getHeight_0 jheap jthis jargs =
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

