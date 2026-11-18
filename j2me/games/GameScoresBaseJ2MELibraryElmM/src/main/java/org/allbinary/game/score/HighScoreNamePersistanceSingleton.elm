module Org.Allbinary.Game.Score.HighScoreNamePersistanceSingleton exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.score
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Java.Exception.ExceptionUtil as ExceptionUtil
import JByteArrayInputStream
import JByteArrayOutputStream
import JDataInputStream
import JDataOutputStream
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Configuration.Persistance.NullRecordComparator as NullRecordComparator
import Org.Allbinary.Game.Configuration.Persistance.NullRecordFilter as NullRecordFilter
import Org.Allbinary.Game.Configuration.Persistance.NullRecordStore as NullRecordStore
import Org.Allbinary.Persistance.PlatformRecordIdUtil as PlatformRecordIdUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Javax.Microedition.Rms.RecordStore as RecordStore
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "HighScoreNamePersistanceSingleton"


jchain : List String
jchain =
    [ "HighScoreNamePersistanceSingleton" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "tsUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "platformRecordIdUtil", JR.defaultOf "" ), ( "RECORD_ID", JR.defaultOf "" ), ( "name", JR.defaultOf "" ), ( "nameBasicArrayList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "clear_0", jm_clear_0 )
        , ( "deleteAll_2", jm_deleteAll_2 )
        , ( "getRecordId_1", jm_getRecordId_1 )
        , ( "delete_3", jm_delete_3 )
        , ( "getIds_0", jm_getIds_0 )
        , ( "load_2", jm_load_2 )
        , ( "save_3", jm_save_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "HighScoreNamePersistanceSingleton"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_clear_0", jm_clear_0 ), ( "jm_deleteAll_2", jm_deleteAll_2 ), ( "jm_getRecordId_1", jm_getRecordId_1 ), ( "jm_delete_3", jm_delete_3 ), ( "jm_getIds_0", jm_getIds_0 ), ( "jm_load_2", jm_load_2 ), ( "jm_save_3", jm_save_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "HighScoreNamePersistanceSingleton" jclinit "SINGLETON"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "platformRecordIdUtil" "" JR.this (JR.callStatic PlatformRecordIdUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "RECORD_ID" "" JR.this (JR.str "_SN")),
                JR.exec (JR.setField "name" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))),
                JR.exec (JR.setField "nameBasicArrayList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
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
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))) ])
        (jregister jheap)
        jthis
        jargs


jm_deleteAll_2 : JR.Method
jm_deleteAll_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "gameInfo", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "nameBasicArrayList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68936 -> (JR.setLocal "index" "I" (JR.lit jwN68936))) JR.increment) ]) (JR.run [ 
                        JR.declare "integer" "" (JR.aget (JR.field "objectArray" (JR.thisField "nameBasicArrayList")) (JR.local "index")), 
                        JR.exec (JR.invoke "delete_3" JR.this [ (JR.local "abeClientInformation"), (JR.local "gameInfo"), (JR.invoke "intValue_0" (JR.local "integer") []) ]) ]) ], 
                    JR.exec (JR.invoke "clear_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getRecordId_1 : JR.Method
jm_getRecordId_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getRecordId_2" (JR.thisField "platformRecordIdUtil") [ (JR.local "abeClientInformation"), (JR.thisField "RECORD_ID") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_delete_3 : JR.Method
jm_delete_3 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "gameInfo", "" ), ( "deleteId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "recordStore" "" NullRecordStore.jstatic_NULL_RECORD_STORE, 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Deleting: ") ]) [ (JR.local "deleteId") ]) []), JR.this, (JR.field "delete" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]), (JR.bool True) ])), 
                        JR.exec (JR.invoke "deleteRecord_1" (JR.local "recordStore") [ (JR.local "deleteId") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "recordStore") JR.null) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "Closing RecordStore"), JR.this, (JR.field "delete" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getIds_0 : JR.Method
jm_getIds_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "nameBasicArrayList") ])
        (jregister jheap)
        jthis
        jargs


jm_load_2 : JR.Method
jm_load_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "gameInfo", "" ) ] ""
        (JR.run [ 
                    JR.declare "recordStore" "" NullRecordStore.jstatic_NULL_RECORD_STORE, 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.thisField "name") (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))) (JR.run [ 
                            JR.declare "LOADING_ID" "" (JR.str "Loading id: "), 
                            JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]), (JR.bool True) ])), 
                            JR.declare "recordEnum" "" (JR.invoke "enumerateRecords_3" (JR.local "recordStore") [ NullRecordFilter.jstatic_NULL_RECORD_FILTER, NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR, (JR.bool True) ]), 
                            JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                            JR.declare "recordAsBytes" "" (JR.lit (JR.defaultOf "")), 
                            JR.declare "byteArrayInputStream" "" (JR.lit (JR.defaultOf "")), 
                            JR.declare "inputStream" "" (JR.lit (JR.defaultOf "")), 
                            JR.while (JR.invoke "hasNextElement_0" (JR.local "recordEnum") []) (JR.run [ 
                                JR.declare "id" "I" (JR.invoke "nextRecordId_0" (JR.local "recordEnum") []), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "LOADING_ID") ]) [ (JR.local "id") ]) []), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")) ]), 
                                JR.exec (JR.setLocal "recordAsBytes" "" (JR.invoke "getRecord_2" (JR.thisField "tsUtil") [ (JR.local "recordStore"), (JR.local "id") ])), 
                                JR.exec (JR.setLocal "byteArrayInputStream" "" (JR.new JByteArrayInputStream.jnew_1 [ (JR.local "recordAsBytes") ])), 
                                JR.exec (JR.setLocal "inputStream" "" (JR.new JDataInputStream.jnew_1 [ (JR.local "byteArrayInputStream") ])), 
                                JR.while (JR.map2 JR.greater (JR.invoke "available_0" (JR.local "inputStream") []) (JR.int 0)) (JR.run [ 
                                    JR.exec (JR.setField "name" "" JR.this (JR.invoke "readUTF_0" (JR.local "inputStream") [])) ]), 
                                JR.exec (JR.invoke "add_1" (JR.thisField "nameBasicArrayList") [ (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.local "id") ]) ]) ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "save_3" JR.this [ (JR.local "abeClientInformation"), (JR.local "gameInfo"), (JR.thisField "name") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "EXCEPTION_LABEL" (JR.thisField "commonStrings")) ]) [ (JR.invoke "getStackTrace_1" (JR.callStatic ExceptionUtil.jm_getInstance_0 []) [ (JR.local "e") ]) ]) []), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")) ]) ]) ) ] (JR.run [ 
                        JR.try (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "recordStore") JR.null) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "Closing RecordStore"), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")) ]), 
                                JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ]) identity ]) [ ( [ "RecordStoreException" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]), 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_save_3 : JR.Method
jm_save_3 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "gameInfo", "" ), ( "name", "" ) ] ""
        (JR.run [ 
                    JR.declare "recordStore" "" NullRecordStore.jstatic_NULL_RECORD_STORE, 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Saving: ") ]) [ (JR.local "name") ]) []), JR.this, (JR.field "SAVE" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]), (JR.bool True) ])), 
                        JR.declare "byteArrayOutputStream" "" (JR.new JByteArrayOutputStream.jnew_0 []), 
                        JR.declare "outputStream" "" (JR.new JDataOutputStream.jnew_1 [ (JR.local "byteArrayOutputStream") ]), 
                        JR.exec (JR.invoke "writeUTF_1" (JR.local "outputStream") [ (JR.local "name") ]), 
                        JR.declare "savedGameBytes" "" (JR.invoke "toByteArray_0" (JR.local "byteArrayOutputStream") []), 
                        JR.exec (JR.invoke "addRecord_3" (JR.local "recordStore") [ (JR.local "savedGameBytes"), (JR.int 0), (JR.alength (JR.local "savedGameBytes")) ]), 
                        JR.exec (JR.setField "name" "" JR.this (JR.local "name")) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "SAVE" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] (JR.run [ 
                        JR.try (JR.run [ 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "recordStore") JR.null) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.str "Closing RecordStore"), JR.this, (JR.field "SAVE" (JR.thisField "commonStrings")) ]), 
                                JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ]) identity ]) [ ( [ "RecordStoreException" ], "e", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "SAVE" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ]) ])
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

