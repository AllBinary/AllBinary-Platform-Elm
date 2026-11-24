module Org.Allbinary.Game.Displayable.Canvas.DemoCanvasProgressUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.Graphics.Paint.PaintableComposite as PaintableComposite
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory


jclass : String
jclass =
    "DemoCanvasProgressUtil"


jchain : List String
jchain =
    [ "DemoCanvasProgressUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "showProgress_1", jm_showProgress_1 )
        , ( "showProgressOptionallyInTheBackground_2", jm_showProgressOptionallyInTheBackground_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DemoCanvasProgressUtil"
        [ ( "jm_showProgress_1", jm_showProgress_1 ), ( "jm_showProgressOptionallyInTheBackground_2", jm_showProgressOptionallyInTheBackground_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_showProgress_1 : JR.Method
jm_showProgress_1 jheap jthis jargs =
    JR.method [ ( "demoCanvas", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic jm_showProgressOptionallyInTheBackground_2 [ (JR.local "demoCanvas"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_showProgressOptionallyInTheBackground_2 : JR.Method
jm_showProgressOptionallyInTheBackground_2 jheap jthis jargs =
    JR.method [ ( "demoCanvas", "" ), ( "background", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "progressCanvas" "" (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 []), 
                    JR.exec (JR.invoke "startBackground_1" (JR.local "progressCanvas") [ (JR.local "background") ]), 
                    JR.declare "paintableArray" "" (JR.newArray "" [ (JR.int 2) ]), 
                    JR.exec (JR.andThen (JR.local "paintableArray") (\jaN74483 -> JR.andThen (JR.int 0) (\jiN74483 -> (JR.aset (JR.lit jaN74483) (JR.lit jiN74483) (JR.local "progressCanvas"))))), 
                    JR.exec (JR.andThen (JR.local "paintableArray") (\jaN74516 -> JR.andThen (JR.int 1) (\jiN74516 -> (JR.aset (JR.lit jaN74516) (JR.lit jiN74516) (JR.invoke "getDefaultPaintableInterface_0" (JR.local "demoCanvas") []))))), 
                    JR.exec (JR.invoke "setDefaultPaintableInterface_1" (JR.local "demoCanvas") [ (JR.new PaintableComposite.jnew_1 [ (JR.local "paintableArray") ]) ]), 
                    JR.exec (JR.invoke "setPaintableInterface_1" (JR.local "demoCanvas") [ (JR.invoke "getDefaultPaintableInterface_0" (JR.local "demoCanvas") []) ]) ])
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

