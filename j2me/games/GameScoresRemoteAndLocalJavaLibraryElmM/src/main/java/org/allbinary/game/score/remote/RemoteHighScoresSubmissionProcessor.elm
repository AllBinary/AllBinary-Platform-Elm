module Org.Allbinary.Game.Score.Remote.RemoteHighScoresSubmissionProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score.remote
-}

import JR
import Org.Allbinary.Logic.Java.Bool.BooleanFactory as BooleanFactory
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Game.Configuration.GameConfigurationCentral as GameConfigurationCentral
import Org.Allbinary.Game.GameInfoData as GameInfoData
import Org.Allbinary.Util.HashtableUtil as HashtableUtil
import JLong
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.System.Security.Crypt.Jcehelper.NoCrypt as NoCrypt
import Org.Allbinary.Game.Score.Remote.RemoteHighScoresData as RemoteHighScoresData
import Org.Allbinary.Game.Score.Remote.RemoteHighScoresSubmissionProcessorInterface as RemoteHighScoresSubmissionProcessorInterface
import Org.Allbinary.Logic.Communication.Xmlrpc.XmlRpcAbeClient as XmlRpcAbeClient
import Org.Allbinary.Game.Score.Remote.XmlRpcRemoteHighScoresClient as XmlRpcRemoteHighScoresClient


jclass : String
jclass =
    "RemoteHighScoresSubmissionProcessor"


jchain : List String
jchain =
    [ "RemoteHighScoresSubmissionProcessor" ]
        ++ RemoteHighScoresSubmissionProcessorInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "noCrypt", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "process_3", jm_process_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RemoteHighScoresSubmissionProcessor"
        [ ( "jm_process_3", jm_process_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "noCrypt" "" JR.this (JR.new NoCrypt.jnew_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_process_3 : JR.Method
jm_process_3 jheap jthis jargs =
    JR.method [ ( "remoteHighScores", "" ), ( "abeClientInformation", "" ), ( "highScore", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Begin Remote HighScores Submission"), JR.this, (JR.field "PROCESS" (JR.thisField "commonStrings")) ]), 
                        JR.declare "gameInfoData" "" (JR.callStatic GameInfoData.jm_getInstance_0 []), 
                        JR.declare "hashtable" "" (JR.invoke "toHashtable_0" (JR.local "abeClientInformation") []), 
                        JR.exec (JR.invoke "putAll_2" (JR.callStatic HashtableUtil.jm_getInstance_0 []) [ (JR.invoke "toHashtable_0" (JR.invoke "getGameInfo_0" (JR.local "highScore") []) []), (JR.local "hashtable") ]), 
                        JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "CUSTOMER_USER_NAME" (JR.callStatic RemoteHighScoresData.jm_getInstance_0 [])), (JR.str "None") ]), 
                        JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "DISPLAY_NAME" (JR.callStatic RemoteHighScoresData.jm_getInstance_0 [])), (JR.invoke "getName_0" (JR.local "highScore") []) ]), 
                        JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "SOFTWARE_INFORMATION" (JR.local "gameInfoData")), (JR.invoke "toString_0" (JR.invoke "getSoftwareInformation_0" (JR.local "remoteHighScores") []) []) ]), 
                        JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "ASCENDING" (JR.local "remoteHighScores")), (JR.invoke "toString_0" (JR.invoke "getAscending_0" (JR.local "remoteHighScores") []) []) ]), 
                        JR.declare "displayInfoSingleton" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "ORIENTATION" (JR.local "displayInfoSingleton")), (JR.invoke "toStringb_1" (JR.callStatic BooleanFactory.jm_getInstance_0 []) [ (JR.invoke "isPortrait_0" (JR.local "displayInfoSingleton") []) ]) ]), 
                        JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "GAME_CONFIGURATION" (JR.callStatic RemoteHighScoresData.jm_getInstance_0 [])), (JR.invoke "toString_0" (JR.callStatic GameConfigurationCentral.jm_getInstance_0 []) []) ]), 
                        JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.field "SCORE" (JR.callStatic RemoteHighScoresData.jm_getInstance_0 [])), (JR.callStatic JLong.jm_toString_1 [ (JR.invoke "getScore_0" (JR.local "highScore") []) ]) ]), 
                        JR.ifElse XmlRpcAbeClient.jstatic_isOnline (JR.run [ 
                            JR.declare "resultHashtable" "" (JR.invoke "get_2" (JR.new XmlRpcRemoteHighScoresClient.jnew_3 [ (JR.local "abeClientInformation"), (JR.str "highscoresubmissionservicessl.php"), (JR.str "HighScoreSubmissionService.process") ]) [ (JR.local "hashtable"), (JR.thisField "noCrypt") ]), 
                            JR.exec (JR.invoke "update_1" (JR.local "remoteHighScores") [ (JR.local "resultHashtable") ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "PROCESS" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
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

