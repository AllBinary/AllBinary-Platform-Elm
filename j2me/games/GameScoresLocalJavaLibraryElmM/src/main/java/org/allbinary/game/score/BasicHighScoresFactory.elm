module Org.Allbinary.Game.Score.BasicHighScoresFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Game.Score.HighScoresBase as HighScoresBase
import Org.Allbinary.Game.Score.HighScoresHelper2 as HighScoresHelper2
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Score.RecordStoreHighScores as RecordStoreHighScores
import Org.Allbinary.Game.Score.ScoreComparator as ScoreComparator


jclass : String
jclass =
    "BasicHighScoresFactory"


jchain : List String
jchain =
    [ "BasicHighScoresFactory" ]
        ++ HighScoresBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    HighScoresBase.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "abeClientInformation", JR.defaultOf "" ), ( "highScoresArray", JR.defaultOf "" ), ( "TOP", JR.defaultOf "" ), ( "SCORES", JR.defaultOf "" ), ( "PERSONAL_HIGH_SCORES", JR.defaultOf "" ), ( "FETCH", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "fetchHighScores_2", jm_fetchHighScores_2 )
        , ( "fetchHighScoresPreload_3", jm_fetchHighScoresPreload_3 )
        , ( "createHighScoresHelper_0", jm_createHighScoresHelper_0 )
        , ( "loaded_1", jm_loaded_1 ) ]
        HighScoresBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicHighScoresFactory"
        [ ( "jm_fetchHighScores_2", jm_fetchHighScores_2 ), ( "jm_fetchHighScoresPreload_3", jm_fetchHighScoresPreload_3 ), ( "jm_createHighScoresHelper_0", jm_createHighScoresHelper_0 ), ( "jm_loaded_1", jm_loaded_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "softwareInformation", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect HighScoresBase.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "highScoresArray" "" JR.this (JR.newArray "" [ (JR.int 1) ])),
                JR.exec (JR.setField "TOP" "" JR.this (JR.str "Top")),
                JR.exec (JR.setField "SCORES" "" JR.this (JR.str "Scores")),
                JR.exec (JR.setField "PERSONAL_HIGH_SCORES" "" JR.this (JR.str "Personal Top Scores")),
                JR.exec (JR.setField "FETCH" "" JR.this (JR.str "fetchHighScores")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "abeClientInformation" "" JR.this (JR.local "abeClientInformation")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_fetchHighScores_2 : JR.Method
jm_fetchHighScores_2 jheap jthis jargs =
    JR.method [ ( "gameInfo", "" ), ( "highScoresResultsListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Getting Local HighScores"), JR.this, (JR.thisField "FETCH") ]), 
                    JR.exec (JR.invoke "fetchHighScoresPreload_3" JR.this [ (JR.local "gameInfo"), (JR.local "highScoresResultsListener"), (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_fetchHighScoresPreload_3 : JR.Method
jm_fetchHighScoresPreload_3 jheap jthis jargs =
    JR.method [ ( "gameInfo", "" ), ( "highScoresResultsListener", "" ), ( "preload", "Z" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.andThen (JR.thisField "highScoresArray") (\jaN68346 -> JR.andThen (JR.int 0) (\jiN68346 -> (JR.aset (JR.lit jaN68346) (JR.lit jiN68346) (JR.callStatic RecordStoreHighScores.jm_getInstance_6 [ (JR.thisField "abeClientInformation"), (JR.local "gameInfo"), (JR.thisField "TOP"), (JR.thisField "PERSONAL_HIGH_SCORES"), (JR.thisField "SCORES"), (JR.new ScoreComparator.jnew_1 [ (JR.bool True) ]) ]))))), 
                        JR.exec (JR.invoke "setHighScoresArray_1" (JR.local "highScoresResultsListener") [ (JR.thisField "highScoresArray") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.thisField "FETCH"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_createHighScoresHelper_0 : JR.Method
jm_createHighScoresHelper_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new HighScoresHelper2.jnew_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_loaded_1 : JR.Method
jm_loaded_1 jheap jthis jargs =
    JR.method [ ( "index2", "I" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "index2") (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
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

