module Org.Allbinary.Game.Score.NoHighScoresFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Game.Score.HighScoresBase as HighScoresBase
import Org.Allbinary.Game.Score.HighScoresHelperBase as HighScoresHelperBase
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "NoHighScoresFactory"


jchain : List String
jchain =
    [ "NoHighScoresFactory" ]
        ++ HighScoresBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    HighScoresBase.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "NO_HIGH_SCORES", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "fetchHighScores_2", jm_fetchHighScores_2 )
        , ( "createHighScoresHelper_0", jm_createHighScoresHelper_0 ) ]
        HighScoresBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "NoHighScoresFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_fetchHighScores_2", jm_fetchHighScores_2 ), ( "jm_createHighScoresHelper_0", jm_createHighScoresHelper_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "NoHighScoresFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect HighScoresBase.jinit_0 JR.this []),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "NO_HIGH_SCORES" "" JR.this (JR.newArray "" [ (JR.int 0) ])),
                identity,
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


jm_fetchHighScores_2 : JR.Method
jm_fetchHighScores_2 jheap jthis jargs =
    JR.method [ ( "gameInfo", "" ), ( "highScoresResultsListener", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Getting No HighScores"), JR.this, (JR.str "fetchHighScores") ]), 
                    JR.exec (JR.invoke "setHighScoresArray_1" (JR.local "highScoresResultsListener") [ (JR.thisField "NO_HIGH_SCORES") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createHighScoresHelper_0 : JR.Method
jm_createHighScoresHelper_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new HighScoresHelperBase.jnew_0 []) ])
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

