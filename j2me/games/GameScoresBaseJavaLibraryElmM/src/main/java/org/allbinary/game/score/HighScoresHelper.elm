module Org.Allbinary.Game.Score.HighScoresHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Util.CircularIndexUtil as CircularIndexUtil
import Org.Allbinary.Game.Score.HighScoresHelperBase as HighScoresHelperBase


jclass : String
jclass =
    "HighScoresHelper"


jchain : List String
jchain =
    [ "HighScoresHelper" ]
        ++ HighScoresHelperBase.jchain


jfields : List ( String, JR.JValue )
jfields =
    HighScoresHelperBase.jfields ++ [ ( "circularIndexUtil", JR.defaultOf "" ), ( "lastIndex", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "setHighScoresArray_1", jm_setHighScoresArray_1 )
        , ( "getNextHighScores_0", jm_getNextHighScores_0 )
        , ( "isAnyHighScores_0", jm_isAnyHighScores_0 ) ]
        HighScoresHelperBase.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoresHelper"
        [ ( "jm_setHighScoresArray_1", jm_setHighScoresArray_1 ), ( "jm_getNextHighScores_0", jm_getNextHighScores_0 ), ( "jm_isAnyHighScores_0", jm_isAnyHighScores_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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
                JR.exec (JR.setField "lastIndex" "I" JR.this (JR.map JR.neg (JR.int 1))),
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
                    JR.exec (JR.callVia HighScoresHelperBase.jvtable "setHighScoresArray_1" JR.this [ (JR.local "highScoresArrayP") ]), 
                    JR.exec (JR.invoke "setSize_1" (JR.thisField "circularIndexUtil") [ (JR.alength (JR.thisField "highScoresArrayP")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getNextHighScores_0 : JR.Method
jm_getNextHighScores_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "highScores" "" (JR.aget (JR.thisField "highScoresArrayP") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])), 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.while (JR.and ((JR.or (JR.map2 JR.less (JR.invoke "getTotal_0" (JR.local "highScores") []) (JR.int 1)) (JR.map2 JR.equals (JR.thisField "lastIndex") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])))) (JR.map2 JR.less (JR.local "index") (JR.alength (JR.thisField "highScoresArrayP")))) (JR.run [ 
                        JR.exec (JR.invoke "next_0" (JR.thisField "circularIndexUtil") []), 
                        JR.exec (JR.setLocal "highScores" "" (JR.aget (JR.thisField "highScoresArrayP") (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") []))), 
                        JR.exec (JR.postUpdate (JR.local "index") (\jwN66615 -> (JR.setLocal "index" "I" (JR.lit jwN66615))) JR.increment) ]), 
                    JR.exec (JR.setField "lastIndex" "I" JR.this (JR.invoke "getIndex_0" (JR.thisField "circularIndexUtil") [])), 
                    JR.return (JR.local "highScores") ])
        (jregister jheap)
        jthis
        jargs


jm_isAnyHighScores_0 : JR.Method
jm_isAnyHighScores_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.alength (JR.thisField "highScoresArrayP")) (JR.int 1)) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.declare "anyScores" "Z" (JR.bool False), 
                    JR.declare "highScores" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "highScoresArrayP")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67127 -> (JR.setLocal "index" "I" (JR.lit jwN67127))) JR.decrement) ]) (JR.run [ 
                        JR.exec (JR.setLocal "highScores" "" (JR.aget (JR.thisField "highScoresArrayP") (JR.local "index"))), 
                        JR.ifElse (JR.map2 JR.greater (JR.invoke "getTotal_0" (JR.local "highScores") []) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.setLocal "anyScores" "Z" (JR.bool True)) ]) identity ]) ], 
                    JR.return (JR.local "anyScores") ])
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

