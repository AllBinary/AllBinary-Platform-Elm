module Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.graphics.canvas.transition.progress
-}

import JR
import Org.Allbinary.Graphics.Color.BasicColorFactory as BasicColorFactory
import Org.Allbinary.Graphics.Paint.NullPaintable as NullPaintable
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvas as ProgressCanvas
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "ProgressCanvasFactory"


jchain : List String
jchain =
    [ "ProgressCanvasFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getLazyInstance_0", jm_getLazyInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ProgressCanvasFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getLazyInstance_0", jm_getLazyInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_PROGRESS_FORM_SCREEN", jstatic_PROGRESS_FORM_SCREEN ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_PROGRESS_FORM_SCREEN : JR.M
jstatic_PROGRESS_FORM_SCREEN s =
    JR.static "ProgressCanvasFactory" jclinit "PROGRESS_FORM_SCREEN"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_PROGRESS_FORM_SCREEN (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "ProgressCanvasFactory.PROGRESS_FORM_SCREEN" "" (JR.new ProgressCanvas.jnew_3 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.field "BLACK" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])), (JR.field "WHITE" (JR.callStatic BasicColorFactory.jm_getInstance_0 [])) ])) ]) identity, 
                    JR.return jstatic_PROGRESS_FORM_SCREEN ])
        (jregister jheap)
        jthis
        jargs


jm_getLazyInstance_0 : JR.Method
jm_getLazyInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic NullPaintable.jm_getInstance_0 []) ])
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

