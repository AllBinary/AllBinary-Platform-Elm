module Org.Allbinary.Game.Configuration.Persistance.KeyValuePersistance exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.persistance
-}

import JR
import Org.Allbinary.Util.ABHashtable as ABHashtable
import Org.Allbinary.Game.Configuration.Persistance.BasicPersitance as BasicPersitance
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Util.HashtableUtil as HashtableUtil
import JByteArrayInputStream
import JByteArrayOutputStream
import JDataInputStream
import JDataOutputStream
import Org.Allbinary.Game.Configuration.Persistance.NullRecordComparator as NullRecordComparator
import Org.Allbinary.Game.Configuration.Persistance.NullRecordFilter as NullRecordFilter
import Org.Allbinary.Game.Configuration.Persistance.NullRecordStore as NullRecordStore
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Javax.Microedition.Rms.RecordStore as RecordStore
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "KeyValuePersistance"


jchain : List String
jchain =
    [ "KeyValuePersistance" ]
        ++ BasicPersitance.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicPersitance.jfields ++ [ ( "tsUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "loadAll_1", jm_loadAll_1 )
        , ( "loadAllSize_2", jm_loadAllSize_2 )
        , ( "save_2", jm_save_2 )
        , ( "get_1", jm_get_1 ) ]
        BasicPersitance.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "KeyValuePersistance"
        [ ( "jm_loadAll_1", jm_loadAll_1 ), ( "jm_loadAllSize_2", jm_loadAllSize_2 ), ( "jm_save_2", jm_save_2 ), ( "jm_get_1", jm_get_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "recordId", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicPersitance.jinit_1 JR.this [ (JR.local "recordId") ]),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_loadAll_1 : JR.Method
jm_loadAll_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "loadAllSize_2" JR.this [ (JR.local "abeClientInformation"), (JR.int 1) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_loadAllSize_2 : JR.Method
jm_loadAllSize_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "size", "I" ) ] ""
        (JR.run [ 
                    JR.declare "recordStore" "" NullRecordStore.jstatic_NULL_RECORD_STORE, 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]), (JR.bool True) ])), 
                        JR.declare "recordEnum" "" (JR.invoke "enumerateRecords_3" (JR.local "recordStore") [ NullRecordFilter.jstatic_NULL_RECORD_FILTER, NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR, (JR.bool True) ]), 
                        JR.declare "hashtable" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "name" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "value" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.declare "recordAsBytes" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "byteArrayInputStream" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "inputStream" "" (JR.lit (JR.defaultOf "")), 
                        JR.while (JR.invoke "hasNextElement_0" (JR.local "recordEnum") []) (JR.run [ 
                            JR.declare "id" "I" (JR.invoke "nextRecordId_0" (JR.local "recordEnum") []), 
                            JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "LOADING_ID" (JR.thisField "persistanceStrings")) ]) [ (JR.local "id") ]) []), JR.this, (JR.field "LOAD_ALL" (JR.thisField "persistanceStrings")) ]), 
                            JR.exec (JR.setLocal "recordAsBytes" "" (JR.invoke "getRecord_2" (JR.thisField "tsUtil") [ (JR.local "recordStore"), (JR.local "id") ])), 
                            JR.ifElse (JR.map2 JR.notEquals (JR.local "recordAsBytes") JR.null) (JR.run [ 
                                JR.exec (JR.setLocal "byteArrayInputStream" "" (JR.new JByteArrayInputStream.jnew_1 [ (JR.local "recordAsBytes") ])), 
                                JR.exec (JR.setLocal "inputStream" "" (JR.new JDataInputStream.jnew_1 [ (JR.local "byteArrayInputStream") ])), 
                                JR.exec (JR.setLocal "hashtable" "" (JR.new ABHashtable.jnew_0 [])), 
                                JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69141 -> (JR.setLocal "index" "I" (JR.lit jwN69141))) JR.increment) ]) (JR.run [ 
                                    JR.exec (JR.setLocal "name" "" (JR.invoke "readUTF_0" (JR.local "inputStream") [])), 
                                    JR.exec (JR.invoke "readUTF_0" (JR.local "inputStream") []), 
                                    JR.exec (JR.setLocal "value" "" (JR.invoke "readUTF_0" (JR.local "inputStream") [])), 
                                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.local "name"), (JR.local "value") ]) ]) ], 
                                JR.exec (JR.invoke "add_1" (JR.thisField "valueList") [ (JR.local "hashtable") ]), 
                                JR.exec (JR.invoke "add_1" (JR.thisField "idList") [ (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.local "id") ]) ]) ]) identity ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "recordStore") JR.null) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.field "CLOSING_RECORDSTORE" (JR.thisField "persistanceStrings")), JR.this, (JR.field "LOAD_ALL" (JR.thisField "persistanceStrings")) ]), 
                            JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_save_2 : JR.Method
jm_save_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.declare "recordStore" "" NullRecordStore.jstatic_NULL_RECORD_STORE, 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "SAVING" (JR.thisField "persistanceStrings")) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "hashtable") ]) ]) []), JR.this, (JR.field "SAVE" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]), (JR.bool True) ])), 
                        JR.declare "byteArrayOutputStream" "" (JR.new JByteArrayOutputStream.jnew_0 []), 
                        JR.declare "outputStream" "" (JR.new JDataOutputStream.jnew_1 [ (JR.local "byteArrayOutputStream") ]), 
                        JR.declare "value" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                        JR.declare "objectArray" "" (JR.invoke "getKeysAsArray_1" (JR.callStatic HashtableUtil.jm_getInstance_0 []) [ (JR.local "hashtable") ]), 
                        JR.declare "anyType" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "size" "I" (JR.alength (JR.local "objectArray")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70378 -> (JR.setLocal "index" "I" (JR.lit jwN70378))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "outputStream") [ (JR.aget (JR.local "objectArray") (JR.local "index")) ]), 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "outputStream") [ (JR.field "EQUALS" (JR.local "commonSeps")) ]), 
                            JR.exec (JR.setLocal "anyType" "" (JR.aget (JR.local "objectArray") (JR.local "index"))), 
                            JR.exec (JR.setLocal "value" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.local "anyType") ])), 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "outputStream") [ (JR.local "value") ]) ]) ], 
                        JR.declare "tsUtil" "" (JR.callStatic TsUtil.jm_getInstance_0 []), 
                        JR.declare "savedGameBytes" "" (JR.invoke "getByteArray_1" (JR.local "tsUtil") [ (JR.invoke "toString_0" (JR.local "byteArrayOutputStream") []) ]), 
                        JR.exec (JR.invoke "addRecord_3" (JR.local "recordStore") [ (JR.local "savedGameBytes"), (JR.int 0), (JR.alength (JR.local "savedGameBytes")) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "recordStore") JR.null) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.field "CLOSING_RECORDSTORE" (JR.thisField "persistanceStrings")), JR.this, (JR.field "SAVE" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_get_1 : JR.Method
jm_get_1 jheap jthis jargs =
    JR.method [ ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "hashtable" "" (JR.aget (JR.field "objectArray" (JR.thisField "valueList")) (JR.local "index")), 
                    JR.return (JR.local "hashtable") ])
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

