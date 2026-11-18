module Org.Allbinary.Game.Paint.BasicGameDemoPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint
-}

import JR
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Graphics.Paint.StatePaintable as StatePaintable


jclass : String
jclass =
    "BasicGameDemoPaintable"


jchain : List String
jchain =
    [ "BasicGameDemoPaintable" ]
        ++ StatePaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    StatePaintable.jfields ++ [ ( "mainDemoStatePaintable", JR.defaultOf "" ), ( "ownershipPaintable", JR.defaultOf "" ), ( "helpPaintableInterface", JR.defaultOf "" ), ( "currentStatePaintable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setState_1", jm_setState_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "getHelpPaintableInterface_0", jm_getHelpPaintableInterface_0 )
        , ( "setCurrentStatePaintable_1", jm_setCurrentStatePaintable_1 )
        , ( "getCurrentStatePaintable_0", jm_getCurrentStatePaintable_0 )
        , ( "getMainDemoStatePaintable_0", jm_getMainDemoStatePaintable_0 ) ]
        StatePaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicGameDemoPaintable"
        [ ( "jm_setState_1", jm_setState_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_getHelpPaintableInterface_0", jm_getHelpPaintableInterface_0 ), ( "jm_setCurrentStatePaintable_1", jm_setCurrentStatePaintable_1 ), ( "jm_getCurrentStatePaintable_0", jm_getCurrentStatePaintable_0 ), ( "jm_getMainDemoStatePaintable_0", jm_getMainDemoStatePaintable_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "mainDemoStatePaintable", "" ), ( "ownershipPaintable", "" ), ( "helpPaintableInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect StatePaintable.jinit_0 JR.this []),
                JR.exec (JR.setField "currentStatePaintable" "" JR.this (JR.callStatic NullPaintable.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "mainDemoStatePaintable" "" JR.this (JR.local "mainDemoStatePaintable")), 
                    JR.exec (JR.invoke "setCurrentStatePaintable_1" JR.this [ (JR.callStatic NullPaintable.jm_getInstance_0 []) ]), 
                    JR.exec (JR.setField "ownershipPaintable" "" JR.this (JR.local "ownershipPaintable")), 
                    JR.exec (JR.setField "helpPaintableInterface" "" JR.this (JR.local "helpPaintableInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_setState_1 : JR.Method
jm_setState_1 jheap jthis jargs =
    JR.method [ ( "state", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "state") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setCurrentStatePaintable_1" JR.this [ (JR.invoke "getMainDemoStatePaintable_0" JR.this []) ]) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.local "state") (JR.int 1)) (JR.run [ 
                        JR.exec (JR.invoke "setCurrentStatePaintable_1" JR.this [ (JR.thisField "helpPaintableInterface") ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setCurrentStatePaintable_1" JR.this [ (JR.thisField "ownershipPaintable") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.invoke "getCurrentStatePaintable_0" JR.this []) [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getHelpPaintableInterface_0 : JR.Method
jm_getHelpPaintableInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "helpPaintableInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setCurrentStatePaintable_1 : JR.Method
jm_setCurrentStatePaintable_1 jheap jthis jargs =
    JR.method [ ( "currentStatePaintable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "currentStatePaintable" "" JR.this (JR.local "currentStatePaintable")) ])
        (jregister jheap)
        jthis
        jargs


jm_getCurrentStatePaintable_0 : JR.Method
jm_getCurrentStatePaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "currentStatePaintable") ])
        (jregister jheap)
        jthis
        jargs


jm_getMainDemoStatePaintable_0 : JR.Method
jm_getMainDemoStatePaintable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "mainDemoStatePaintable") ])
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

