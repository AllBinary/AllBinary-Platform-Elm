module Org.Allbinary.Game.Paint.ColorFillBasePaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.ColorCompositeInterface as ColorCompositeInterface
import Org.Allbinary.Graphics.Paint.Paintable as Paintable


jclass : String
jclass =
    "ColorFillBasePaintable"


jchain : List String
jchain =
    [ "ColorFillBasePaintable" ]
        ++ Paintable.jchain
        ++ ColorCompositeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "basicColor", JR.defaultOf "" ), ( "colorP", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "setBasicColorP_1", jm_setBasicColorP_1 )
        , ( "getBasicColorP_0", jm_getBasicColorP_0 )
        , ( "getColor_0", jm_getColor_0 )
        , ( "setColor_1", jm_setColor_1 )
        , ( "paint_1", jm_paint_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ColorFillBasePaintable"
        [ ( "jm_setBasicColorP_1", jm_setBasicColorP_1 ), ( "jm_getBasicColorP_0", jm_getBasicColorP_0 ), ( "jm_getColor_0", jm_getColor_0 ), ( "jm_setColor_1", jm_setColor_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                JR.exec (JR.setField "basicColor" "" JR.this (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setBasicColorP_1" JR.this [ (JR.local "basicColor") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setBasicColorP_1 : JR.Method
jm_setBasicColorP_1 jheap jthis jargs =
    JR.method [ ( "basicColor", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicColor" "" JR.this (JR.local "basicColor")), 
                    JR.exec (JR.invoke "setColor_1" JR.this [ (JR.invoke "intValue_0" (JR.invoke "getBasicColorP_0" JR.this []) []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getBasicColorP_0 : JR.Method
jm_getBasicColorP_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "basicColor") ])
        (jregister jheap)
        jthis
        jargs


jm_getColor_0 : JR.Method
jm_getColor_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "colorP") ])
        (jregister jheap)
        jthis
        jargs


jm_setColor_1 : JR.Method
jm_setColor_1 jheap jthis jargs =
    JR.method [ ( "color", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "colorP" "I" JR.this (JR.local "color")) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
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

