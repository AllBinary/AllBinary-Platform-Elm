module Org.Allbinary.Graphics.Paint.AnimationCompositePaintable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.paint
-}

import JR
import Org.Allbinary.Graphics.Paint.InitUpdatePaintable as InitUpdatePaintable


jclass : String
jclass =
    "AnimationCompositePaintable"


jchain : List String
jchain =
    [ "AnimationCompositePaintable" ]
        ++ InitUpdatePaintable.jchain


jfields : List ( String, JR.JValue )
jfields =
    InitUpdatePaintable.jfields ++ [ ( "animationInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 )
        , ( "paintThreed_1", jm_paintThreed_1 ) ]
        InitUpdatePaintable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AnimationCompositePaintable"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jm_paintThreed_1", jm_paintThreed_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect InitUpdatePaintable.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "animationInterface" "" JR.this (JR.local "animationInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintXY_3" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.int 0), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paintThreed_1 : JR.Method
jm_paintThreed_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "paintThreedXYZ_4" (JR.thisField "animationInterface") [ (JR.local "graphics"), (JR.int 0), (JR.int 0), (JR.int 0) ]) ])
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

