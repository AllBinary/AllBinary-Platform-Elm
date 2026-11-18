module Org.Allbinary.Business.Installer.InitializerData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.installer
-}

import JR
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "InitializerData"


jchain : List String
jchain =
    [ "InitializerData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "DBUSER", JR.defaultOf "" ), ( "DBPASSWORD", JR.defaultOf "" ), ( "ADMINJDBCDRIVER", JR.defaultOf "" ), ( "ADMINSCHEMA", JR.defaultOf "" ), ( "ADMINSERVER", JR.defaultOf "" ), ( "ADMINPORT", JR.defaultOf "" ), ( "CUSTOMERJDBCDRIVER", JR.defaultOf "" ), ( "CUSTOMERNAME", JR.defaultOf "" ), ( "CUSTOMERUSERNAME", JR.defaultOf "" ), ( "CUSTOMERPASSWORD", JR.defaultOf "" ), ( "CUSTOMERSCHEMA", JR.defaultOf "" ), ( "CUSTOMERSERVER", JR.defaultOf "" ), ( "CUSTOMERPORT", JR.defaultOf "" ), ( "HISTORYJDBCDRIVER", JR.defaultOf "" ), ( "HISTORYNAME", JR.defaultOf "" ), ( "HISTORYUSERNAME", JR.defaultOf "" ), ( "HISTORYPASSWORD", JR.defaultOf "" ), ( "HISTORYSCHEMA", JR.defaultOf "" ), ( "HISTORYSERVER", JR.defaultOf "" ), ( "HISTORYPORT", JR.defaultOf "" ), ( "LOGJDBCDRIVER", JR.defaultOf "" ), ( "LOGNAME", JR.defaultOf "" ), ( "LOGUSERNAME", JR.defaultOf "" ), ( "LOGPASSWORD", JR.defaultOf "" ), ( "LOGSCHEMA", JR.defaultOf "" ), ( "LOGSERVER", JR.defaultOf "" ), ( "LOGPORT", JR.defaultOf "" ), ( "INVENTORYJDBCDRIVER", JR.defaultOf "" ), ( "INVENTORYNAME", JR.defaultOf "" ), ( "INVENTORYUSERNAME", JR.defaultOf "" ), ( "INVENTORYPASSWORD", JR.defaultOf "" ), ( "INVENTORYSCHEMA", JR.defaultOf "" ), ( "INVENTORYSERVER", JR.defaultOf "" ), ( "INVENTORYPORT", JR.defaultOf "" ), ( "STATICPAGESJDBCDRIVER", JR.defaultOf "" ), ( "STATICPAGESNAME", JR.defaultOf "" ), ( "STATICPAGESUSERNAME", JR.defaultOf "" ), ( "STATICPAGESPASSWORD", JR.defaultOf "" ), ( "STATICPAGESSCHEMA", JR.defaultOf "" ), ( "STATICPAGESSERVER", JR.defaultOf "" ), ( "STATICPAGESPORT", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getJdbcDriverSolutionInfo_0", jm_getJdbcDriverSolutionInfo_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitializerData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getJdbcDriverSolutionInfo_0", jm_getJdbcDriverSolutionInfo_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InitializerData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "DBUSER" "" JR.this (JR.str "DBUSER")),
                JR.exec (JR.setField "DBPASSWORD" "" JR.this (JR.str "DBPASSWORD")),
                JR.exec (JR.setField "ADMINJDBCDRIVER" "" JR.this (JR.str "ADMIN_JDBCDRIVER")),
                JR.exec (JR.setField "ADMINSCHEMA" "" JR.this (JR.str "ADMINSCHEMA")),
                JR.exec (JR.setField "ADMINSERVER" "" JR.this (JR.str "ADMINSERVER")),
                JR.exec (JR.setField "ADMINPORT" "" JR.this (JR.str "ADMINPORT")),
                JR.exec (JR.setField "CUSTOMERJDBCDRIVER" "" JR.this (JR.str "CUSTOMER_JDBCDRIVER")),
                JR.exec (JR.setField "CUSTOMERNAME" "" JR.this (JR.str "CUSTOMERNAME")),
                JR.exec (JR.setField "CUSTOMERUSERNAME" "" JR.this (JR.str "CUSTOMERUSERNAME")),
                JR.exec (JR.setField "CUSTOMERPASSWORD" "" JR.this (JR.str "CUSTOMERPASSWORD")),
                JR.exec (JR.setField "CUSTOMERSCHEMA" "" JR.this (JR.str "CUSTOMERSCHEMA")),
                JR.exec (JR.setField "CUSTOMERSERVER" "" JR.this (JR.str "CUSTOMERSERVER")),
                JR.exec (JR.setField "CUSTOMERPORT" "" JR.this (JR.str "CUSTOMERPORT")),
                JR.exec (JR.setField "HISTORYJDBCDRIVER" "" JR.this (JR.str "HISTORY_JDBCDRIVER")),
                JR.exec (JR.setField "HISTORYNAME" "" JR.this (JR.str "HISTORYNAME")),
                JR.exec (JR.setField "HISTORYUSERNAME" "" JR.this (JR.str "HISTORYUSERNAME")),
                JR.exec (JR.setField "HISTORYPASSWORD" "" JR.this (JR.str "HISTORYPASSWORD")),
                JR.exec (JR.setField "HISTORYSCHEMA" "" JR.this (JR.str "HISTORYSCHEMA")),
                JR.exec (JR.setField "HISTORYSERVER" "" JR.this (JR.str "HISTORYSERVER")),
                JR.exec (JR.setField "HISTORYPORT" "" JR.this (JR.str "HISTORYPORT")),
                JR.exec (JR.setField "LOGJDBCDRIVER" "" JR.this (JR.str "LOG_JDBCDRIVER")),
                JR.exec (JR.setField "LOGNAME" "" JR.this (JR.str "LOGNAME")),
                JR.exec (JR.setField "LOGUSERNAME" "" JR.this (JR.str "LOGUSERNAME")),
                JR.exec (JR.setField "LOGPASSWORD" "" JR.this (JR.str "LOGPASSWORD")),
                JR.exec (JR.setField "LOGSCHEMA" "" JR.this (JR.str "LOGSCHEMA")),
                JR.exec (JR.setField "LOGSERVER" "" JR.this (JR.str "LOGSERVER")),
                JR.exec (JR.setField "LOGPORT" "" JR.this (JR.str "LOGPORT")),
                JR.exec (JR.setField "INVENTORYJDBCDRIVER" "" JR.this (JR.str "INVENTORY_JDBCDRIVER")),
                JR.exec (JR.setField "INVENTORYNAME" "" JR.this (JR.str "INVENTORYNAME")),
                JR.exec (JR.setField "INVENTORYUSERNAME" "" JR.this (JR.str "INVENTORYUSERNAME")),
                JR.exec (JR.setField "INVENTORYPASSWORD" "" JR.this (JR.str "INVENTORYPASSWORD")),
                JR.exec (JR.setField "INVENTORYSCHEMA" "" JR.this (JR.str "INVENTORYSCHEMA")),
                JR.exec (JR.setField "INVENTORYSERVER" "" JR.this (JR.str "INVENTORYSERVER")),
                JR.exec (JR.setField "INVENTORYPORT" "" JR.this (JR.str "INVENTORYPORT")),
                JR.exec (JR.setField "STATICPAGESJDBCDRIVER" "" JR.this (JR.str "STATICPAGES_JDBCDRIVER")),
                JR.exec (JR.setField "STATICPAGESNAME" "" JR.this (JR.str "STATICPAGESNAME")),
                JR.exec (JR.setField "STATICPAGESUSERNAME" "" JR.this (JR.str "STATICPAGESUSERNAME")),
                JR.exec (JR.setField "STATICPAGESPASSWORD" "" JR.this (JR.str "STATICPAGESPASSWORD")),
                JR.exec (JR.setField "STATICPAGESSCHEMA" "" JR.this (JR.str "STATICPAGESSCHEMA")),
                JR.exec (JR.setField "STATICPAGESSERVER" "" JR.this (JR.str "STATICPAGESSERVER")),
                JR.exec (JR.setField "STATICPAGESPORT" "" JR.this (JR.str "STATICPAGESPORT")),
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
                    JR.return jstatic_instance ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

