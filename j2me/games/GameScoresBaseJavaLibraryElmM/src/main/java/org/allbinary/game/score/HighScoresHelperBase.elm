module Org.Allbinary.Game.Score.HighScoresHelperBase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Score.HighScoresHelperBaseInterface as HighScoresHelperBaseInterface
import Org.Allbinary.Game.Score.LastFetchHighScoresFactory as LastFetchHighScoresFactory
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Score.NullHighScoresSingletonFactory as NullHighScoresSingletonFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "HighScoresHelperBase"


jchain : List String
jchain =
    [ "HighScoresHelperBase" ]
        ++ HighScoresHelperBaseInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "highScoresArrayP", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setHighScoresArray_1", jm_setHighScoresArray_1 )
        , ( "getNextHighScores_0", jm_getNextHighScores_0 )
        , ( "isAnyHighScores_0", jm_isAnyHighScores_0 )
        , ( "setSelectedHighScores_1", jm_setSelectedHighScores_1 )
        , ( "getSelectedHighScores_0", jm_getSelectedHighScores_0 )
        , ( "getHighScoresArray_0", jm_getHighScoresArray_0 )
        , ( "selectHighScores_0", jm_selectHighScores_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoresHelperBase"
        [ ( "jm_setHighScoresArray_1", jm_setHighScoresArray_1 ), ( "jm_getNextHighScores_0", jm_getNextHighScores_0 ), ( "jm_isAnyHighScores_0", jm_isAnyHighScores_0 ), ( "jm_setSelectedHighScores_1", jm_setSelectedHighScores_1 ), ( "jm_getSelectedHighScores_0", jm_getSelectedHighScores_0 ), ( "jm_getHighScoresArray_0", jm_getHighScoresArray_0 ), ( "jm_selectHighScores_0", jm_selectHighScores_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "highScoresArrayP" "" JR.this (JR.field "highScoresArray" (JR.callStatic LastFetchHighScoresFactory.jm_getInstance_0 []))),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setHighScoresArray_1 : JR.Method
jm_setHighScoresArray_1 jheap jthis jargs =
    JR.method [ ( "highScoresArrayP", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "highScoresArrayP") JR.null) (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.local "commonStrings")) ]) [ (JR.alength (JR.local "highScoresArrayP")) ]) []), JR.this, (JR.str "setHighScoresArray") ]) ]) (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.field "START" (JR.local "commonStrings")), JR.this, (JR.str "setHighScoresArray") ]) ]), 
                    JR.exec (JR.setField "highScoresArrayP" "" JR.this (JR.local "highScoresArrayP")) ])
        (jregister jheap)
        jthis
        jargs


jm_getNextHighScores_0 : JR.Method
jm_getNextHighScores_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic NullHighScoresSingletonFactory.jm_getInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_isAnyHighScores_0 : JR.Method
jm_isAnyHighScores_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "RuntimeException" [ "RuntimeException", "Exception" ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_setSelectedHighScores_1 : JR.Method
jm_setSelectedHighScores_1 jheap jthis jargs =
    JR.method [ ( "selectedHighScores", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getSelectedHighScores_0 : JR.Method
jm_getSelectedHighScores_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.callStatic NullHighScoresSingletonFactory.jm_getInstance_0 []) ])
        (jregister jheap)
        jthis
        jargs


jm_getHighScoresArray_0 : JR.Method
jm_getHighScoresArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "highScoresArrayP") ])
        (jregister jheap)
        jthis
        jargs


jm_selectHighScores_0 : JR.Method
jm_selectHighScores_0 jheap jthis jargs =
    JR.method [] ""
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

