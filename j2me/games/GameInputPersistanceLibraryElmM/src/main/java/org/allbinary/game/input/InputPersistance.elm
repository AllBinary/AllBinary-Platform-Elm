module Org.Allbinary.Game.Input.InputPersistance exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Configuration.Persistance.BasicPersitance as BasicPersitance
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Game.Input.GameKeyMappingFactory as GameKeyMappingFactory
import Org.Allbinary.Util.HashtableUtil as HashtableUtil
import Org.Allbinary.Game.Input.InputFactory as InputFactory
import JByteArrayInputStream
import JByteArrayOutputStream
import JDataInputStream
import JDataOutputStream
import JInteger
import Org.Allbinary.Game.Configuration.Persistance.NullRecordComparator as NullRecordComparator
import Org.Allbinary.Game.Configuration.Persistance.NullRecordFilter as NullRecordFilter
import Org.Allbinary.Game.Configuration.Persistance.NullRecordStore as NullRecordStore
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Javax.Microedition.Rms.RecordStore as RecordStore
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "InputPersistance"


jchain : List String
jchain =
    [ "InputPersistance" ]
        ++ BasicPersitance.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicPersitance.jfields ++ [ ( "tsUtil", JR.defaultOf "" ), ( "hashtableUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "loadAll_1", jm_loadAll_1 )
        , ( "save_2", jm_save_2 ) ]
        BasicPersitance.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InputPersistance"
        [ ( "jm_loadAll_1", jm_loadAll_1 ), ( "jm_save_2", jm_save_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicPersitance.jinit_1 JR.this [ (JR.local "name") ]),
                JR.exec (JR.setField "tsUtil" "" JR.this (JR.callStatic TsUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "hashtableUtil" "" JR.this (JR.callStatic HashtableUtil.jm_getInstance_0 [])),
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
                    JR.declare "recordStore" "" NullRecordStore.jstatic_NULL_RECORD_STORE, 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]), (JR.bool True) ])), 
                        JR.declare "recordEnum" "" (JR.invoke "enumerateRecords_3" (JR.local "recordStore") [ NullRecordFilter.jstatic_NULL_RECORD_FILTER, NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR, (JR.bool True) ]), 
                        JR.declare "gameActionInputId" "J" (JR.lit (JR.defaultOf "J")), 
                        JR.declare "inputId" "J" (JR.lit (JR.defaultOf "J")), 
                        JR.declare "gameActionInput" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "input" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "hashtable" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "gameKeyFactory" "" (JR.callStatic GameKeyMappingFactory.jm_getInstance_0 []), 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.declare "inputFactory" "" (JR.callStatic InputFactory.jm_getInstance_0 []), 
                        JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                        JR.declare "stdUtil" "" (JR.callStatic StdUtil.jm_getInstance_0 []), 
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
                                JR.exec (JR.setLocal "hashtable" "" (JR.invoke "createHashtable_0" (JR.local "stdUtil") [])), 
                                JR.declare "value" "I" (JR.lit (JR.defaultOf "I")), 
                                JR.while (JR.map2 JR.greater (JR.invoke "available_0" (JR.local "inputStream") []) (JR.int 0)) (JR.run [ 
                                    JR.declare "gameActionInputIdAsString" "" (JR.invoke "readUTF_0" (JR.local "inputStream") []), 
                                    JR.exec (JR.setLocal "value" "I" (JR.callStatic JInteger.jm_parseInt_1 [ (JR.local "gameActionInputIdAsString") ])), 
                                    JR.exec (JR.setLocal "gameActionInputId" "J" (JR.cast "J" (JR.local "value"))), 
                                    JR.exec (JR.invoke "readUTF_0" (JR.local "inputStream") []), 
                                    JR.exec (JR.setLocal "value" "I" (JR.callStatic JInteger.jm_parseInt_1 [ (JR.invoke "readUTF_0" (JR.local "inputStream") []) ])), 
                                    JR.exec (JR.setLocal "inputId" "J" (JR.cast "J" (JR.local "value"))), 
                                    JR.exec (JR.setLocal "gameActionInput" "" (JR.invoke "getGameKey_1" (JR.local "gameKeyFactory") [ (JR.cast "I" (JR.local "gameActionInputId")) ])), 
                                    JR.exec (JR.setLocal "input" "" (JR.invoke "getInstanceById_1" (JR.local "inputFactory") [ (JR.cast "I" (JR.local "inputId")) ])), 
                                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.local "input") (JR.field "NO_INPUT" (JR.local "inputFactory"))) (JR.map2 JR.equals (JR.local "gameActionInput") JR.null)) (JR.run [ 
                                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                                        JR.ifElse (JR.map2 JR.equals (JR.local "input") (JR.field "NO_INPUT" (JR.local "inputFactory"))) (JR.run [ 
                                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "ERROR_LOADING_ID" (JR.thisField "persistanceStrings")) ]), 
                                            JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.local "inputId") ]), 
                                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "GAME_ACTION_INPUT" (JR.thisField "persistanceStrings")) ]), 
                                            JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.local "gameActionInputId") ]), 
                                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "LOAD_ALL" (JR.thisField "persistanceStrings")) ]) ]) identity, 
                                        JR.ifElse (JR.map2 JR.equals (JR.local "gameActionInput") JR.null) (JR.run [ 
                                            JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "ERROR_LOADING" (JR.thisField "persistanceStrings")) ]), 
                                            JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.local "gameActionInputId") ]), 
                                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "ID" (JR.thisField "persistanceStrings")) ]), 
                                            JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.local "inputId") ]), 
                                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.field "LOAD_ALL" (JR.thisField "persistanceStrings")) ]) ]) identity ]) identity, 
                                    JR.exec (JR.invoke "put_2" (JR.local "hashtable") [ (JR.local "input"), (JR.local "gameActionInput") ]) ]), 
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
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SAVING" (JR.thisField "persistanceStrings")) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "hashtable") ]) ]) []), JR.this, (JR.field "SAVE" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]), (JR.bool True) ])), 
                        JR.declare "byteArrayOutputStream" "" (JR.new JByteArrayOutputStream.jnew_0 []), 
                        JR.declare "outputStream" "" (JR.new JDataOutputStream.jnew_1 [ (JR.local "byteArrayOutputStream") ]), 
                        JR.declare "gameActionInput" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "list" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "input" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "savedGameBytes" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "commonSeps" "" (JR.callStatic CommonSeps.jm_getInstance_0 []), 
                        JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                        JR.declare "inputObjectArray" "" (JR.invoke "getKeysAsArray_1" (JR.thisField "hashtableUtil") [ (JR.local "hashtable") ]), 
                        JR.declare "size" "I" (JR.alength (JR.local "inputObjectArray")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72401 -> (JR.setLocal "index" "I" (JR.lit jwN72401))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "gameActionInput" "" (JR.aget (JR.local "inputObjectArray") (JR.local "index"))), 
                            JR.exec (JR.setLocal "list" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.aget (JR.local "inputObjectArray") (JR.local "index")) ])), 
                            JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.invoke "size_0" (JR.local "list") [])) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN72335 -> (JR.setLocal "index2" "I" (JR.lit jwN72335))) JR.increment) ]) (JR.run [ 
                                JR.declare "gameActionInputIdAsString" "" (JR.invoke "toString_0" (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.invoke "getId_0" (JR.local "gameActionInput") []) ]) []), 
                                JR.exec (JR.invoke "writeUTF_1" (JR.local "outputStream") [ (JR.local "gameActionInputIdAsString") ]), 
                                JR.exec (JR.invoke "writeUTF_1" (JR.local "outputStream") [ (JR.field "EQUALS" (JR.local "commonSeps")) ]), 
                                JR.exec (JR.setLocal "input" "" (JR.aget (JR.field "objectArray" (JR.local "list")) (JR.local "index2"))), 
                                JR.declare "inputIdAsString" "" (JR.invoke "toString_0" (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.invoke "getId_0" (JR.local "input") []) ]) []), 
                                JR.exec (JR.invoke "writeUTF_1" (JR.local "outputStream") [ (JR.local "inputIdAsString") ]) ]) ] ]) ], 
                        JR.exec (JR.setLocal "savedGameBytes" "" (JR.invoke "toByteArray_0" (JR.local "byteArrayOutputStream") [])), 
                        JR.exec (JR.invoke "addRecord_3" (JR.local "recordStore") [ (JR.local "savedGameBytes"), (JR.int 0), (JR.alength (JR.local "savedGameBytes")) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "recordStore") JR.null) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.field "CLOSING_RECORDSTORE" (JR.thisField "persistanceStrings")), JR.this, (JR.field "SAVE" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ]) identity ]) ])
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

