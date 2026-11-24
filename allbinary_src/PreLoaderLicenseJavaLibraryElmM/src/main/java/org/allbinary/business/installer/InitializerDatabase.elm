module Org.Allbinary.Business.Installer.InitializerDatabase exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.installer
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Business.Init.Db.DbConnectionInfo as DbConnectionInfo
import Org.Allbinary.Business.Installer.DynamicInitDb as DynamicInitDb
import Org.Allbinary.Business.Installer.InitializerData as InitializerData
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil


jclass : String
jclass =
    "InitializerDatabase"


jchain : List String
jchain =
    [ "InitializerDatabase" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "adminDbUserName", JR.defaultOf "" ), ( "adminDbPassword", JR.defaultOf "" ), ( "adminJdbcDriver", JR.defaultOf "" ), ( "adminSchema", JR.defaultOf "" ), ( "adminServer", JR.defaultOf "" ), ( "adminPort", JR.defaultOf "" ), ( "initDb", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getFormData_2", jm_getFormData_2 )
        , ( "isJdbcDriverValid_1", jm_isJdbcDriverValid_1 )
        , ( "isValid_0", jm_isValid_0 )
        , ( "getJdbcDriverValidationInfo_1", jm_getJdbcDriverValidationInfo_1 )
        , ( "getInvalidInfo_0", jm_getInvalidInfo_0 )
        , ( "createUsers_0", jm_createUsers_0 )
        , ( "createDatabases_0", jm_createDatabases_0 )
        , ( "createTables_0", jm_createTables_0 )
        , ( "getAdminDbUserName_0", jm_getAdminDbUserName_0 )
        , ( "setAdminDbUserName_1", jm_setAdminDbUserName_1 )
        , ( "getAdminDbPassword_0", jm_getAdminDbPassword_0 )
        , ( "setAdminDbPassword_1", jm_setAdminDbPassword_1 )
        , ( "getAdminJdbcDriver_0", jm_getAdminJdbcDriver_0 )
        , ( "setAdminJdbcDriver_1", jm_setAdminJdbcDriver_1 )
        , ( "getAdminSchema_0", jm_getAdminSchema_0 )
        , ( "setAdminSchema_1", jm_setAdminSchema_1 )
        , ( "getAdminServer_0", jm_getAdminServer_0 )
        , ( "setAdminServer_1", jm_setAdminServer_1 )
        , ( "getAdminPort_0", jm_getAdminPort_0 )
        , ( "setAdminPort_1", jm_setAdminPort_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitializerDatabase"
        [ ( "jm_getFormData_2", jm_getFormData_2 ), ( "jm_isJdbcDriverValid_1", jm_isJdbcDriverValid_1 ), ( "jm_isValid_0", jm_isValid_0 ), ( "jm_getJdbcDriverValidationInfo_1", jm_getJdbcDriverValidationInfo_1 ), ( "jm_getInvalidInfo_0", jm_getInvalidInfo_0 ), ( "jm_createUsers_0", jm_createUsers_0 ), ( "jm_createDatabases_0", jm_createDatabases_0 ), ( "jm_createTables_0", jm_createTables_0 ), ( "jm_getAdminDbUserName_0", jm_getAdminDbUserName_0 ), ( "jm_setAdminDbUserName_1", jm_setAdminDbUserName_1 ), ( "jm_getAdminDbPassword_0", jm_getAdminDbPassword_0 ), ( "jm_setAdminDbPassword_1", jm_setAdminDbPassword_1 ), ( "jm_getAdminJdbcDriver_0", jm_getAdminJdbcDriver_0 ), ( "jm_setAdminJdbcDriver_1", jm_setAdminJdbcDriver_1 ), ( "jm_getAdminSchema_0", jm_getAdminSchema_0 ), ( "jm_setAdminSchema_1", jm_setAdminSchema_1 ), ( "jm_getAdminServer_0", jm_getAdminServer_0 ), ( "jm_setAdminServer_1", jm_setAdminServer_1 ), ( "jm_getAdminPort_0", jm_getAdminPort_0 ), ( "jm_setAdminPort_1", jm_setAdminPort_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_MAXDB", jstatic_MAXDB ), ( "jstatic_MAX", jstatic_MAX ), ( "jstatic_MIN", jstatic_MIN ), ( "jstatic_MINPASSWORD", jstatic_MINPASSWORD ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MAXDB : JR.M
jstatic_MAXDB s =
    JR.static "InitializerDatabase" jclinit "MAXDB"
        (JR.int 30)
        s


jstatic_MAX : JR.M
jstatic_MAX s =
    JR.static "InitializerDatabase" jclinit "MAX"
        (JR.int 16)
        s


jstatic_MIN : JR.M
jstatic_MIN s =
    JR.static "InitializerDatabase" jclinit "MIN"
        (JR.int 4)
        s


jstatic_MINPASSWORD : JR.M
jstatic_MINPASSWORD s =
    JR.static "InitializerDatabase" jclinit "MINPASSWORD"
        (JR.int 0)
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "map", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "hashMap" "" (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.declare "keys" "" (JR.invoke "keySet_0" (JR.local "map") []), 
                    JR.declare "keyArray" "" (JR.invoke "toArray_0" (JR.local "keys") []), 
                    JR.declare "size" "I" (JR.alength (JR.local "keyArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69847 -> (JR.setLocal "index" "I" (JR.lit jwN69847))) JR.increment) ]) (JR.run [ 
                        JR.declare "key" "" (JR.aget (JR.local "keyArray") (JR.local "index")), 
                        JR.declare "values" "" (JR.invoke "get_1" (JR.local "map") [ (JR.local "key") ]), 
                        JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.withState JR.newString [ (JR.local "key") ]), (JR.withState JR.newString [ (JR.aget (JR.local "values") (JR.int 0)) ]) ]), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "key: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "key") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Value: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.aget (JR.local "values") (JR.int 0)) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "getFormData()") ]) ]) ], 
                    JR.exec (JR.invoke "getFormData_2" JR.this [ (JR.local "abeClientInformation"), (JR.local "hashMap") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getFormData_2 : JR.Method
jm_getFormData_2 jheap jthis jargs =
    JR.method [ ( "abeClientInformation", "" ), ( "hashMap", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "initializerData" "" (JR.callStatic InitializerData.jm_getInstance_0 []), 
                        JR.exec (JR.invoke "setAdminDbUserName_1" JR.this [ (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "DBUSER" (JR.local "initializerData")) ]) ]), 
                        JR.exec (JR.invoke "setAdminDbPassword_1" JR.this [ (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "DBPASSWORD" (JR.local "initializerData")) ]) ]), 
                        JR.exec (JR.invoke "setAdminJdbcDriver_1" JR.this [ (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "ADMINJDBCDRIVER" (JR.local "initializerData")) ]) ]), 
                        JR.exec (JR.invoke "setAdminSchema_1" JR.this [ (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "ADMINSCHEMA" (JR.local "initializerData")) ]) ]), 
                        JR.exec (JR.invoke "setAdminServer_1" JR.this [ (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "ADMINSERVER" (JR.local "initializerData")) ]) ]), 
                        JR.exec (JR.invoke "setAdminPort_1" JR.this [ (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "ADMINPORT" (JR.local "initializerData")) ]) ]), 
                        JR.declare "dbConnectionInfo" "" (JR.new DbConnectionInfo.jnew_0 []), 
                        JR.declare "adminDbName" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                        JR.exec (JR.invoke "setJdbcDriver_1" (JR.local "dbConnectionInfo") [ (JR.invoke "getAdminJdbcDriver_0" JR.this []) ]), 
                        JR.exec (JR.invoke "setName_1" (JR.local "dbConnectionInfo") [ (JR.local "adminDbName") ]), 
                        JR.exec (JR.invoke "setUserName_1" (JR.local "dbConnectionInfo") [ (JR.invoke "getAdminDbUserName_0" JR.this []) ]), 
                        JR.exec (JR.invoke "setPassword_1" (JR.local "dbConnectionInfo") [ (JR.invoke "getAdminDbPassword_0" JR.this []) ]), 
                        JR.exec (JR.invoke "setSchema_1" (JR.local "dbConnectionInfo") [ (JR.invoke "getAdminSchema_0" JR.this []) ]), 
                        JR.exec (JR.invoke "setServer_1" (JR.local "dbConnectionInfo") [ (JR.invoke "getAdminServer_0" JR.this []) ]), 
                        JR.exec (JR.invoke "setPort_1" (JR.local "dbConnectionInfo") [ (JR.invoke "getAdminPort_0" JR.this []) ]), 
                        JR.exec (JR.setField "initDb" "" JR.this (JR.new DynamicInitDb.jnew_2 [ (JR.local "abeClientInformation"), (JR.local "dbConnectionInfo") ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Unable to get form data"), JR.this, (JR.str "getFormData()"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_isJdbcDriverValid_1 : JR.Method
jm_isJdbcDriverValid_1 jheap jthis jargs =
    JR.method [ ( "jdbcDriverClassPathString", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "newInstance_0" (JR.callStatic (JR.namedMethod "Class.jm_forName_1") [ (JR.local "jdbcDriverClassPathString") ]) []), 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.local "commonStrings")), JR.this, (JR.field "IS_VALID" (JR.local "commonStrings")), (JR.local "e") ]) ]) identity, 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_isValid_0 : JR.Method
jm_isValid_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.declare "isValid" "Z" (JR.bool True), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "adminJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "adminDbUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "adminDbPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.return (JR.local "isValid") ])
        (jregister jheap)
        jthis
        jargs


jm_getJdbcDriverValidationInfo_1 : JR.Method
jm_getJdbcDriverValidationInfo_1 jheap jthis jargs =
    JR.method [ ( "jdbcDriver", "" ) ] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "The JDBC driver (") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "jdbcDriver") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str ") you have provided is not valid.<br/>") ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getInvalidInfo_0 : JR.Method
jm_getInvalidInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "isValid" "Z" (JR.bool True), 
                    JR.declare "isJdbcDriversValid" "Z" (JR.bool True), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "adminJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isJdbcDriversValid" "Z" (JR.bool False)), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getJdbcDriverValidationInfo_1" JR.this [ (JR.invoke "getAdminJdbcDriver_0" JR.this []) ]) ]) ]) identity, 
                    JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "adminDbUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Admin username should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "adminDbPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Admin password should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MINPASSWORD) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.local "isJdbcDriversValid")) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getJdbcDriverSolutionInfo_0" (JR.callStatic InitializerData.jm_getInstance_0 []) []) ]) ]) identity, 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_createUsers_0 : JR.Method
jm_createUsers_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "addUsers_0" (JR.thisField "initDb") []), 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Unable to Create Users"), JR.this, (JR.str "createUsers()"), (JR.local "e") ]), 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_createDatabases_0 : JR.Method
jm_createDatabases_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "addDatabases_0" (JR.thisField "initDb") []), 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Unable to Create Databases"), JR.this, (JR.str "createDatabases()"), (JR.local "e") ]), 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_createTables_0 : JR.Method
jm_createTables_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "addTables_0" (JR.thisField "initDb") []), 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.str "Unable to Create Tables"), JR.this, (JR.str "createTables()"), (JR.local "e") ]), 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getAdminDbUserName_0 : JR.Method
jm_getAdminDbUserName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "adminDbUserName") ])
        (jregister jheap)
        jthis
        jargs


jm_setAdminDbUserName_1 : JR.Method
jm_setAdminDbUserName_1 jheap jthis jargs =
    JR.method [ ( "adminDbUserName", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "adminDbUserName" "" JR.this (JR.local "adminDbUserName")) ])
        (jregister jheap)
        jthis
        jargs


jm_getAdminDbPassword_0 : JR.Method
jm_getAdminDbPassword_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "adminDbPassword") ])
        (jregister jheap)
        jthis
        jargs


jm_setAdminDbPassword_1 : JR.Method
jm_setAdminDbPassword_1 jheap jthis jargs =
    JR.method [ ( "adminDbPassword", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "adminDbPassword" "" JR.this (JR.local "adminDbPassword")) ])
        (jregister jheap)
        jthis
        jargs


jm_getAdminJdbcDriver_0 : JR.Method
jm_getAdminJdbcDriver_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "adminJdbcDriver") ])
        (jregister jheap)
        jthis
        jargs


jm_setAdminJdbcDriver_1 : JR.Method
jm_setAdminJdbcDriver_1 jheap jthis jargs =
    JR.method [ ( "adminJdbcDriver", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "adminJdbcDriver" "" JR.this (JR.local "adminJdbcDriver")) ])
        (jregister jheap)
        jthis
        jargs


jm_getAdminSchema_0 : JR.Method
jm_getAdminSchema_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "adminSchema") ])
        (jregister jheap)
        jthis
        jargs


jm_setAdminSchema_1 : JR.Method
jm_setAdminSchema_1 jheap jthis jargs =
    JR.method [ ( "adminSchema", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "adminSchema" "" JR.this (JR.local "adminSchema")) ])
        (jregister jheap)
        jthis
        jargs


jm_getAdminServer_0 : JR.Method
jm_getAdminServer_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "adminServer") ])
        (jregister jheap)
        jthis
        jargs


jm_setAdminServer_1 : JR.Method
jm_setAdminServer_1 jheap jthis jargs =
    JR.method [ ( "adminServer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "adminServer" "" JR.this (JR.local "adminServer")) ])
        (jregister jheap)
        jthis
        jargs


jm_getAdminPort_0 : JR.Method
jm_getAdminPort_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "adminPort") ])
        (jregister jheap)
        jthis
        jargs


jm_setAdminPort_1 : JR.Method
jm_setAdminPort_1 jheap jthis jargs =
    JR.method [ ( "adminPort", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "adminPort" "" JR.this (JR.local "adminPort")) ])
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

