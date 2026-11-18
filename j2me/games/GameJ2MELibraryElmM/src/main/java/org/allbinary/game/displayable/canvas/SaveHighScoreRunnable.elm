module Org.Allbinary.Game.Displayable.Canvas.SaveHighScoreRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.displayable.canvas
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import JRunnable
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Graphics.Canvas.Transition.Progress.ProgressCanvasFactory as ProgressCanvasFactory


jclass : String
jclass =
    "SaveHighScoreRunnable"


jchain : List String
jchain =
    [ "SaveHighScoreRunnable" ]
        ++ JRunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "progressCanvas", JR.defaultOf "" ), ( "isLast", JR.defaultOf "Z" ), ( "textBox", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SaveHighScoreRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "isLast", "Z" ), ( "textBox", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "progressCanvas" "" JR.this (JR.callStatic ProgressCanvasFactory.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "isLast" "Z" JR.this (JR.local "isLast")), 
                    JR.exec (JR.setField "textBox" "" JR.this (JR.local "textBox")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.thisField "isLast") (JR.run [ 
                            JR.exec (JR.invoke "submit_0" (JR.thisField "textBox") []) ]) (JR.run [ 
                            JR.exec (JR.invoke "saveHighScore_0" (JR.thisField "textBox") []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.str "run"), (JR.local "e") ]), 
                        JR.exec (JR.invoke "end_0" (JR.thisField "progressCanvas") []) ]) ) ] identity ])
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

