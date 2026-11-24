module Org.Allbinary.Game.Score.HighScoreCommandsBaseFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil


jclass : String
jclass =
    "HighScoreCommandsBaseFactory"


jchain : List String
jchain =
    [ "HighScoreCommandsBaseFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "HIGH_SCORE_COMMANDS", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "isHighScoreCommand_1", jm_isHighScoreCommand_1 )
        , ( "getIndex_1", jm_getIndex_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoreCommandsBaseFactory"
        [ ( "jm_isHighScoreCommand_1", jm_isHighScoreCommand_1 ), ( "jm_getIndex_1", jm_getIndex_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "HIGH_SCORE_COMMANDS", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "HIGH_SCORE_COMMANDS" "" JR.this (JR.local "HIGH_SCORE_COMMANDS")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_isHighScoreCommand_1 : JR.Method
jm_isHighScoreCommand_1 jheap jthis jargs =
    JR.method [ ( "command", "" ) ] "Z"
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "HIGH_SCORE_COMMANDS")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66213 -> (JR.setLocal "index" "I" (JR.lit jwN66213))) JR.decrement) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.aget (JR.thisField "HIGH_SCORE_COMMANDS") (JR.local "index"))) (JR.run [ 
                            JR.return (JR.bool True) ]) identity ]) ], 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_getIndex_1 : JR.Method
jm_getIndex_1 jheap jthis jargs =
    JR.method [ ( "command", "" ) ] "I"
        (JR.run [ 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.thisField "HIGH_SCORE_COMMANDS")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66420 -> (JR.setLocal "index" "I" (JR.lit jwN66420))) JR.decrement) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.local "command") (JR.aget (JR.thisField "HIGH_SCORE_COMMANDS") (JR.local "index"))) (JR.run [ 
                            JR.return (JR.local "index") ]) identity ]) ], 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "No Such Command") ]) ])
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

