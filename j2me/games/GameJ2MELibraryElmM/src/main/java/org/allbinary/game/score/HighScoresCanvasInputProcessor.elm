module Org.Allbinary.Game.Score.HighScoresCanvasInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Game.Input.PlayerGameInput as PlayerGameInput


jclass : String
jclass =
    "HighScoresCanvasInputProcessor"


jchain : List String
jchain =
    [ "HighScoresCanvasInputProcessor" ]
        ++ PlayerGameInput.jchain


jfields : List ( String, JR.JValue )
jfields =
    PlayerGameInput.jfields ++ [ ( "highScoresCanvas", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "open_0", jm_open_0 )
        , ( "close_0", jm_close_0 )
        , ( "onPressGameKeyEvent_1", jm_onPressGameKeyEvent_1 )
        , ( "onDownGameKeyEvent_1", jm_onDownGameKeyEvent_1 )
        , ( "onUpGameKeyEvent_1", jm_onUpGameKeyEvent_1 )
        , ( "paint_1", jm_paint_1 )
        , ( "getHighScoresCanvas_0", jm_getHighScoresCanvas_0 ) ]
        PlayerGameInput.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoresCanvasInputProcessor"
        [ ( "jm_open_0", jm_open_0 ), ( "jm_close_0", jm_close_0 ), ( "jm_onPressGameKeyEvent_1", jm_onPressGameKeyEvent_1 ), ( "jm_onDownGameKeyEvent_1", jm_onDownGameKeyEvent_1 ), ( "jm_onUpGameKeyEvent_1", jm_onUpGameKeyEvent_1 ), ( "jm_paint_1", jm_paint_1 ), ( "jm_getHighScoresCanvas_0", jm_getHighScoresCanvas_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "highScoresCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect PlayerGameInput.jinit_3 JR.this [ (JR.new BasicArrayListD.jnew_0 []), (JR.new BasicArrayListD.jnew_0 []), (JR.map JR.neg (JR.int 1)) ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "highScoresCanvas" "" JR.this (JR.local "highScoresCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_open_0 : JR.Method
jm_open_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_close_0 : JR.Method
jm_close_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_onPressGameKeyEvent_1 : JR.Method
jm_onPressGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia PlayerGameInput.jvtable "onPressGameKeyEvent_1" JR.this [ (JR.local "gameKeyEvent") ]), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_onDownGameKeyEvent_1 : JR.Method
jm_onDownGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia PlayerGameInput.jvtable "onDownGameKeyEvent_1" JR.this [ (JR.local "gameKeyEvent") ]), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_onUpGameKeyEvent_1 : JR.Method
jm_onUpGameKeyEvent_1 jheap jthis jargs =
    JR.method [ ( "gameKeyEvent", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia PlayerGameInput.jvtable "onUpGameKeyEvent_1" JR.this [ (JR.local "gameKeyEvent") ]), 
                    JR.exec (JR.invoke "update_0" JR.this []) ])
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


jm_getHighScoresCanvas_0 : JR.Method
jm_getHighScoresCanvas_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "highScoresCanvas") ])
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

