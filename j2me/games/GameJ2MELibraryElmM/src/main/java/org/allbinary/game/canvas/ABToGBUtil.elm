module Org.Allbinary.Game.Canvas.ABToGBUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.canvas
-}

import JR
import Org.Allbinary.Game.Layer.AllBinaryGameLayerManager as AllBinaryGameLayerManager
import Javax.Microedition.Lcdui.NullCanvas as NullCanvas


jclass : String
jclass =
    "ABToGBUtil"


jchain : List String
jchain =
    [ "ABToGBUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "abCanvas", JR.defaultOf "" ), ( "allBinaryGameLayerManager", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ABToGBUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ABToGBUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "abCanvas" "" JR.this NullCanvas.jstatic_NULL_CANVAS),
                JR.exec (JR.setField "allBinaryGameLayerManager" "" JR.this (JR.callStatic AllBinaryGameLayerManager.jm_getNullInstance_0 [])),
                identity ])
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
                    JR.return jstatic_instance ])
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

