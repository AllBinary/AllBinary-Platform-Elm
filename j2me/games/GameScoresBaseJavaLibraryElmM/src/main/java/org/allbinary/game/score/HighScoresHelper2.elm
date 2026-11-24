module Org.Allbinary.Game.Score.HighScoresHelper2 exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Game.Score.HighScoresHelperBase as HighScoresHelperBase
import Org.Allbinary.Game.Score.NullHighScoresSingletonFactory as NullHighScoresSingletonFactory


jclass : String
jclass =
    "HighScoresHelper2"


jchain : List String
jchain =
    [ "HighScoresHelper2" ]
        ++ HighScoresHelperBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    HighScoresHelperBase.jfields ++ [ ( "circularIndexUtil", JR.defaultOf "" ), ( "selectedHighScores", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setSelectedHighScores_1", jm_setSelectedHighScores_1 )
        , ( "getSelectedHighScores_0", jm_getSelectedHighScores_0 )
        , ( "setHighScoresArray_1", jm_setHighScoresArray_1 )
        , ( "selectHighScores_0", jm_selectHighScores_0 ) ]
        HighScoresHelperBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoresHelper2"
        [ ( "jm_setSelectedHighScores_1", jm_setSelectedHighScores_1 ), ( "jm_getSelectedHighScores_0", jm_getSelectedHighScores_0 ), ( "jm_setHighScoresArray_1", jm_setHighScoresArray_1 ), ( "jm_selectHighScores_0", jm_selectHighScores_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect HighScoresHelperBase.jinit_0 JR.this []),
            JR.exec (JR.setField "circularIndexUtil" "" JR.this (JR.callStatic CircularIndexUtil.jm_createInstanceAt_2 [ (JR.int 0), (JR.int 0) ])),
                JR.exec (JR.setField "selectedHighScores" "" JR.this (JR.callStatic NullHighScoresSingletonFactory.jm_getInstance_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_setSelectedHighScores_1 : JR.Method
jm_setSelectedHighScores_1 jheap jthis jargs =
    JR.method [ ( "selectedHighScores", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "selectedHighScores" "" JR.this (JR.local "selectedHighScores")) ])
        (jregister jheap)
        jthis
        jargs


jm_getSelectedHighScores_0 : JR.Method
jm_getSelectedHighScores_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "selectedHighScores") ])
        (jregister jheap)
        jthis
        jargs


jm_setHighScoresArray_1 : JR.Method
jm_setHighScoresArray_1 jheap jthis jargs =
    JR.method [ ( "highScoresArrayP", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia HighScoresHelperBase.jvtable "setHighScoresArray_1" JR.this [ (JR.local "highScoresArrayP") ]), 
                    JR.exec (JR.invoke "setSize_1" (JR.thisField "circularIndexUtil") [ (JR.alength (JR.thisField "highScoresArrayP")) ]), 
                    JR.exec (JR.invoke "selectHighScores_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_selectHighScores_0 : JR.Method
jm_selectHighScores_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.alength (JR.thisField "highScoresArrayP")) (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setSelectedHighScores_1" JR.this [ (JR.callStatic NullHighScoresSingletonFactory.jm_getInstance_0 []) ]), 
                        JR.returnVoid ]) identity, 
                    JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []), 
                    JR.declare "highScores" "" (JR.aget (JR.thisField "highScoresArrayP") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.while (JR.and (JR.map2 JR.less (JR.invoke "getTotal_0" (JR.local "highScores") []) (JR.int 1)) (JR.map2 JR.less (JR.local "index") (JR.alength (JR.thisField "highScoresArrayP")))) (JR.run [ 
                        JR.exec (JR.setLocal "highScores" "" (JR.aget (JR.thisField "highScoresArrayP") (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []))), 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN66888 -> (JR.setLocal "index" "I" (JR.lit jwN66888))) JR.increment) ]), 
                    JR.exec (JR.invoke "setSelectedHighScores_1" JR.this [ (JR.local "highScores") ]) ])
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

