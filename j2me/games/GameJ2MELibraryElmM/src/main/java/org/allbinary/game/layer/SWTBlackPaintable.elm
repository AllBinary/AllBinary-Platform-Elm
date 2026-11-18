module Org.Allbinary.Game.Layer.SWTBlackPaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Color.BasicColorSetUtil as BasicColorSetUtil
import Org.Allbinary.Graphics.Paint.Paintable as Paintable


jclass : String
jclass =
    "SWTBlackPaintable"


jchain : List String
jchain =
    [ "SWTBlackPaintable" ]
        ++ Paintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "basicSetColorUtil", JR.defaultOf "" ), ( "BLACK", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SWTBlackPaintable"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
            JR.exec (JR.setField "basicSetColorUtil" "" JR.this (JR.callStatic BasicColorSetUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "BLACK" "" JR.this (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 []))),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setBasicColorP_2" (JR.thisField "basicSetColorUtil") [ (JR.local "graphics"), (JR.thisField "BLACK") ]) ])
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

