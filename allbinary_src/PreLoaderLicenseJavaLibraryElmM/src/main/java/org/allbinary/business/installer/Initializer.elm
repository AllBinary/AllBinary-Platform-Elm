module Org.Allbinary.Business.Installer.Initializer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.installer
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Business.Init.Db.HistoryDbInitInfo as HistoryDbInitInfo
import Org.Allbinary.Business.Installer.InitializerData as InitializerData
import Org.Allbinary.Business.Init.Db.InventoryDbInitInfo as InventoryDbInitInfo
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Business.Init.Db.LogDbInitInfo as LogDbInitInfo
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Business.Init.Db.StaticPagesDbInitInfo as StaticPagesDbInitInfo
import Org.Allbinary.Logic.StdUtil as StdUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil
import Org.Allbinary.Business.Init.Db.UserDbInitInfo as UserDbInitInfo


jclass : String
jclass =
    "Initializer"


jchain : List String
jchain =
    [ "Initializer" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "userJdbcDriver", JR.defaultOf "" ), ( "userName", JR.defaultOf "" ), ( "userUserName", JR.defaultOf "" ), ( "userPassword", JR.defaultOf "" ), ( "userSchema", JR.defaultOf "" ), ( "userServer", JR.defaultOf "" ), ( "userPort", JR.defaultOf "" ), ( "historyJdbcDriver", JR.defaultOf "" ), ( "historyName", JR.defaultOf "" ), ( "historyUserName", JR.defaultOf "" ), ( "historyPassword", JR.defaultOf "" ), ( "historySchema", JR.defaultOf "" ), ( "historyServer", JR.defaultOf "" ), ( "historyPort", JR.defaultOf "" ), ( "logJdbcDriver", JR.defaultOf "" ), ( "logName", JR.defaultOf "" ), ( "logUserName", JR.defaultOf "" ), ( "logPassword", JR.defaultOf "" ), ( "logSchema", JR.defaultOf "" ), ( "logServer", JR.defaultOf "" ), ( "logPort", JR.defaultOf "" ), ( "inventoryJdbcDriver", JR.defaultOf "" ), ( "inventoryName", JR.defaultOf "" ), ( "inventoryUserName", JR.defaultOf "" ), ( "inventoryPassword", JR.defaultOf "" ), ( "inventorySchema", JR.defaultOf "" ), ( "inventoryServer", JR.defaultOf "" ), ( "inventoryPort", JR.defaultOf "" ), ( "staticPagesJdbcDriver", JR.defaultOf "" ), ( "staticPagesName", JR.defaultOf "" ), ( "staticPagesUserName", JR.defaultOf "" ), ( "staticPagesPassword", JR.defaultOf "" ), ( "staticPagesSchema", JR.defaultOf "" ), ( "staticPagesServer", JR.defaultOf "" ), ( "staticPagesPort", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getFormData_1", jm_getFormData_1 )
        , ( "isJdbcDriverValid_1", jm_isJdbcDriverValid_1 )
        , ( "isValid_0", jm_isValid_0 )
        , ( "getJdbcDriverValidationInfo_1", jm_getJdbcDriverValidationInfo_1 )
        , ( "getJdbcDriverSolutionInfo_0", jm_getJdbcDriverSolutionInfo_0 )
        , ( "getInvalidInfo_0", jm_getInvalidInfo_0 )
        , ( "set_0", jm_set_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Initializer"
        [ ( "jm_getFormData_1", jm_getFormData_1 ), ( "jm_isJdbcDriverValid_1", jm_isJdbcDriverValid_1 ), ( "jm_isValid_0", jm_isValid_0 ), ( "jm_getJdbcDriverValidationInfo_1", jm_getJdbcDriverValidationInfo_1 ), ( "jm_getJdbcDriverSolutionInfo_0", jm_getJdbcDriverSolutionInfo_0 ), ( "jm_getInvalidInfo_0", jm_getInvalidInfo_0 ), ( "jm_set_0", jm_set_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_MAXDB", jstatic_MAXDB ), ( "jstatic_MAX", jstatic_MAX ), ( "jstatic_MIN", jstatic_MIN ), ( "jstatic_MINPASSWORD", jstatic_MINPASSWORD ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_MAXDB : JR.M
jstatic_MAXDB s =
    JR.static "Initializer" jclinit "MAXDB"
        (JR.int 30)
        s


jstatic_MAX : JR.M
jstatic_MAX s =
    JR.static "Initializer" jclinit "MAX"
        (JR.int 16)
        s


jstatic_MIN : JR.M
jstatic_MIN s =
    JR.static "Initializer" jclinit "MIN"
        (JR.int 4)
        s


jstatic_MINPASSWORD : JR.M
jstatic_MINPASSWORD s =
    JR.static "Initializer" jclinit "MINPASSWORD"
        (JR.int 0)
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "map", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.declare "hashMap" "" (JR.invoke "createHashMap_0" (JR.callStatic StdUtil.jm_getInstance_0 []) []), 
                    JR.declare "keys" "" (JR.invoke "keySet_0" (JR.local "map") []), 
                    JR.declare "keyArray" "" (JR.invoke "toArray_0" (JR.local "keys") []), 
                    JR.declare "size" "I" (JR.alength (JR.local "keyArray")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN70704 -> (JR.setLocal "index" "I" (JR.lit jwN70704))) JR.increment) ]) (JR.run [ 
                        JR.declare "key" "" (JR.aget (JR.local "keyArray") (JR.local "index")), 
                        JR.declare "values" "" (JR.invoke "get_1" (JR.local "map") [ (JR.local "key") ]), 
                        JR.exec (JR.invoke "put_2" (JR.local "hashMap") [ (JR.withState JR.newString [ (JR.local "key") ]), (JR.withState JR.newString [ (JR.aget (JR.local "values") (JR.int 0)) ]) ]), 
                        JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "key: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "key") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Value: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.aget (JR.local "values") (JR.int 0)) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "getFormData()") ]) ]) ], 
                    JR.exec (JR.invoke "getFormData_1" JR.this [ (JR.local "hashMap") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getFormData_1 : JR.Method
jm_getFormData_1 jheap jthis jargs =
    JR.method [ ( "hashMap", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "initializerData" "" (JR.callStatic InitializerData.jm_getInstance_0 []), 
                        JR.exec (JR.setField "userJdbcDriver" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "CUSTOMERJDBCDRIVER" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "userName" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "CUSTOMERNAME" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "userUserName" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "CUSTOMERUSERNAME" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "userPassword" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "CUSTOMERPASSWORD" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "userSchema" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "CUSTOMERSCHEMA" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "userServer" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "CUSTOMERSERVER" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "userPort" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "CUSTOMERPORT" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "historyJdbcDriver" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "HISTORYJDBCDRIVER" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "historyName" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "HISTORYNAME" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "historyUserName" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "HISTORYUSERNAME" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "historyPassword" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "HISTORYPASSWORD" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "historySchema" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "HISTORYSCHEMA" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "historyServer" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "HISTORYSERVER" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "historyPort" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "HISTORYPORT" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "logJdbcDriver" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "LOGJDBCDRIVER" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "logName" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "LOGNAME" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "logUserName" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "LOGUSERNAME" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "logPassword" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "LOGPASSWORD" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "logSchema" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "LOGSCHEMA" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "logServer" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "LOGSERVER" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "logPort" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "LOGPORT" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "inventoryJdbcDriver" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "INVENTORYJDBCDRIVER" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "inventoryName" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "INVENTORYNAME" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "inventoryUserName" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "INVENTORYUSERNAME" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "inventoryPassword" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "INVENTORYPASSWORD" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "inventorySchema" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "INVENTORYSCHEMA" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "inventoryServer" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "INVENTORYSERVER" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "inventoryPort" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "INVENTORYPORT" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "staticPagesJdbcDriver" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "STATICPAGESJDBCDRIVER" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "staticPagesName" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "STATICPAGESNAME" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "staticPagesUserName" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "STATICPAGESUSERNAME" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "staticPagesPassword" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "STATICPAGESPASSWORD" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "staticPagesSchema" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "STATICPAGESSCHEMA" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "staticPagesServer" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "STATICPAGESSERVER" (JR.local "initializerData")) ])), 
                        JR.exec (JR.setField "staticPagesPort" "" JR.this (JR.invoke "get_1" (JR.local "hashMap") [ (JR.field "STATICPAGESPORT" (JR.local "initializerData")) ])) ]) [ ( [ "Exception" ], "e", (JR.run [ 
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
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "userJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "userName"), jstatic_MIN, jstatic_MAXDB ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "userUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "userPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "historyJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "historyName"), jstatic_MIN, jstatic_MAXDB ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "historyUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "historyPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "logJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "logName"), jstatic_MIN, jstatic_MAXDB ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "logUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "logPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "inventoryJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "inventoryName"), jstatic_MIN, jstatic_MAXDB ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "inventoryUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "inventoryPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "staticPagesJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "staticPagesName"), jstatic_MIN, jstatic_MAXDB ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "staticPagesUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.setLocal "isValid" "Z" (JR.bool False)) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "staticPagesPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
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


jm_getJdbcDriverSolutionInfo_0 : JR.Method
jm_getJdbcDriverSolutionInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "1. A JDBC driver you specified is not in your classpath.<br/>") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "2. The JDBC driver you specified does not exit.<br/>") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Solution: Get a JDBC driver. <br/>") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "3. The JDBC driver you specified is not valid.<br/>") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Solution: Use a valid JDBC driver.<p/>") ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getInvalidInfo_0 : JR.Method
jm_getInvalidInfo_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "isJdbcDriversValid" "Z" (JR.bool True), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "userJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isJdbcDriversValid" "Z" (JR.bool False)), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getJdbcDriverValidationInfo_1" JR.this [ (JR.thisField "userJdbcDriver") ]) ]) ]) identity, 
                    JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "userName"), jstatic_MIN, jstatic_MAXDB ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "User db name should be < ") jstatic_MAXDB) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "userUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "User db username should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "userPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "User DB password should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MINPASSWORD) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "historyJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isJdbcDriversValid" "Z" (JR.bool False)), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getJdbcDriverValidationInfo_1" JR.this [ (JR.thisField "historyJdbcDriver") ]) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "historyName"), jstatic_MIN, jstatic_MAXDB ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "History db should be < ") jstatic_MAXDB) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "historyUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "History db username should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "historyPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "History db password should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MINPASSWORD) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "logJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isJdbcDriversValid" "Z" (JR.bool False)), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getJdbcDriverValidationInfo_1" JR.this [ (JR.thisField "logJdbcDriver") ]) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "logName"), jstatic_MIN, jstatic_MAXDB ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Log db should be < ") jstatic_MAXDB) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "logUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Log db username should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "logPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Log db password should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MINPASSWORD) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "inventoryJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isJdbcDriversValid" "Z" (JR.bool False)), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getJdbcDriverValidationInfo_1" JR.this [ (JR.thisField "inventoryJdbcDriver") ]) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "inventoryName"), jstatic_MIN, jstatic_MAXDB ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Inventory db should be < ") jstatic_MAXDB) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "inventoryUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Inventory db username should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "inventoryPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Inventory DB password should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MINPASSWORD) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isJdbcDriverValid_1" JR.this [ (JR.thisField "staticPagesJdbcDriver") ])) (JR.run [ 
                        JR.exec (JR.setLocal "isJdbcDriversValid" "Z" (JR.bool False)), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getJdbcDriverValidationInfo_1" JR.this [ (JR.thisField "staticPagesJdbcDriver") ]) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "staticPagesName"), jstatic_MIN, jstatic_MAXDB ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Static Pages db should be < ") jstatic_MAXDB) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "staticPagesUserName"), jstatic_MIN, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Static Pages db username should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MIN) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isValidNotRequired_3" (JR.local "stringValidationUtil") [ (JR.thisField "staticPagesPassword"), jstatic_MINPASSWORD, jstatic_MAX ])) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.concat (JR.concat (JR.concat (JR.concat (JR.str "Static Pages DB password should be < ") jstatic_MAX) (JR.str " and > ")) jstatic_MINPASSWORD) (JR.str " characters in length.<br />")) ]) ]) identity, 
                    JR.ifElse (JR.map JR.not_ (JR.local "isJdbcDriversValid")) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getJdbcDriverSolutionInfo_0" JR.this []) ]) ]) identity, 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
        (jregister jheap)
        jthis
        jargs


jm_set_0 : JR.Method
jm_set_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Creating DB connection files"), JR.this, (JR.str "set()") ]), 
                    JR.declare "userDbInitInfo" "" (JR.new UserDbInitInfo.jnew_1 [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "setJdbcDriver_1" (JR.local "userDbInitInfo") [ (JR.thisField "userJdbcDriver") ]), 
                    JR.exec (JR.invoke "setName_1" (JR.local "userDbInitInfo") [ (JR.thisField "userName") ]), 
                    JR.exec (JR.invoke "setUserName_1" (JR.local "userDbInitInfo") [ (JR.thisField "userUserName") ]), 
                    JR.exec (JR.invoke "setPassword_1" (JR.local "userDbInitInfo") [ (JR.thisField "userPassword") ]), 
                    JR.exec (JR.invoke "setSchema_1" (JR.local "userDbInitInfo") [ (JR.thisField "userSchema") ]), 
                    JR.exec (JR.invoke "setServer_1" (JR.local "userDbInitInfo") [ (JR.thisField "userServer") ]), 
                    JR.exec (JR.invoke "setPort_1" (JR.local "userDbInitInfo") [ (JR.thisField "userPort") ]), 
                    JR.exec (JR.invoke "setHasRead_1" (JR.local "userDbInitInfo") [ (JR.bool True) ]), 
                    JR.exec (JR.invoke "write_0" (JR.local "userDbInitInfo") []), 
                    JR.declare "historyDbInitInfo" "" (JR.new HistoryDbInitInfo.jnew_1 [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "setJdbcDriver_1" (JR.local "historyDbInitInfo") [ (JR.thisField "historyJdbcDriver") ]), 
                    JR.exec (JR.invoke "setName_1" (JR.local "historyDbInitInfo") [ (JR.thisField "historyName") ]), 
                    JR.exec (JR.invoke "setUserName_1" (JR.local "historyDbInitInfo") [ (JR.thisField "historyUserName") ]), 
                    JR.exec (JR.invoke "setPassword_1" (JR.local "historyDbInitInfo") [ (JR.thisField "historyPassword") ]), 
                    JR.exec (JR.invoke "setSchema_1" (JR.local "historyDbInitInfo") [ (JR.thisField "historySchema") ]), 
                    JR.exec (JR.invoke "setServer_1" (JR.local "historyDbInitInfo") [ (JR.thisField "historyServer") ]), 
                    JR.exec (JR.invoke "setPort_1" (JR.local "historyDbInitInfo") [ (JR.thisField "historyPort") ]), 
                    JR.exec (JR.invoke "setHasRead_1" (JR.local "historyDbInitInfo") [ (JR.bool True) ]), 
                    JR.exec (JR.invoke "write_0" (JR.local "historyDbInitInfo") []), 
                    JR.declare "logDbInitInfo" "" (JR.new LogDbInitInfo.jnew_1 [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "setJdbcDriver_1" (JR.local "logDbInitInfo") [ (JR.thisField "logJdbcDriver") ]), 
                    JR.exec (JR.invoke "setName_1" (JR.local "logDbInitInfo") [ (JR.thisField "logName") ]), 
                    JR.exec (JR.invoke "setUserName_1" (JR.local "logDbInitInfo") [ (JR.thisField "logUserName") ]), 
                    JR.exec (JR.invoke "setPassword_1" (JR.local "logDbInitInfo") [ (JR.thisField "logPassword") ]), 
                    JR.exec (JR.invoke "setSchema_1" (JR.local "logDbInitInfo") [ (JR.thisField "logSchema") ]), 
                    JR.exec (JR.invoke "setServer_1" (JR.local "logDbInitInfo") [ (JR.thisField "logServer") ]), 
                    JR.exec (JR.invoke "setPort_1" (JR.local "logDbInitInfo") [ (JR.thisField "logPort") ]), 
                    JR.exec (JR.invoke "setHasRead_1" (JR.local "logDbInitInfo") [ (JR.bool True) ]), 
                    JR.exec (JR.invoke "write_0" (JR.local "logDbInitInfo") []), 
                    JR.declare "staticPagesDbInitInfo" "" (JR.new StaticPagesDbInitInfo.jnew_1 [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "setJdbcDriver_1" (JR.local "staticPagesDbInitInfo") [ (JR.thisField "staticPagesJdbcDriver") ]), 
                    JR.exec (JR.invoke "setName_1" (JR.local "staticPagesDbInitInfo") [ (JR.thisField "staticPagesName") ]), 
                    JR.exec (JR.invoke "setUserName_1" (JR.local "staticPagesDbInitInfo") [ (JR.thisField "staticPagesUserName") ]), 
                    JR.exec (JR.invoke "setPassword_1" (JR.local "staticPagesDbInitInfo") [ (JR.thisField "staticPagesPassword") ]), 
                    JR.exec (JR.invoke "setSchema_1" (JR.local "staticPagesDbInitInfo") [ (JR.thisField "staticPagesSchema") ]), 
                    JR.exec (JR.invoke "setServer_1" (JR.local "staticPagesDbInitInfo") [ (JR.thisField "staticPagesServer") ]), 
                    JR.exec (JR.invoke "setPort_1" (JR.local "staticPagesDbInitInfo") [ (JR.thisField "staticPagesPort") ]), 
                    JR.exec (JR.invoke "setHasRead_1" (JR.local "staticPagesDbInitInfo") [ (JR.bool True) ]), 
                    JR.exec (JR.invoke "write_0" (JR.local "staticPagesDbInitInfo") []), 
                    JR.declare "inventoryDbInitInfo" "" (JR.new InventoryDbInitInfo.jnew_1 [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "setJdbcDriver_1" (JR.local "inventoryDbInitInfo") [ (JR.thisField "inventoryJdbcDriver") ]), 
                    JR.exec (JR.invoke "setName_1" (JR.local "inventoryDbInitInfo") [ (JR.thisField "inventoryName") ]), 
                    JR.exec (JR.invoke "setUserName_1" (JR.local "inventoryDbInitInfo") [ (JR.thisField "inventoryUserName") ]), 
                    JR.exec (JR.invoke "setPassword_1" (JR.local "inventoryDbInitInfo") [ (JR.thisField "inventoryPassword") ]), 
                    JR.exec (JR.invoke "setSchema_1" (JR.local "inventoryDbInitInfo") [ (JR.thisField "inventorySchema") ]), 
                    JR.exec (JR.invoke "setServer_1" (JR.local "inventoryDbInitInfo") [ (JR.thisField "inventoryServer") ]), 
                    JR.exec (JR.invoke "setPort_1" (JR.local "inventoryDbInitInfo") [ (JR.thisField "inventoryPort") ]), 
                    JR.exec (JR.invoke "setHasRead_1" (JR.local "inventoryDbInitInfo") [ (JR.bool True) ]), 
                    JR.exec (JR.invoke "write_0" (JR.local "inventoryDbInitInfo") []), 
                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Created DB connection files"), JR.this, (JR.str "set()") ]) ])
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

