module Org.Allbinary.Game.Score.Displayable.HighScoreUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score.displayable
-}

import JR
import Javax.Microedition.Lcdui.Command as Command
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Score.HighScoreNamePersistanceSingleton as HighScoreNamePersistanceSingleton
import Org.Allbinary.Game.Score.HighScoresResultsListener as HighScoresResultsListener
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "HighScoreUtil"


jchain : List String
jchain =
    [ "HighScoreUtil" ]
        ++ HighScoresResultsListener.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "highScoresFactoryInterface", JR.defaultOf "" ), ( "highScoresArray", JR.defaultOf "" ), ( "highScore", JR.defaultOf "" ), ( "abeClientInformation", JR.defaultOf "" ), ( "gameInfo", JR.defaultOf "" ), ( "highScoresHelper", JR.defaultOf "" ), ( "firstTime", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "setHighScoresArray_1", jm_setHighScoresArray_1 )
        , ( "update_1", jm_update_1 )
        , ( "saveHighScore_0", jm_saveHighScore_0 )
        , ( "submit_1", jm_submit_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoreUtil"
        [ ( "jm_setHighScoresArray_1", jm_setHighScoresArray_1 ), ( "jm_update_1", jm_update_1 ), ( "jm_saveHighScore_0", jm_saveHighScore_0 ), ( "jm_submit_1", jm_submit_1 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        [ ( "jstatic_SUBMIT_TEXTBOX_COMMAND", jstatic_SUBMIT_TEXTBOX_COMMAND ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SUBMIT_TEXTBOX_COMMAND : JR.M
jstatic_SUBMIT_TEXTBOX_COMMAND s =
    JR.static "HighScoreUtil" jclinit "SUBMIT_TEXTBOX_COMMAND"
        (JR.new Command.jnew_4 [ (JR.str "Submit"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), Command.jstatic_SCREEN, (JR.int 1) ])
        s


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "highScoresFactoryInterface", "" ), ( "highScoresHelper", "" ), ( "abeClientInformation", "" ), ( "gameInfo", "" ), ( "cmdListener", "" ), ( "name", "" ), ( "highScore", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "firstTime" "Z" JR.this (JR.bool True)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "highScoresFactoryInterface" "" JR.this (JR.local "highScoresFactoryInterface")), 
                    JR.exec (JR.setField "highScoresHelper" "" JR.this (JR.local "highScoresHelper")), 
                    JR.exec (JR.setField "highScoresArray" "" JR.this (JR.invoke "getHighScoresArray_0" (JR.thisField "highScoresHelper") [])), 
                    JR.exec (JR.setField "highScore" "" JR.this (JR.local "highScore")), 
                    JR.exec (JR.setField "abeClientInformation" "" JR.this (JR.local "abeClientInformation")), 
                    JR.exec (JR.setField "gameInfo" "" JR.this (JR.local "gameInfo")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_setHighScoresArray_1 : JR.Method
jm_setHighScoresArray_1 jheap jthis jargs =
    JR.method [ ( "highScoresArray", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "highScoresArray" "" JR.this (JR.local "highScoresArray")), 
                    JR.exec (JR.setField "firstTime" "Z" JR.this (JR.bool False)), 
                    JR.exec (JR.invoke "saveHighScore_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "save_3" (JR.callStatic HighScoreNamePersistanceSingleton.jm_getInstance_0 []) [ (JR.thisField "abeClientInformation"), (JR.thisField "gameInfo"), (JR.local "name") ]), 
                    JR.exec (JR.invoke "setName_1" (JR.thisField "highScore") [ (JR.local "name") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_saveHighScore_0 : JR.Method
jm_saveHighScore_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "START" (JR.thisField "commonStrings")) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.thisField "highScore") ]) ]) []), JR.this, (JR.str "saveHighScore") ]), 
                    JR.declare "size" "I" (JR.alength (JR.thisField "highScoresArray")), 
                    JR.ifElse (JR.and (JR.thisField "firstTime") (JR.map2 JR.equals (JR.local "size") (JR.int 0))) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Games canvas did not give us any HighScores"), JR.this, (JR.str "saveHighScore") ]), 
                        JR.exec (JR.invoke "fetchHighScores_2" (JR.thisField "highScoresFactoryInterface") [ (JR.thisField "gameInfo"), JR.this ]), 
                        JR.returnVoid ]) identity, 
                    JR.declare "highScores" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "highScoresAsString" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70608 -> (JR.setLocal "index" "I" (JR.lit jwN70608))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "highScores" "" (JR.aget (JR.thisField "highScoresArray") (JR.local "index"))), 
                        JR.exec (JR.invoke "addHighScore_1" (JR.local "highScores") [ (JR.thisField "highScore") ]), 
                        JR.exec (JR.setLocal "highScoresAsString" "" (JR.invoke "toString_0" (JR.local "highScores") [])), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Added/Adding Score: ") ]) [ (JR.local "highScoresAsString") ]) []), JR.this, (JR.str "saveHighScore") ]) ]) ], 
                    JR.exec (JR.invoke "setHighScoresArray_1" (JR.thisField "highScoresHelper") [ (JR.thisField "highScoresArray") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_submit_1 : JR.Method
jm_submit_1 jheap jthis jargs =
    JR.method [ ( "myCanvas", "" ) ] ""
        (JR.run [ 
                    JR.declare "commandListener" "" (JR.invoke "getCustomCommandListener_0" (JR.local "myCanvas") []), 
                    JR.exec (JR.invoke "commandAction_2" (JR.local "commandListener") [ jstatic_SUBMIT_TEXTBOX_COMMAND, (JR.local "myCanvas") ]) ])
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

