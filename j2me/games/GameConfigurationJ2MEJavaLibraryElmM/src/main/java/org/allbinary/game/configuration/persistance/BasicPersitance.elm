module Org.Allbinary.Game.Configuration.Persistance.BasicPersitance exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.configuration.persistance
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Game.Configuration.Persistance.NullRecordStore as NullRecordStore
import Org.Allbinary.Game.Configuration.Persistance.PersistanceStrings as PersistanceStrings
import Org.Allbinary.Persistance.PlatformRecordIdUtil as PlatformRecordIdUtil
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Javax.Microedition.Rms.RecordStore as RecordStore
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "BasicPersitance"


jchain : List String
jchain =
    [ "BasicPersitance" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "persistanceStrings", JR.defaultOf "" ), ( "platformRecordIdUtil", JR.defaultOf "" ), ( "recordId", JR.defaultOf "" ), ( "valueList", JR.defaultOf "" ), ( "idList", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "deleteRecoreStore_1", jm_deleteRecoreStore_1 )
        , ( "deleteAll_1", jm_deleteAll_1 )
        , ( "delete_2", jm_delete_2 )
        , ( "getRecordId_1", jm_getRecordId_1 )
        , ( "getList_0", jm_getList_0 )
        , ( "getIds_0", jm_getIds_0 )
        , ( "clear_0", jm_clear_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicPersitance"
        [ ( "jm_deleteRecoreStore_1", jm_deleteRecoreStore_1 ), ( "jm_deleteAll_1", jm_deleteAll_1 ), ( "jm_delete_2", jm_delete_2 ), ( "jm_getRecordId_1", jm_getRecordId_1 ), ( "jm_getList_0", jm_getList_0 ), ( "jm_getIds_0", jm_getIds_0 ), ( "jm_clear_0", jm_clear_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "recordId", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "persistanceStrings" "" JR.this (JR.callStatic PersistanceStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "platformRecordIdUtil" "" JR.this (JR.callStatic PlatformRecordIdUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "valueList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                JR.exec (JR.setField "idList" "" JR.this (JR.new BasicArrayListD.jnew_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "recordId" "" JR.this (JR.local "recordId")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_deleteRecoreStore_1 : JR.Method
jm_deleteRecoreStore_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic RecordStore.jm_deleteRecordStore_1 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_deleteAll_1 : JR.Method
jm_deleteAll_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.thisField "idList") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN67950 -> (JR.setLocal "index" "I" (JR.lit jwN67950))) JR.increment) ]) (JR.run [ 
                        JR.declare "integer" "" (JR.aget (JR.field "objectArray" (JR.thisField "idList")) (JR.local "index")), 
                        JR.exec (JR.invoke "delete_2" JR.this [ (JR.local "abeClientInformation"), (JR.invoke "intValue_0" (JR.local "integer") []) ]) ]) ], 
                    JR.exec (JR.invoke "clear_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_delete_2 : JR.Method
jm_delete_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "deleteId", "I" ) ] ""
        (JR.run [ 
                    JR.declare "recordStore" "" NullRecordStore.jstatic_NULL_RECORD_STORE, 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "DELETING_WITH_ID" (JR.thisField "persistanceStrings")) ]) [ (JR.local "deleteId") ]) []), JR.this, (JR.field "delete" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.setLocal "recordStore" "" (JR.callStatic RecordStore.jm_openRecordStore_2 [ (JR.invoke "getRecordId_1" JR.this [ (JR.local "abeClientInformation") ]), (JR.bool True) ])), 
                        JR.exec (JR.invoke "deleteRecord_1" (JR.local "recordStore") [ (JR.local "deleteId") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.throw (JR.local "e") ]) ) ] (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "recordStore") JR.null) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.field "CLOSING_RECORDSTORE" (JR.thisField "persistanceStrings")), JR.this, (JR.field "delete" (JR.thisField "commonStrings")) ]), 
                            JR.exec (JR.invoke "closeRecordStore_0" (JR.local "recordStore") []) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getRecordId_1 : JR.Method
jm_getRecordId_1 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "getRecordId_2" (JR.thisField "platformRecordIdUtil") [ (JR.local "abeClientInformation"), (JR.thisField "recordId") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getList_0 : JR.Method
jm_getList_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "valueList") ])
        (jregister jheap)
        jthis
        jargs


jm_getIds_0 : JR.Method
jm_getIds_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "idList") ])
        (jregister jheap)
        jthis
        jargs


jm_clear_0 : JR.Method
jm_clear_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "valueList") []), 
                    JR.exec (JR.invoke "clear_0" (JR.thisField "idList") []) ])
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

