module Org.Allbinary.Game.Score.HighScoresCanvasNoInputProcessorFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Game.Score.HighScoresCanvasInputProcessor as HighScoresCanvasInputProcessor
import Org.Allbinary.Game.Score.HighScoresCanvasInputProcessorFactoryInterface as HighScoresCanvasInputProcessorFactoryInterface


jclass : String
jclass =
    "HighScoresCanvasNoInputProcessorFactory"


jchain : List String
jchain =
    [ "HighScoresCanvasNoInputProcessorFactory" ]
        ++ HighScoresCanvasInputProcessorFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoresCanvasNoInputProcessorFactory"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "highScoresCanvas", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new HighScoresCanvasInputProcessor.jnew_1 [ (JR.local "highScoresCanvas") ]) ])
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

