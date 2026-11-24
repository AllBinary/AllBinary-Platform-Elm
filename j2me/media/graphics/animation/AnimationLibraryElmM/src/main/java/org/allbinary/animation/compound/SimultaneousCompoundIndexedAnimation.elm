module Org.Allbinary.Animation.Compound.SimultaneousCompoundIndexedAnimation exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.compound
-}

import JR
import Org.Allbinary.Animation.IndexedAnimation as IndexedAnimation
import Org.Allbinary.Logic.Math.PrimitiveIntUtil as PrimitiveIntUtil


jclass : String
jclass =
    "SimultaneousCompoundIndexedAnimation"


jchain : List String
jchain =
    [ "SimultaneousCompoundIndexedAnimation" ]
        ++ IndexedAnimation.jchain


jfields : List ( String, JR.JValue )
jfields =
    IndexedAnimation.jfields ++ [ ( "animationInterfaceArray", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setFrame_1", jm_setFrame_1 )
        , ( "getFrame_0", jm_getFrame_0 )
        , ( "getSize_0", jm_getSize_0 )
        , ( "previousFrame_0", jm_previousFrame_0 )
        , ( "setSequence_1", jm_setSequence_1 )
        , ( "getSequence_0", jm_getSequence_0 )
        , ( "nextFrame_0", jm_nextFrame_0 )
        , ( "paintXY_3", jm_paintXY_3 )
        , ( "paintThreedXYZ_4", jm_paintThreedXYZ_4 )
        , ( "getAnimationInterfaceArray_0", jm_getAnimationInterfaceArray_0 )
        , ( "setAnimationInterfaceArray_1", jm_setAnimationInterfaceArray_1 ) ]
        IndexedAnimation.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SimultaneousCompoundIndexedAnimation"
        [ ( "jm_setFrame_1", jm_setFrame_1 ), ( "jm_getFrame_0", jm_getFrame_0 ), ( "jm_getSize_0", jm_getSize_0 ), ( "jm_previousFrame_0", jm_previousFrame_0 ), ( "jm_setSequence_1", jm_setSequence_1 ), ( "jm_getSequence_0", jm_getSequence_0 ), ( "jm_nextFrame_0", jm_nextFrame_0 ), ( "jm_paintXY_3", jm_paintXY_3 ), ( "jm_paintThreedXYZ_4", jm_paintThreedXYZ_4 ), ( "jm_getAnimationInterfaceArray_0", jm_getAnimationInterfaceArray_0 ), ( "jm_setAnimationInterfaceArray_1", jm_setAnimationInterfaceArray_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "animationInterfaceArray", "" ), ( "animationBehavior", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IndexedAnimation.jinit_1 JR.this [ (JR.local "animationBehavior") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationInterfaceArray" "" JR.this (JR.local "animationInterfaceArray")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_setFrame_1 : JR.Method
jm_setFrame_1 jheap jthis jargs =
    JR.method [ ( "frameIndex", "I" ) ] ""
        (JR.run [ 
                    JR.declare "indexedAnimation" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.thisField "animationInterfaceArray")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67013 -> (JR.setLocal "index" "I" (JR.lit jwN67013))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "indexedAnimation" "" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index"))), 
                        JR.exec (JR.invoke "setFrame_1" (JR.local "indexedAnimation") [ (JR.local "frameIndex") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getFrame_0 : JR.Method
jm_getFrame_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "indexedAnimation" "" (JR.aget (JR.thisField "animationInterfaceArray") (JR.int 0)), 
                    JR.return (JR.invoke "getFrame_0" (JR.local "indexedAnimation") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSize_0 : JR.Method
jm_getSize_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.declare "indexedAnimation" "" (JR.aget (JR.thisField "animationInterfaceArray") (JR.int 0)), 
                    JR.return (JR.invoke "getSize_0" (JR.local "indexedAnimation") []) ])
        (jregister jheap)
        jthis
        jargs


jm_previousFrame_0 : JR.Method
jm_previousFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "indexedAnimation" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.thisField "animationInterfaceArray")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67489 -> (JR.setLocal "index" "I" (JR.lit jwN67489))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.setLocal "indexedAnimation" "" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index"))), 
                        JR.exec (JR.invoke "previousFrame_0" (JR.local "indexedAnimation") []) ]) ] ])
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


jm_nextFrame_0 : JR.Method
jm_nextFrame_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.alength (JR.thisField "animationInterfaceArray")), JR.for (JR.map2 JR.greaterEquals (JR.update1 (JR.local "index") (\jwN67756 -> (JR.setLocal "index" "I" (JR.lit jwN67756))) JR.decrement) (JR.int 0)) (JR.run [  ]) (JR.run [ 
                        JR.exec (JR.invoke "nextFrame_0" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index")) []) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_paintXY_3 : JR.Method
jm_paintXY_3 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.thisField "animationInterfaceArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68026 -> (JR.setLocal "index" "I" (JR.lit jwN68026))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "paintXY_3" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index")) [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreedXYZ_4 : JR.Method
jm_paintThreedXYZ_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.thisField "animationInterfaceArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68315 -> (JR.setLocal "index" "I" (JR.lit jwN68315))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.invoke "paintThreedXYZ_4" (JR.aget (JR.thisField "animationInterfaceArray") (JR.local "index")) [ (JR.local "graphics"), (JR.local "x"), (JR.local "y"), (JR.local "z") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_getAnimationInterfaceArray_0 : JR.Method
jm_getAnimationInterfaceArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "animationInterfaceArray") ])
        (jregister jheap)
        jthis
        jargs


jm_setAnimationInterfaceArray_1 : JR.Method
jm_setAnimationInterfaceArray_1 jheap jthis jargs =
    JR.method [ ( "animationInterfaceArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "animationInterfaceArray" "" JR.this (JR.local "animationInterfaceArray")) ])
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

