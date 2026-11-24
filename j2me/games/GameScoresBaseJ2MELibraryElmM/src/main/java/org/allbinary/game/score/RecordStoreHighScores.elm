module Org.Allbinary.Game.Score.RecordStoreHighScores exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.GameInfo as GameInfo
import Org.Allbinary.Game.Score.HighScore as HighScore
import Org.Allbinary.Game.Score.HighScores as HighScores
import JByteArrayInputStream
import JDataInputStream
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Configuration.Persistance.NullRecordComparator as NullRecordComparator
import Org.Allbinary.Game.Configuration.Persistance.NullRecordFilter as NullRecordFilter
import Org.Allbinary.Game.Configuration.Persistance.NullRecordStore as NullRecordStore
import Org.Allbinary.Persistance.PlatformRecordIdUtil as PlatformRecordIdUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Javax.Microedition.Rms.RecordComparator as RecordComparator
import Javax.Microedition.Rms.RecordStore as RecordStore
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "RecordStoreHighScores"


jchain : List String
jchain =
    [ "RecordStoreHighScores" ]
        ++ HighScores.jchain


jfields : List ( String, JR.JValue )
jfields =
    HighScores.jfields ++ [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "platformRecordIdUtil", JR.defaultOf "" ), ( "tsUtil", JR.defaultOf "" ), ( "RECORD_ID", JR.defaultOf "" ), ( "MAXHIGHSCORES", JR.defaultOf "I" ), ( "gameInfo", JR.defaultOf "" ), ( "abeClientInformation", JR.defaultOf "" ), ( "recordComparatorInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_6", jm_getInstance_6 )
        , ( "getRecordId_1", jm_getRecordId_1 )
        , ( "addHighScore_1", jm_addHighScore_1 )
        , ( "removeLowestHighScore_0", jm_removeLowestHighScore_0 )
        , ( "load_0", jm_load_0 )
        , ( "isTooManyHighScores_0", jm_isTooManyHighScores_0 )
        , ( "isBestScore_1", jm_isBestScore_1 )
        , ( "toString_0", jm_toString_0 ) ]
        HighScores.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "RecordStoreHighScores"
        [ ( "jm_getInstance_6", jm_getInstance_6 ), ( "jm_getRecordId_1", jm_getRecordId_1 ), ( "jm_addHighScore_1", jm_addHighScore_1 ), ( "jm_removeLowestHighScore_0", jm_removeLowestHighScore_0 ), ( "jm_load_0", jm_load_0 ), ( "jm_isTooManyHighScores_0", jm_isTooManyHighScores_0 ), ( "jm_isBestScore_1", jm_isBestScore_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        [ ( "jstatic_hashTable", jstatic_hashTable ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_hashTable : JR.M
jstatic_hashTable s =
    JR.static "RecordStoreHighScores" jclinit "hashTable"
        (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])
        s


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "gameInfo", "" ), ( "name", "" ), ( "heading", "" ), ( "columnTwoHeading", "" ), ( "recordComparatorInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect HighScores.jinit_3 JR.this [ (JR.local "name"), (JR.local "heading"), (JR.local "columnTwoHeading") ]),
                JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "platformRecordIdUtil" "" JR.this (JR.callStatic PlatformRecordIdUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "RECORD_ID" "" JR.this (JR.str "_HS")),
                JR.exec (JR.setField "MAXHIGHSCORES" "I" JR.this (JR.int 100)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "abeClientInformation" "" JR.this (JR.local "abeClientInformation")), 
                    JR.exec (JR.setField "gameInfo" "" JR.this (JR.local "gameInfo")), 
                    JR.exec (JR.setField "recordComparatorInterface" "" JR.this (JR.local "recordComparatorInterface")), 
                    JR.exec (JR.invoke "load_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_getInstance_6 : JR.Method
jm_getInstance_6 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "gameInfo", "" ), ( "highScoreName", "" ), ( "heading", "" ), ( "columnTwoHeading", "" ), ( "recordComparatorInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "highScoresCanBeNull" "" (JR.invoke "get_1" jstatic_hashTable [ (JR.local "highScoreName") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "highScoresCanBeNull") JR.null) (JR.run [ 
                        JR.declare "highScores" "" (JR.new jnew_6 [ (JR.local "abeClientInformation"), (JR.local "gameInfo"), (JR.local "highScoreName"), (JR.local "heading"), (JR.local "columnTwoHeading"), (JR.local "recordComparatorInterface") ]), 
                        JR.exec (JR.invoke "put_2" jstatic_hashTable [ (JR.invoke "getName_0" (JR.local "highScores") []), (JR.local "highScores") ]), 
                        JR.return (JR.local "highScores") ]) identity, 
                    JR.return (JR.local "highScoresCanBeNull") ])
        (jregister jheap)
        jthis
        jargs


jm_getRecordId_1 : JR.Method
jm_getRecordId_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getRecordId_2" (JR.thisField "platformRecordIdUtil") [ (JR.local "abeClientInformation"), (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "UNDERSCORE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) [ (JR.invoke "getName_0" JR.this []) ]) [ (JR.thisField "RECORD_ID") ]) []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_addHighScore_1 : JR.Method
jm_addHighScore_1 jheap jthis jargs =
    JR.method [ ( "newHighScore", "" ) ] ""
        (JR.run [ 
                    JR.declare "recordStore" "" NullRecordStore.jstatic_NULL_RECORD_STORE, 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Adding HighScore: ") ]) [ (JR.invoke "getScore_0" (JR.local "newHighScore") []) ]) []), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")) ]), 
                        JR.ifElse (JR.invoke "isTooManyHighScores_0" JR.this []) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Removing Lowest Score"), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "removeLowestHighScore_0" JR.this []) ]) identity, 
                        JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.thisField "abeClientInformation") ]), (JR.bool True) ])), 
                        JR.declare "highScoreBytes" "" (JR.invoke "getAsBytes_0" (JR.local "newHighScore") []), 
                        JR.declare "recordId" "I" (JR.invoke "addRecord_3" (JR.local "recordStore") [ (JR.local "highScoreBytes"), (JR.int 0), (JR.alength (JR.local "highScoreBytes")) ]), 
                        JR.exec (JR.invoke "load_0" JR.this []) ]) [ ( [ "RecordStoreException" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ), ( [ "IOException" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] (JR.run [ 
                        JR.try (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "recordStore") JR.null) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "Closing RecordStore"), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")) ]), 
                                JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ]) identity ]) [ ( [ "RecordStoreException" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_removeLowestHighScore_0 : JR.Method
jm_removeLowestHighScore_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "recordStore" "" NullRecordStore.jstatic_NULL_RECORD_STORE, 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.thisField "abeClientInformation") ]), (JR.bool True) ])), 
                        JR.declare "recordEnum" "" (JR.invoke "enumerateRecords_3" (JR.local "recordStore") [ NullRecordFilter.jstatic_NULL_RECORD_FILTER, NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR, (JR.bool True) ]), 
                        JR.declare "scoreComparator" "" ((JR.thisField "recordComparatorInterface")), 
                        JR.declare "bestHighScore" "" (JR.new HighScore.jnew_4 [ (JR.map JR.neg (JR.int 1)), (JR.str "none"), GameInfo.jstatic_NONE, (JR.invoke "getBestScore_0" (JR.local "scoreComparator") []) ]), 
                        JR.declare "recordAsBytes" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "byteArrayInputStream" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "inputStream" "" (JR.lit (JR.defaultOf "")), 
                        JR.while (JR.invoke "hasNextElement_0" (JR.local "recordEnum") []) (JR.run [ 
                            JR.declare "id" "I" (JR.invoke "nextRecordId_0" (JR.local "recordEnum") []), 
                            JR.exec (JR.setLocal "recordAsBytes" "" (JR.invoke "getRecord_2" (JR.thisField "tsUtil") [ (JR.local "recordStore"), (JR.local "id") ])), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "recordAsBytes") JR.null) (JR.run [ 
                                JR.exec (JR.setLocal "byteArrayInputStream" "" (JR.new JByteArrayInputStream.jnew_1 [ (JR.local "recordAsBytes") ])), 
                                JR.exec (JR.setLocal "inputStream" "" (JR.new JDataInputStream.jnew_1 [ (JR.local "byteArrayInputStream") ])), 
                                JR.declare "name" "" (JR.invoke "readUTF_0" (JR.local "inputStream") []), 
                                JR.declare "nextScore" "J" (JR.invoke "readLong_0" (JR.local "inputStream") []), 
                                JR.declare "nextCurrentHighScore" "" (JR.new HighScore.jnew_4 [ (JR.local "id"), (JR.local "name"), GameInfo.jstatic_NONE, (JR.local "nextScore") ]), 
                                JR.ifElse (JR.map2 JR.equals (JR.invoke "compare_2" (JR.thisField "recordComparatorInterface") [ (JR.invoke "getAsBytes_0" (JR.local "nextCurrentHighScore") []), (JR.invoke "getAsBytes_0" (JR.local "bestHighScore") []) ]) RecordComparator.jstatic_FOLLOWS) (JR.run [ 
                                    JR.exec (JR.setLocal "bestHighScore" "" (JR.local "nextCurrentHighScore")) ]) identity ]) identity ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getId_0" (JR.local "bestHighScore") []) (JR.map JR.neg (JR.int 1))) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Removing Lowest HighScore: ") ]) [ (JR.invoke "getScore_0" (JR.local "bestHighScore") []) ]) []), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "deleteRecord_1" (JR.local "recordStore") [ (JR.invoke "getId_0" (JR.local "bestHighScore") []) ]) ]) identity ]) [ ( [ "RecordStoreException" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "removeLowestHighScore"), (JR.local "e") ]) ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "removeLowestHighScore"), (JR.local "e") ]) ]) ) ] (JR.run [ 
                        JR.try (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "recordStore") JR.null) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "Closing RecordStore"), JR.this, (JR.str "removeLowestHighScore") ]), 
                                JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ]) identity ]) [ ( [ "RecordStoreException" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "removeLowestHighScore"), (JR.local "e") ]) ]) ) ] identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_load_0 : JR.Method
jm_load_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "recordStore" "" NullRecordStore.jstatic_NULL_RECORD_STORE, 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.thisField "abeClientInformation") ]), (JR.bool True) ])), 
                        JR.exec (JR.invoke "setList_1" JR.this [ (JR.new BasicArrayListD.jnew_0 []) ]), 
                        JR.declare "recordEnum" "" (JR.invoke "enumerateRecords_3" (JR.local "recordStore") [ NullRecordFilter.jstatic_NULL_RECORD_FILTER, NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR, (JR.bool True) ]), 
                        JR.declare "recordAsBytes" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "byteArrayInputStream" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "inputStream" "" (JR.lit (JR.defaultOf "")), 
                        JR.while (JR.invoke "hasNextElement_0" (JR.local "recordEnum") []) (JR.run [ 
                            JR.declare "id" "I" (JR.invoke "nextRecordId_0" (JR.local "recordEnum") []), 
                            JR.exec (JR.setLocal "recordAsBytes" "" (JR.invoke "getRecord_2" (JR.thisField "tsUtil") [ (JR.local "recordStore"), (JR.local "id") ])), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "recordAsBytes") JR.null) (JR.run [ 
                                JR.exec (JR.setLocal "byteArrayInputStream" "" (JR.new JByteArrayInputStream.jnew_1 [ (JR.local "recordAsBytes") ])), 
                                JR.exec (JR.setLocal "inputStream" "" (JR.new JDataInputStream.jnew_1 [ (JR.local "byteArrayInputStream") ])), 
                                JR.try (JR.run [ 
                                    JR.declare "name" "" (JR.invoke "readUTF_0" (JR.local "inputStream") []), 
                                    JR.declare "score" "J" (JR.invoke "readLong_0" (JR.local "inputStream") []), 
                                    JR.declare "newHighScore" "" (JR.new HighScore.jnew_4 [ (JR.local "id"), (JR.local "name"), GameInfo.jstatic_NONE, (JR.local "score") ]), 
                                    JR.declare "list" "" (JR.invoke "getList_0" JR.this []), 
                                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                                    JR.declare "lastIndex" "I" (JR.local "size"), 
                                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN73959 -> (JR.setLocal "index" "I" (JR.lit jwN73959))) JR.increment) ]) (JR.run [ 
                                        JR.declare "highScore" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compare_2" (JR.thisField "recordComparatorInterface") [ (JR.invoke "getAsBytes_0" (JR.local "newHighScore") []), (JR.invoke "getAsBytes_0" (JR.local "highScore") []) ]) RecordComparator.jstatic_PRECEDES) (JR.run [ 
                                            JR.exec (JR.setLocal "lastIndex" "I" (JR.local "index")), 
                                            JR.break ]) identity ]) ], 
                                    JR.exec (JR.invoke "addAt_2" (JR.local "list") [ (JR.local "lastIndex"), (JR.local "newHighScore") ]) ]) [ ( [ "EOFException" ], "e", (JR.run [ 
                                    JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "EOF"), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                                    JR.throw (JR.local "e") ]) ) ] identity ]) identity ]) ]) [ ( [ "RecordStoreNotFoundException" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "No High Scores"), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ), ( [ "RecordStoreException" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "UNKNOWN" (JR.thisField "commonStrings")), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ), ( [ "IOException" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "UNKNOWN" (JR.thisField "commonStrings")), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "UNKNOWN" (JR.thisField "commonStrings")), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] (JR.run [ 
                        JR.try (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "recordStore") JR.null) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "Closing RecordStore"), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")) ]), 
                                JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ]) identity ]) [ ( [ "RecordStoreException" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isTooManyHighScores_0 : JR.Method
jm_isTooManyHighScores_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.invoke "getList_0" JR.this []) JR.null) (JR.map2 JR.less (JR.invoke "size_0" (JR.invoke "getList_0" JR.this []) []) (JR.thisField "MAXHIGHSCORES"))) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "HighScores RecordStore Max Reached: ") ]) [ (JR.thisField "MAXHIGHSCORES") ]) []), JR.this, (JR.str "isTooManyHighScores") ]), 
                        JR.return (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isBestScore_1 : JR.Method
jm_isBestScore_1 jheap jthis jargs =
    JR.method [ ( "newHighScore", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "isTooManyHighScores_0" JR.this [])) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Slot Available for a High Score"), JR.this, (JR.str "isBestScore") ]), 
                            JR.return (JR.bool True) ]) (JR.run [ 
                            JR.declare "list" "" (JR.invoke "getList_0" JR.this []), 
                            JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                            JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN75199 -> (JR.setLocal "index" "I" (JR.lit jwN75199))) JR.increment) ]) (JR.run [ 
                                JR.declare "highScore" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                                JR.ifElse (JR.map2 JR.equals (JR.invoke "compare_2" (JR.thisField "recordComparatorInterface") [ (JR.invoke "getAsBytes_0" (JR.local "newHighScore") []), (JR.invoke "getAsBytes_0" (JR.local "highScore") []) ]) RecordComparator.jstatic_FOLLOWS) (JR.run [ 
                                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Obtained a High Score"), JR.this, (JR.str "isBestScore") ]), 
                                    JR.return (JR.bool True) ]) identity ]) ] ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Not a High Score"), JR.this, (JR.str "isBestScore") ]), 
                        JR.return (JR.bool False) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "ADD" (JR.thisField "commonStrings")), (JR.local "e") ]), 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.callVia HighScores.jvtable "toString_0" JR.this []) ]), 
                    JR.declare "list" "" (JR.invoke "getList_0" JR.this []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN75901 -> (JR.setLocal "index" "I" (JR.lit jwN75901))) JR.increment) ]) (JR.run [ 
                        JR.declare "highScore" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index")), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getScoreString_0" (JR.local "highScore") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA_SEP" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]) ]) ], 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

