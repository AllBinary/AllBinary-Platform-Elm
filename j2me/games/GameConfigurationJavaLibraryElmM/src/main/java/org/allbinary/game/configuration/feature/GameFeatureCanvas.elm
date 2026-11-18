module Org.Allbinary.Game.Configuration.Feature.GameFeatureCanvas exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.feature
-}

import JR
import Javax.Microedition.Lcdui.Canvas as Canvas


jclass : String
jclass =
    "GameFeatureCanvas"


jchain : List String
jchain =
    [ "GameFeatureCanvas" ]
        ++ Canvas.jchain


jfields : List ( String, JR.JValue )
jfields =
    Canvas.jfields ++ []


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 ) ]
        Canvas.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameFeatureCanvas"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect Canvas.jinit_0 JR.this []),
                identity,
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

