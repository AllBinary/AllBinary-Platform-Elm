module Org.Allbinary.Game.Score.Displayable.HighScoreRunnable exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score.displayable
-}

import JR
import Org.Allbinary.Logic.ABSystemWrapper as ABSystemWrapper
import Org.Allbinary.Thread.ARunnable as ARunnable
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.J2MEUtil as J2MEUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "HighScoreRunnable"


jchain : List String
jchain =
    [ "HighScoreRunnable" ]
        ++ ARunnable.jchain


jfields : List ( String, JR.JValue )
jfields =
    ARunnable.jfields ++ [ ( "highScoresCanvas", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "run_0", jm_run_0 ) ]
        ARunnable.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoreRunnable"
        [ ( "jm_run_0", jm_run_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "highScoresCanvas", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect ARunnable.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "highScoresCanvas" "" JR.this (JR.local "highScoresCanvas")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_run_0 : JR.Method
jm_run_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                    JR.declare "highScoresCanvas" "" (JR.thisField "highScoresCanvas"), 
                    JR.try (JR.run [ 
                        JR.declare "isHTML" "Z" (JR.callStatic J2MEUtil.jm_isHTML_0 []), 
                        JR.ifElse (JR.map JR.not_ (JR.local "isHTML")) (JR.run [ 
                            JR.while (JR.map JR.not_ (JR.field "hasPainted" (JR.local "highScoresCanvas"))) identity, 
                            JR.exec (JR.andThen (JR.local "highScoresCanvas") (\jtN70894 -> (JR.setField "hasPainted" "Z" (JR.lit jtN70894) (JR.bool False)))) ]) identity, 
                        JR.declare "stringMaker" "" (JR.new StringMaker.jnew_0 []), 
                        JR.declare "systemWrapper" "" (JR.callStatic ABSystemWrapper.jm_getInstance_0 []), 
                        JR.declare "currentTimeMillis" "J" (JR.invoke "currentTimeMillis_0" (JR.local "systemWrapper") []), 
                        JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.str "HighScoresCanvas - Request repaint to be sure: ") ]) [ (JR.local "currentTimeMillis") ]) []), JR.this, (JR.field "RUN" (JR.local "commonStrings")) ]), 
                        JR.exec (JR.invoke "onChangeRepaint_1" (JR.field "repaintBehavior" (JR.local "highScoresCanvas")) [ (JR.local "highScoresCanvas") ]), 
                        JR.ifElse (JR.map JR.not_ (JR.local "isHTML")) (JR.run [ 
                            JR.while (JR.map JR.not_ (JR.field "hasPainted" (JR.local "highScoresCanvas"))) identity ]) identity, 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringMaker") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringMaker") []) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.local "stringMaker") [ (JR.str "HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ") ]) [ (JR.local "currentTimeMillis") ]) []), JR.this, (JR.field "RUN" (JR.local "commonStrings")) ]), 
                        JR.exec (JR.invoke "executeUpdate_0" (JR.local "highScoresCanvas") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "RUN" (JR.local "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

