module Org.Allbinary.Game.Input.InputPersistance exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input
-}

import JR
import Org.Allbinary.Game.Configuration.Persistance.BasicPersitance as BasicPersitance
import Org.Allbinary.Util.HashtableUtil as HashtableUtil
import Org.Allbinary.Game.Configuration.Persistance.NullRecordComparator as NullRecordComparator
import Org.Allbinary.Game.Configuration.Persistance.NullRecordFilter as NullRecordFilter
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Javax.Microedition.Rms.RecordStore as RecordStore
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "InputPersistance"


jchain : List String
jchain =
    [ "InputPersistance" ]
        ++ BasicPersitance.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicPersitance.jfields ++ [ ( "hashtableUtil", JR.defaultOf "" ) ]


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
                    JR.declare "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]), (JR.bool True) ]), 
                    JR.declare "recordEnum" "" (JR.invoke "enumerateRecords_3" (JR.local "recordStore") [ NullRecordFilter.jstatic_NULL_RECORD_FILTER, NullRecordComparator.jstatic_NULL_RECORD_COMPARATOR, (JR.bool True) ]), 
                    JR.declare "hashtable" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "smallIntegerSingletonFactory" "" (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 []), 
                    JR.declare "id" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.while (JR.invoke "hasNextElement_0" (JR.local "recordEnum") []) (JR.run [ 
                        JR.exec (JR.setLocal "id" "I" (JR.invoke "nextRecordId_0" (JR.local "recordEnum") [])), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "LOADING_ID" (JR.thisField "persistanceStrings")) ]) [ (JR.local "id") ]) []), JR.this, (JR.field "LOAD_ALL" (JR.thisField "persistanceStrings")) ]), 
                        JR.exec (JR.setLocal "hashtable" "" (JR.invoke "createHashtable_0" (JR.callStatic StdUtil.jm_getInstance_0 []) [])), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "valueList") [ (JR.local "hashtable") ]), 
                        JR.exec (JR.invoke "add_1" (JR.thisField "idList") [ (JR.invoke "getAt_1" (JR.local "smallIntegerSingletonFactory") [ (JR.local "id") ]) ]) ]), 
                    JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ])
        (jregister jheap)
        jthis
        jargs


jm_save_2 : JR.Method
jm_save_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "hashtable", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NOT_SAVING" (JR.thisField "persistanceStrings")) ]) [ (JR.invoke "toString_1" (JR.callStatic StringUtil.jm_getInstance_0 []) [ (JR.local "hashtable") ]) ]) []), JR.this, (JR.field "SAVE" (JR.thisField "commonStrings")) ]), 
                    JR.declare "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]), (JR.bool True) ]), 
                    JR.declare "gameActionInput" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "list" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "input" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "inputObjectArray" "" (JR.invoke "getKeysAsArray_1" (JR.thisField "hashtableUtil") [ (JR.local "hashtable") ]), 
                    JR.declare "size" "I" (JR.alength (JR.local "inputObjectArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69445 -> (JR.setLocal "index" "I" (JR.lit jwN69445))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "gameActionInput" "" (JR.aget (JR.local "inputObjectArray") (JR.local "index"))), 
                        JR.exec (JR.setLocal "list" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.aget (JR.local "inputObjectArray") (JR.local "index")) ])), 
                        JR.run [ JR.declare "index2" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index2") (JR.invoke "size_0" (JR.local "list") [])) (JR.run [ JR.exec (JR.postUpdate (JR.local "index2") (\jwN69379 -> (JR.setLocal "index2" "I" (JR.lit jwN69379))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "input" "" (JR.invoke "get_1" (JR.local "list") [ (JR.local "index2") ])) ]) ] ]) ], 
                    JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ])
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

