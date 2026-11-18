module Org.Allbinary.Business.Init.InitInfoEntity exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Business.Init.InitInfo as InitInfo
import Org.Allbinary.Business.Init.InitSql as InitSql
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Business.Init.Db.UserDbInitInfo as UserDbInitInfo


jclass : String
jclass =
    "InitInfoEntity"


jchain : List String
jchain =
    [ "InitInfoEntity" ]
        ++ InitSql.jchain


jfields : List ( String, JR.JValue )
jfields =
    InitSql.jfields ++ [ ( "NAME", JR.defaultOf "" ), ( "NOTHING", JR.defaultOf "" ), ( "tableName", JR.defaultOf "" ), ( "tableData", JR.defaultOf "" ), ( "NOT_IN_DB", JR.defaultOf "" ), ( "METHOD_GET", JR.defaultOf "" ), ( "METHOD_IS", JR.defaultOf "" ), ( "METHOD_ADD", JR.defaultOf "" ), ( "CREATED_SUCCESS", JR.defaultOf "" ), ( "FAILED_TO_CREATE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "get_0", jm_get_0 )
        , ( "is_0", jm_is_0 )
        , ( "update_0", jm_update_0 )
        , ( "add_0", jm_add_0 )
        , ( "createTable_0", jm_createTable_0 ) ]
        InitSql.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitInfoEntity"
        [ ( "jm_get_0", jm_get_0 ), ( "jm_is_0", jm_is_0 ), ( "jm_update_0", jm_update_0 ), ( "jm_add_0", jm_add_0 ), ( "jm_createTable_0", jm_createTable_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect InitSql.jinit_1 JR.this [ (JR.new UserDbInitInfo.jnew_0 []) ]),
                JR.exec (JR.setField "NAME" "" JR.this (JR.str "InitInfoEntity")),
                JR.exec (JR.setField "NOTHING" "" JR.this (JR.str "NOTHING")),
                JR.exec (JR.setField "tableName" "" JR.this (JR.str "initdata")),
                JR.exec (JR.setField "NOT_IN_DB" "" JR.this (JR.str "Not In DB")),
                JR.exec (JR.setField "METHOD_GET" "" JR.this (JR.str "get()")),
                JR.exec (JR.setField "METHOD_IS" "" JR.this (JR.str "is()")),
                JR.exec (JR.setField "METHOD_ADD" "" JR.this (JR.str "add()")),
                JR.exec (JR.setField "CREATED_SUCCESS" "" JR.this (JR.str " Created Successfully")),
                JR.exec (JR.setField "FAILED_TO_CREATE" "" JR.this (JR.str "Failed to create ")),
                identity,
                (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "CREATE_TABLE" (JR.thisField "sqlStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "tableName") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "START" (JR.thisField "sqlStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "NOTHING") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "MAX_CHAR_COLUMN_NOT_NULL" (JR.thisField "sqlTypeStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "TESTING" (JR.callStatic InitInfo.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "MAX_CHAR_COLUMN_NOT_NULL" (JR.thisField "sqlTypeStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "TESTHTMLPATH" (JR.callStatic InitInfo.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "MAX_CHAR_COLUMN_NOT_NULL" (JR.thisField "sqlTypeStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "MAINPATH" (JR.callStatic InitInfo.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "MAX_CHAR_COLUMN_NOT_NULL" (JR.thisField "sqlTypeStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "PRIMARY_KEY" (JR.thisField "sqlStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "NOTHING") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "END" (JR.thisField "sqlStrings")) ]), 
                    JR.exec (JR.setField "tableData" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])), 
                    JR.exec (JR.invoke "setTable_1" JR.this [ (JR.thisField "tableName") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_get_0 : JR.Method
jm_get_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "keyAndValue" "" (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                        JR.exec (JR.invoke "put_2" (JR.local "keyAndValue") [ (JR.thisField "NOTHING"), (JR.thisField "NOTHING") ]), 
                        JR.declare "hashMap" "" (JR.invoke "getRow_1" JR.this [ (JR.local "keyAndValue") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "hashMap") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "set_1" (JR.callStatic InitInfo.jm_getInstance_0 []) [ (JR.local "hashMap") ]), 
                            JR.return (JR.bool True) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.thisField "NOT_IN_DB"), (JR.thisField "NAME"), (JR.thisField "METHOD_GET") ]) ]) identity, 
                            JR.return (JR.bool False) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), (JR.thisField "NAME"), (JR.thisField "METHOD_GET"), (JR.local "e") ]) ]) identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_is_0 : JR.Method
jm_is_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "keyAndValue" "" (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                        JR.exec (JR.invoke "put_2" (JR.local "keyAndValue") [ (JR.thisField "NOTHING"), (JR.thisField "NOTHING") ]), 
                        JR.declare "hashMap" "" (JR.invoke "getRow_1" JR.this [ (JR.local "keyAndValue") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "hashMap") JR.null) (JR.run [ 
                            JR.return (JR.bool True) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.thisField "NOT_IN_DB"), (JR.thisField "NAME"), (JR.thisField "METHOD_IS") ]) ]) identity, 
                            JR.return (JR.bool False) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), (JR.thisField "NAME"), (JR.thisField "METHOD_IS"), (JR.local "e") ]) ]) identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateWhere_3" JR.this [ (JR.thisField "NOTHING"), (JR.thisField "NOTHING"), (JR.invoke "toHashMap_0" (JR.callStatic InitInfo.jm_getInstance_0 []) []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_add_0 : JR.Method
jm_add_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "values" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.exec (JR.invoke "add_1" (JR.local "values") [ (JR.thisField "NOTHING") ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "values") [ (JR.invoke "getTesting_0" (JR.callStatic InitInfo.jm_getInstance_0 []) []) ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "values") [ (JR.invoke "getTestHtmlPath_0" (JR.callStatic InitInfo.jm_getInstance_0 []) []) ]), 
                        JR.exec (JR.invoke "add_1" (JR.local "values") [ (JR.invoke "getMainPath_0" (JR.callStatic InitInfo.jm_getInstance_0 []) []) ]), 
                        JR.exec (JR.invoke "insert_1" JR.this [ (JR.local "values") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), (JR.thisField "NAME"), (JR.thisField "METHOD_ADD"), (JR.local "e") ]) ]) identity ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_createTable_0 : JR.Method
jm_createTable_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.callVia InitSql.jvtable "createTable_1" JR.this [ (JR.thisField "tableData") ]) (JR.run [ 
                        JR.return (JR.concat (JR.thisField "tableName") (JR.thisField "CREATED_SUCCESS")) ]) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "FAILED_TO_CREATE") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "tableData") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EXTENSION_SEP" (JR.callStatic AbPathData.jm_getInstance_0 [])) ]), 
                        JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ]) ])
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

