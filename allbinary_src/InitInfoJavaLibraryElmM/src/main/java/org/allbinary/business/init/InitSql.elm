module Org.Allbinary.Business.Init.InitSql exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.Communication.Sql.SqlStrings as SqlStrings
import Org.Allbinary.Logic.Communication.Sql.SqlTypeStrings as SqlTypeStrings
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil


jclass : String
jclass =
    "InitSql"


jchain : List String
jchain =
    [ "InitSql" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "stringUtil", JR.defaultOf "" ), ( "commonSeps", JR.defaultOf "" ), ( "sqlTypeStrings", JR.defaultOf "" ), ( "sqlStrings", JR.defaultOf "" ), ( "stdUtil", JR.defaultOf "" ), ( "INSERT", JR.defaultOf "" ), ( "UPDATE", JR.defaultOf "" ), ( "databaseConnectionInfoInterface", JR.defaultOf "" ), ( "userid", JR.defaultOf "" ), ( "password", JR.defaultOf "" ), ( "tableName", JR.defaultOf "" ), ( "conn", JR.defaultOf "" ), ( "useridAndPassword", JR.defaultOf "Z" ), ( "SUCCESS_SQL_STATEMENT", JR.defaultOf "" ), ( "FAILED_SQL_STATEMENT", JR.defaultOf "" ), ( "INIT_SQL", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "EQUAL_QUOTE", JR.defaultOf "" ), ( "METHOD_GET_ROW", JR.defaultOf "" ), ( "METHOD_UPDATE_WHERE", JR.defaultOf "" ), ( "ROW_VALUE_LABEL", JR.defaultOf "" ), ( "NO_RESULTS_IN_RESULT_SET", JR.defaultOf "" ), ( "INSERT_END", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setTable_1", jm_setTable_1 )
        , ( "setDatabaseConnectionInfoInterface_1", jm_setDatabaseConnectionInfoInterface_1 )
        , ( "createTable_1", jm_createTable_1 )
        , ( "dropTable_0", jm_dropTable_0 )
        , ( "getRow_1", jm_getRow_1 )
        , ( "updateWhere_3", jm_updateWhere_3 )
        , ( "insert_1", jm_insert_1 )
        , ( "getValue_1", jm_getValue_1 )
        , ( "executeSQLStatement_1", jm_executeSQLStatement_1 )
        , ( "createConnection_0", jm_createConnection_0 )
        , ( "initialize_0", jm_initialize_0 )
        , ( "getDatabaseConnectionInfoInterface_0", jm_getDatabaseConnectionInfoInterface_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitSql"
        [ ( "jm_setTable_1", jm_setTable_1 ), ( "jm_setDatabaseConnectionInfoInterface_1", jm_setDatabaseConnectionInfoInterface_1 ), ( "jm_createTable_1", jm_createTable_1 ), ( "jm_dropTable_0", jm_dropTable_0 ), ( "jm_getRow_1", jm_getRow_1 ), ( "jm_updateWhere_3", jm_updateWhere_3 ), ( "jm_insert_1", jm_insert_1 ), ( "jm_getValue_1", jm_getValue_1 ), ( "jm_executeSQLStatement_1", jm_executeSQLStatement_1 ), ( "jm_createConnection_0", jm_createConnection_0 ), ( "jm_initialize_0", jm_initialize_0 ), ( "jm_getDatabaseConnectionInfoInterface_0", jm_getDatabaseConnectionInfoInterface_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "databaseConnectionInfoInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "stringUtil" "" JR.this (JR.callStatic StringUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonSeps" "" JR.this (JR.callStatic CommonSeps.jm_getInstance_0 [])),
                JR.exec (JR.setField "sqlTypeStrings" "" JR.this (JR.callStatic SqlTypeStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "sqlStrings" "" JR.this (JR.callStatic SqlStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "stdUtil" "" JR.this (JR.callStatic StdUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "INSERT" "" JR.this (JR.str "insert")),
                JR.exec (JR.setField "UPDATE" "" JR.this (JR.str "update")),
                JR.exec (JR.setField "SUCCESS_SQL_STATEMENT" "" JR.this (JR.str "Success\nSQL Statement: ")),
                JR.exec (JR.setField "FAILED_SQL_STATEMENT" "" JR.this (JR.str "Failed\nSQL Statement: ")),
                JR.exec (JR.setField "INIT_SQL" "" JR.this (JR.str "InitSql")),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "EQUAL_QUOTE" "" JR.this (JR.str "=\"")),
                JR.exec (JR.setField "METHOD_GET_ROW" "" JR.this (JR.str "getRow()")),
                JR.exec (JR.setField "METHOD_UPDATE_WHERE" "" JR.this (JR.str "updateWhere()")),
                JR.exec (JR.setField "ROW_VALUE_LABEL" "" JR.this (JR.str "Row Value: ")),
                JR.exec (JR.setField "NO_RESULTS_IN_RESULT_SET" "" JR.this (JR.str "No Results in ResultSet")),
                JR.exec (JR.setField "INSERT_END" "" JR.this (JR.str "')")),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setDatabaseConnectionInfoInterface_1" JR.this [ (JR.local "databaseConnectionInfoInterface") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setTable_1 : JR.Method
jm_setTable_1 jheap jthis jargs =
    JR.method [ ( "tableName", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "tableName" "" JR.this (JR.local "tableName")) ])
        (jregister jheap)
        jthis
        jargs


jm_setDatabaseConnectionInfoInterface_1 : JR.Method
jm_setDatabaseConnectionInfoInterface_1 jheap jthis jargs =
    JR.method [ ( "databaseConnectionInfoInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "databaseConnectionInfoInterface" "" JR.this (JR.local "databaseConnectionInfoInterface")) ])
        (jregister jheap)
        jthis
        jargs


jm_createTable_1 : JR.Method
jm_createTable_1 jheap jthis jargs =
    JR.method [ ( "tableData", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Creating Table: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "tableData") ]), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.thisField "INIT_SQL"), (JR.str "createTable()") ]), 
                        JR.exec (JR.invoke "executeSQLStatement_1" JR.this [ (JR.local "tableData") ]), 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGINGERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), (JR.thisField "INIT_SQL"), (JR.str "createTable()"), (JR.local "e") ]) ]) identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_dropTable_0 : JR.Method
jm_dropTable_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "sqlStatement" "" (JR.concat (JR.field "DROP_TABLE" (JR.thisField "sqlStrings")) (JR.thisField "tableName")), 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "executeSQLStatement_1" JR.this [ (JR.local "sqlStatement") ]), 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGINGERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), (JR.thisField "INIT_SQL"), (JR.str "dropTables()"), (JR.local "e") ]) ]) identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getRow_1 : JR.Method
jm_getRow_1 jheap jthis jargs =
    JR.method [ ( "keysAndValues", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SELECT_ALL_FROM" (JR.thisField "sqlStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "tableName") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "WHERE" (JR.thisField "sqlStrings")) ]), 
                    JR.try (JR.run [ 
                        JR.declare "result" "" JR.null, 
                        JR.declare "set" "" (JR.invoke "keySet_0" (JR.local "keysAndValues") []), 
                        JR.declare "keyArray" "" (JR.invoke "toArray_0" (JR.local "set") []), 
                        JR.declare "size" "I" (JR.alength (JR.local "keyArray")), 
                        JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN71373 -> (JR.setLocal "i" "I" (JR.lit jwN71373))) JR.increment) ]) (JR.run [ 
                            JR.declare "key" "" (JR.aget (JR.local "keyArray") (JR.local "i")), 
                            JR.declare "value" "" (JR.withState JR.newString [ (JR.invoke "get_1" (JR.local "keysAndValues") [ (JR.local "key") ]) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "key") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUAL_QUOTE" (JR.thisField "sqlStrings")) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getValue_1" JR.this [ (JR.local "value") ]) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "CLOSE_QUOTE" (JR.thisField "sqlStrings")) ]), 
                            JR.ifElse (JR.map2 JR.less (JR.local "i") (JR.map2 JR.sub (JR.local "size") (JR.int 1))) (JR.run [ 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "AND" (JR.thisField "sqlStrings")) ]) ]) identity ]) ], 
                        JR.declare "sqlStatement" "" (JR.invoke "toString_0" (JR.local "stringBuffer") []), 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGING" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.field "SQL_STATEMENT_LABEL" (JR.thisField "sqlStrings")) (JR.local "sqlStatement")), (JR.thisField "INIT_SQL"), (JR.thisField "METHOD_GET_ROW") ]) ]) identity, 
                        JR.declare "rset" "" (JR.invoke "executeSQLStatement_1" JR.this [ (JR.local "sqlStatement") ]), 
                        JR.declare "resultSetMetaData" "" (JR.invoke "getMetaData_0" (JR.local "rset") []), 
                        JR.while (JR.invoke "next_0" (JR.local "rset") []) (JR.run [ 
                            JR.exec (JR.setLocal "result" "" (JR.invoke "createHashMap_0" (JR.thisField "stdUtil") [])), 
                            JR.declare "columnCount" "I" (JR.invoke "getColumnCount_0" (JR.local "resultSetMetaData") []), 
                            JR.run [ JR.declare "index" "I" (JR.int 1), JR.for (JR.map2 JR.lessEquals (JR.local "index") (JR.local "columnCount")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72064 -> (JR.setLocal "index" "I" (JR.lit jwN72064))) JR.increment) ]) (JR.run [ 
                                JR.declare "columnName" "" (JR.invoke "getColumnName_1" (JR.local "resultSetMetaData") [ (JR.local "index") ]), 
                                JR.declare "field" "" (JR.invoke "getString_1" (JR.local "rset") [ (JR.local "columnName") ]), 
                                JR.exec (JR.invoke "put_2" (JR.local "result") [ (JR.local "columnName"), (JR.local "field") ]) ]) ], 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGING" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.thisField "ROW_VALUE_LABEL") (JR.invoke "toString_0" (JR.local "result") [])), (JR.thisField "INIT_SQL"), (JR.thisField "METHOD_GET_ROW") ]) ]) identity, 
                            JR.return (JR.local "result") ]), 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGINGERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.thisField "NO_RESULTS_IN_RESULT_SET"), (JR.thisField "INIT_SQL"), (JR.thisField "METHOD_GET_ROW") ]) ]) identity, 
                        JR.return JR.null ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGINGERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.concat (JR.thisField "FAILED_SQL_STATEMENT") (JR.local "stringBuffer")), (JR.thisField "INIT_SQL"), (JR.thisField "METHOD_GET_ROW"), (JR.local "e") ]) ]) identity, 
                        JR.return JR.null ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_updateWhere_3 : JR.Method
jm_updateWhere_3 jheap jthis jargs =
    JR.method [ ( "key", "" ), ( "value", "" ), ( "updatedKeyValuePairs", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "UPDATE" (JR.thisField "sqlStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "tableName") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SET" (JR.thisField "sqlStrings")) ]), 
                    JR.try (JR.run [ 
                        JR.declare "columnArray" "" (JR.invoke "toArray_0" (JR.invoke "keySet_0" (JR.local "updatedKeyValuePairs") []) []), 
                        JR.declare "size" "I" (JR.alength (JR.local "columnArray")), 
                        JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN73723 -> (JR.setLocal "i" "I" (JR.lit jwN73723))) JR.increment) ]) (JR.run [ 
                            JR.declare "columnName" "" (JR.invoke "toString_0" (JR.aget (JR.local "columnArray") (JR.local "i")) []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.thisField "commonSeps")) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "columnName") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "EQUAL_QUOTE") ]), 
                            JR.declare "columnValue" "" (JR.invoke "get_1" (JR.local "updatedKeyValuePairs") [ (JR.local "columnName") ]), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "columnValue") JR.null) (JR.run [ 
                                JR.exec (JR.setLocal "columnValue" "" (JR.field "EMPTY_STRING" (JR.thisField "stringUtil"))) ]) identity, 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getValue_1" JR.this [ (JR.local "columnValue") ]) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "CLOSE_QUOTE" (JR.thisField "sqlStrings")) ]), 
                            JR.ifElse (JR.map2 JR.less (JR.local "i") (JR.map2 JR.sub (JR.local "size") (JR.int 1))) (JR.run [ 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COMMA" (JR.thisField "commonSeps")) ]) ]) identity ]) ], 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "WHERE" (JR.thisField "sqlStrings")) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "key") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "EQUAL_QUOTE" (JR.thisField "sqlStrings")) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getValue_1" JR.this [ (JR.local "value") ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "CLOSE_QUOTE" (JR.thisField "sqlStrings")) ]), 
                        JR.declare "sqlStatement" "" (JR.invoke "toString_0" (JR.local "stringBuffer") []), 
                        JR.exec (JR.invoke "executeSQLStatement_1" JR.this [ (JR.local "sqlStatement") ]), 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGING" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.thisField "SUCCESS_SQL_STATEMENT") (JR.local "sqlStatement")), (JR.thisField "INIT_SQL"), (JR.thisField "METHOD_UPDATE_WHERE") ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGINGERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.concat (JR.thisField "FAILED_SQL_STATEMENT") (JR.local "stringBuffer")), (JR.thisField "INIT_SQL"), (JR.thisField "METHOD_UPDATE_WHERE"), (JR.local "e") ]) ]) identity ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_insert_1 : JR.Method
jm_insert_1 jheap jthis jargs =
    JR.method [ ( "values", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "INSERT_INTO" (JR.thisField "sqlStrings")) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "tableName") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "VALUES" (JR.thisField "sqlStrings")) ]), 
                    JR.try (JR.run [ 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "values") []), 
                        JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.map2 JR.sub (JR.local "size") (JR.int 1))) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN75057 -> (JR.setLocal "i" "I" (JR.lit jwN75057))) JR.increment) ]) (JR.run [ 
                            JR.declare "value" "" (JR.invoke "getValue_1" JR.this [ (JR.invoke "get_1" (JR.local "values") [ (JR.local "i") ]) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "value") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SINGLE_QUOTE_COMMA_SEP" (JR.thisField "sqlStrings")) ]) ]) ], 
                        JR.declare "value" "" (JR.invoke "getValue_1" JR.this [ (JR.invoke "get_1" (JR.local "values") [ (JR.map2 JR.sub (JR.invoke "size_0" (JR.local "values") []) (JR.int 1)) ]) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "value") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "INSERT_END") ]), 
                        JR.declare "sqlStatement" "" (JR.invoke "toString_0" (JR.local "stringBuffer") []), 
                        JR.exec (JR.invoke "executeSQLStatement_1" JR.this [ (JR.local "sqlStatement") ]), 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGING" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.thisField "SUCCESS_SQL_STATEMENT") (JR.local "sqlStatement")), (JR.thisField "INIT_SQL"), (JR.thisField "INSERT") ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGINGERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.concat (JR.thisField "FAILED_SQL_STATEMENT") (JR.invoke "toString_0" (JR.local "stringBuffer") [])), (JR.thisField "INIT_SQL"), (JR.thisField "INSERT"), (JR.local "e") ]) ]) identity ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getValue_1 : JR.Method
jm_getValue_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isEmpty_1" (JR.callStatic StringValidationUtil.jm_getInstance_0 []) [ (JR.local "value") ]) (JR.run [ 
                        JR.return (JR.field "EMPTY_STRING" (JR.thisField "stringUtil")) ]) (JR.run [ 
                        JR.return (JR.local "value") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_executeSQLStatement_1 : JR.Method
jm_executeSQLStatement_1 jheap jthis jargs =
    JR.method [ ( "statement", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.thisField "conn") JR.null) (JR.run [ 
                            JR.exec (JR.invoke "initialize_0" JR.this []) ]) identity, 
                        JR.declare "stmt" "" (JR.invoke "createStatement_0" (JR.thisField "conn") []), 
                        JR.exec (JR.invoke "execute_1" (JR.local "stmt") [ (JR.local "statement") ]), 
                        JR.declare "rset" "" (JR.invoke "getResultSet_0" (JR.local "stmt") []), 
                        JR.exec (JR.invoke "close_0" (JR.local "stmt") []), 
                        JR.return (JR.local "rset") ]) [ ( [ "SQLException" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGINGERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), (JR.thisField "INIT_SQL"), (JR.str "executeSQLStatement()"), (JR.local "e") ]) ]) identity, 
                        JR.throw (JR.local "e") ]) ), ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGINGERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), (JR.thisField "INIT_SQL"), (JR.str "executeSQLStatement()"), (JR.local "e") ]) ]) identity, 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_createConnection_0 : JR.Method
jm_createConnection_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.thisField "useridAndPassword") (JR.bool True)) (JR.run [ 
                            JR.exec (JR.setField "conn" "" JR.this (JR.callStatic (JR.namedMethod "DriverManager.jm_getConnection_3") [ (JR.invoke "getUrl_0" (JR.thisField "databaseConnectionInfoInterface") []), (JR.thisField "userid"), (JR.thisField "password") ])) ]) (JR.run [ 
                            JR.exec (JR.setField "conn" "" JR.this (JR.callStatic (JR.namedMethod "DriverManager.jm_getConnection_1") [ (JR.invoke "getUrl_0" (JR.thisField "databaseConnectionInfoInterface") []) ])) ]) ]) [ ( [ "SQLException" ], "se", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), (JR.thisField "INIT_SQL"), (JR.str "createConnection()"), (JR.local "se") ]), 
                        JR.throw (JR.local "se") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_initialize_0 : JR.Method
jm_initialize_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.try (JR.run [ 
                            JR.declare "jdbcDriver" "" (JR.invoke "getJdbcDriver_0" (JR.thisField "databaseConnectionInfoInterface") []), 
                            JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "Loading DbConnnectionInfo: ") ]) [ (JR.invoke "getName_0" (JR.getClass (JR.thisField "databaseConnectionInfoInterface")) []) ]) [ (JR.str " Driver: ") ]) [ (JR.local "jdbcDriver") ]) []), (JR.thisField "INIT_SQL"), (JR.str "initialize()") ]), 
                            JR.exec (JR.invoke "newInstance_0" (JR.callStatic (JR.namedMethod "Class.jm_forName_1") [ (JR.local "jdbcDriver") ]) []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGINGERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.concat (JR.str "LoadDriver Failed: ") (JR.invoke "getJdbcDriver_0" (JR.thisField "databaseConnectionInfoInterface") [])), (JR.thisField "INIT_SQL"), (JR.str "initialize()"), (JR.local "e") ]) ]) identity, 
                            JR.throw (JR.local "e") ]) ) ] identity, 
                        JR.ifElse (JR.and (JR.map2 JR.equals (JR.thisField "userid") JR.null) (JR.map2 JR.equals (JR.thisField "password") JR.null)) (JR.run [ 
                            JR.exec (JR.setField "useridAndPassword" "Z" JR.this (JR.bool True)) ]) identity, 
                        JR.exec (JR.invoke "createConnection_0" JR.this []) ]) [ ( [ "Exception" ], "se", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "SQLLOGGINGERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), (JR.thisField "INIT_SQL"), (JR.str "initialize()"), (JR.local "se") ]) ]) identity, 
                        JR.throw (JR.local "se") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getDatabaseConnectionInfoInterface_0 : JR.Method
jm_getDatabaseConnectionInfoInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "databaseConnectionInfoInterface") ])
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

