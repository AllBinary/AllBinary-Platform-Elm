module Org.Allbinary.Graphics.Form.LockablePaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.form
-}

import JR
import Org.Allbinary.Animation.FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactory
import Org.Allbinary.Graphics.Form.ItemPaintable as ItemPaintable
import Org.Allbinary.Logic.System.Security.Licensing.LockedResources as LockedResources
import Org.Allbinary.Logic.System.Security.Licensing.LockedUtil as LockedUtil


jclass : String
jclass =
    "LockablePaintable"


jchain : List String
jchain =
    [ "LockablePaintable" ]
        ++ ItemPaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    ItemPaintable.jfields ++ [ ( "animation", JR.defaultOf "" ), ( "lockedIndex", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "paint_4", jm_paint_4 )
        , ( "getLockedIndex_0", jm_getLockedIndex_0 )
        , ( "getAnimation_0", jm_getAnimation_0 ) ]
        ItemPaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LockablePaintable"
        [ ( "jm_paint_4", jm_paint_4 ), ( "jm_getLockedIndex_0", jm_getLockedIndex_0 ), ( "jm_getAnimation_0", jm_getAnimation_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "lockedIndex", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ItemPaintable.jinit_0 JR.this []),
                JR.exec (JR.setField "animation" "" JR.this (JR.invoke "getInstance_1" (JR.invoke "get_1" (JR.callStatic FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0 []) [ (JR.field "LOCKED_DEMO_GAME_FEATURE_RESOURCE" (JR.callStatic LockedResources.jm_getInstance_0 [])) ]) [ (JR.int 0) ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "lockedIndex" "I" JR.this (JR.local "lockedIndex")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_paint_4 : JR.Method
jm_paint_4 jheap jthis jargs =
    JR.method [ ( "graphics", "" ), ( "currentIndex", "I" ), ( "x", "I" ), ( "y", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.and (JR.invoke "isLocked_0" (JR.callStatic LockedUtil.jm_getInstance_0 []) []) (JR.map2 JR.greaterEquals (JR.local "currentIndex") (JR.invoke "getLockedIndex_0" JR.this []))) (JR.run [ 
                        JR.exec (JR.invoke "paintXY_3" (JR.invoke "getAnimation_0" JR.this []) [ (JR.local "graphics"), (JR.local "x"), (JR.local "y") ]) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getLockedIndex_0 : JR.Method
jm_getLockedIndex_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "lockedIndex") ])
        (jregister jheap)
        jthis
        jargs


jm_getAnimation_0 : JR.Method
jm_getAnimation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "animation") ])
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

