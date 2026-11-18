module Org.Allbinary.Game.Score.HighScoresBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Score.HighScoresFactoryInterface as HighScoresFactoryInterface


jclass : String
jclass =
    "HighScoresBase"


jchain : List String
jchain =
    [ "HighScoresBase" ]
        ++ HighScoresFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "commonStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "fetchHighScores_2", jm_fetchHighScores_2 )
        , ( "fetchHighScoresPreload_3", jm_fetchHighScoresPreload_3 )
        , ( "createHighScoresHelper_0", jm_createHighScoresHelper_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoresBase"
        [ ( "jm_fetchHighScores_2", jm_fetchHighScores_2 ), ( "jm_fetchHighScoresPreload_3", jm_fetchHighScoresPreload_3 ), ( "jm_createHighScoresHelper_0", jm_createHighScoresHelper_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_fetchHighScores_2 : JR.Method
jm_fetchHighScores_2 jheap jthis jargs =
    JR.method [ ( "gameInfo", "" ), ( "highScoresResultsListener", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_fetchHighScoresPreload_3 : JR.Method
jm_fetchHighScoresPreload_3 jheap jthis jargs =
    JR.method [ ( "gameInfo", "" ), ( "highScoresResultsListener", "" ), ( "preload", "Z" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_createHighScoresHelper_0 : JR.Method
jm_createHighScoresHelper_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
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

