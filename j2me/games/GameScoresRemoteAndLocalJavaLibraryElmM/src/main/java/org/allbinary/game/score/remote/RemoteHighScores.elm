module Org.Allbinary.Game.Score.Remote.RemoteHighScores exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score.remote
-}

import JR
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Util.EnumerationUtil as EnumerationUtil
import Org.Allbinary.Game.Score.HighScore as HighScore
import Org.Allbinary.Game.Score.HighScores as HighScores
import JLong
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Score.RemoteErrorHighScoresSingletonFactory as RemoteErrorHighScoresSingletonFactory
import Org.Allbinary.Game.Score.Remote.RemoteHighScoresData as RemoteHighScoresData
import Org.Allbinary.Game.Score.Remote.RemoteHighScoresProcessorFactory as RemoteHighScoresProcessorFactory
import Org.Allbinary.Game.Score.Remote.RemoteHighScoresSubmissionProcessorFactory as RemoteHighScoresSubmissionProcessorFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "RemoteHighScores"


jchain : List String
jchain =
    [ "RemoteHighScores" ]
        ++ HighScores.jchain


jfields : List ( String, JR.JValue )
jfields =
    HighScores.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "enumerationUtil", JR.defaultOf "" ), ( "abeClientInformation", JR.defaultOf "" ), ( "softwareInformation", JR.defaultOf "" ), ( "ascending", JR.defaultOf "" ), ( "ASCENDING", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_6", jm_getInstance_6 )
        , ( "getInstancePreload_7", jm_getInstancePreload_7 )
        , ( "addHighScore_1", jm_addHighScore_1 )
        , ( "update_1", jm_update_1 )
        , ( "setAscending_1", jm_setAscending_1 )
        , ( "getAscending_0", jm_getAscending_0 )
        , ( "getSoftwareInformation_0", jm_getSoftwareInformation_0 ) ]
        HighScores.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RemoteHighScores"
        [ ( "jm_getInstance_6", jm_getInstance_6 ), ( "jm_getInstancePreload_7", jm_getInstancePreload_7 ), ( "jm_addHighScore_1", jm_addHighScore_1 ), ( "jm_update_1", jm_update_1 ), ( "jm_setAscending_1", jm_setAscending_1 ), ( "jm_getAscending_0", jm_getAscending_0 ), ( "jm_getSoftwareInformation_0", jm_getSoftwareInformation_0 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        [ ( "jstatic_hashTable", jstatic_hashTable ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_hashTable : JR.M
jstatic_hashTable s =
    JR.static "RemoteHighScores" jclinit "hashTable"
        (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])
        s


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "softwareInformation", "" ), ( "gameInfo", "" ), ( "heading", "" ), ( "columnTwoHeading", "" ), ( "ascending", "" ), ( "preload", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect HighScores.jinit_3 JR.this [ (JR.invoke "toString_0" (JR.local "gameInfo") []), (JR.local "heading"), (JR.local "columnTwoHeading") ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "enumerationUtil" "" JR.this (JR.callStatic EnumerationUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "ASCENDING" "" JR.this (JR.str "ASCENDING")),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "abeClientInformation" "" JR.this (JR.local "abeClientInformation")), 
                    JR.exec (JR.setField "softwareInformation" "" JR.this (JR.local "softwareInformation")), 
                    JR.exec (JR.invoke "setAscending_1" JR.this [ (JR.local "ascending") ]), 
                    JR.ifElse (JR.local "preload") (JR.run [ 
                        JR.exec (JR.invoke "process_3" (JR.callStatic RemoteHighScoresProcessorFactory.jm_getInstance_0 []) [ JR.this, (JR.thisField "abeClientInformation"), (JR.local "gameInfo") ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_getInstance_6 : JR.Method
jm_getInstance_6 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "softwareInformation", "" ), ( "gameInfo", "" ), ( "heading", "" ), ( "columnTwoHeading", "" ), ( "isAscending", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic jm_getInstancePreload_7 [ (JR.local "abeClientInformation"), (JR.local "softwareInformation"), (JR.local "gameInfo"), (JR.local "heading"), (JR.local "columnTwoHeading"), (JR.local "isAscending"), (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstancePreload_7 : JR.Method
jm_getInstancePreload_7 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "softwareInformation", "" ), ( "gameInfo", "" ), ( "heading", "" ), ( "columnTwoHeading", "" ), ( "isAscending", "" ), ( "preload", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                    JR.try (JR.run [ 
                        JR.declare "highScores" "" (JR.invoke "get_1" jstatic_hashTable [ (JR.local "gameInfo") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "highScores") JR.null) (JR.run [ 
                            JR.exec (JR.setLocal "highScores" "" (JR.new jnew_7 [ (JR.local "abeClientInformation"), (JR.local "softwareInformation"), (JR.local "gameInfo"), (JR.local "heading"), (JR.local "columnTwoHeading"), (JR.local "isAscending"), (JR.local "preload") ])), 
                            JR.exec (JR.invoke "put_2" jstatic_hashTable [ (JR.local "gameInfo"), (JR.local "highScores") ]) ]) identity, 
                        JR.return (JR.local "highScores") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "put_4" (JR.local "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), (JR.callStatic RemoteErrorHighScoresSingletonFactory.jm_getInstance_0 []), (JR.field "GET_INSTANCE" (JR.local "commonStrings")), (JR.local "e") ]), 
                        JR.return (JR.callStatic RemoteErrorHighScoresSingletonFactory.jm_getInstance_0 []) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_addHighScore_1 : JR.Method
jm_addHighScore_1 jheap jthis jargs =
    JR.method [ ( "newHighScore", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "process_3" (JR.callStatic RemoteHighScoresSubmissionProcessorFactory.jm_getInstance_0 []) [ JR.this, (JR.thisField "abeClientInformation"), (JR.local "newHighScore") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_update_1 : JR.Method
jm_update_1 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.invoke "getList_0" JR.this []) []), 
                    JR.declare "vector" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.field "HIGH_SCORES" (JR.callStatic RemoteHighScoresData.jm_getInstance_0 [])) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "vector") JR.null) (JR.run [ 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "vector") []), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70940 -> (JR.setLocal "index" "I" (JR.lit jwN70940))) JR.increment) ]) (JR.run [ 
                            JR.declare "highScoreVector" "" (JR.invoke "get_1" (JR.local "vector") [ (JR.local "index") ]), 
                            JR.declare "displayName" "" (JR.invoke "get_1" (JR.local "highScoreVector") [ (JR.int 0) ]), 
                            JR.declare "score" "" (JR.invoke "get_1" (JR.local "highScoreVector") [ (JR.int 1) ]), 
                            JR.declare "longScore" "J" (JR.callStatic JLong.jm_parseLong_1 [ (JR.local "score") ]), 
                            JR.declare "highScore" "" (JR.new HighScore.jnew_4 [ (JR.map JR.neg (JR.int 1)), (JR.local "displayName"), JR.null, (JR.local "longScore") ]), 
                            JR.exec (JR.invoke "add_1" (JR.invoke "getList_0" JR.this []) [ (JR.local "highScore") ]) ]) ] ]) (JR.run [ 
                        JR.declare "NEXT_ELEMENT" "" (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NEXT" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.str "Element: ") ]) []), 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.declare "enumeration" "" (JR.invoke "elements_0" (JR.local "hashtable") []), 
                        JR.declare "nextElement" "" (JR.lit (JR.defaultOf "")), 
                        JR.while (JR.invoke "hasMoreElements_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ]) (JR.run [ 
                            JR.exec (JR.setLocal "nextElement" "" (JR.invoke "nextElement_1" (JR.thisField "enumerationUtil") [ (JR.local "enumeration") ])), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.local "NEXT_ELEMENT") (JR.local "nextElement")), JR.this, (JR.field "PROCESS" (JR.local "commonStrings")) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setAscending_1 : JR.Method
jm_setAscending_1 jheap jthis jargs =
    JR.method [ ( "ascending", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "ascending" "" JR.this (JR.local "ascending")) ])
        (jregister jheap)
        jthis
        jargs


jm_getAscending_0 : JR.Method
jm_getAscending_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "ascending") ])
        (jregister jheap)
        jthis
        jargs


jm_getSoftwareInformation_0 : JR.Method
jm_getSoftwareInformation_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "softwareInformation") ])
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

