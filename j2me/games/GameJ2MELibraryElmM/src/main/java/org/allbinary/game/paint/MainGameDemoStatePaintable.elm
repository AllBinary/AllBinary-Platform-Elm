module Org.Allbinary.Game.Paint.MainGameDemoStatePaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.paint
-}

import JR
import Org.Allbinary.Graphics.Paint.Paintable as Paintable


jclass : String
jclass =
    "MainGameDemoStatePaintable"


jchain : List String
jchain =
    [ "MainGameDemoStatePaintable" ]
        ++ Paintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    Paintable.jfields ++ [ ( "ownershipPaintableInterface", JR.defaultOf "" ), ( "menuPaintableInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 )
        , ( "getOwnershipPaintableInterface_0", jm_getOwnershipPaintableInterface_0 )
        , ( "getMenuPaintableInterface_0", jm_getMenuPaintableInterface_0 ) ]
        Paintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MainGameDemoStatePaintable"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jm_getOwnershipPaintableInterface_0", jm_getOwnershipPaintableInterface_0 ), ( "jm_getMenuPaintableInterface_0", jm_getMenuPaintableInterface_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "ownershipPaintableInterface", "" ), ( "menuPaintableInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect Paintable.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "ownershipPaintableInterface" "" JR.this (JR.local "ownershipPaintableInterface")), 
                    JR.exec (JR.setField "menuPaintableInterface" "" JR.this (JR.local "menuPaintableInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "menuPaintableInterface") [ (JR.local "graphics") ]), 
                    JR.exec (JR.invoke "paint_1" (JR.thisField "ownershipPaintableInterface") [ (JR.local "graphics") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getOwnershipPaintableInterface_0 : JR.Method
jm_getOwnershipPaintableInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "ownershipPaintableInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_getMenuPaintableInterface_0 : JR.Method
jm_getMenuPaintableInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "menuPaintableInterface") ])
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

