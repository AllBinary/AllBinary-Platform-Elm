module Org.Allbinary.Business.Installer.InitDb exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.installer
-}

import JR



jclass : String
jclass =
    "InitDb"


jchain : List String
jchain =
    [ "InitDb" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "anyType", JR.defaultOf "" ), ( "METHOD_CALL_GET_HOST_NAME", JR.defaultOf "" ), ( "METHOD_CALL_ADD_USERS", JR.defaultOf "" ), ( "METHOD_CALL_ADD_DATABASES", JR.defaultOf "" ), ( "METHOD_CALL_ADD_TABLES", JR.defaultOf "" ), ( "METHOD_CALL_TEMP_MAIN_PATH", JR.defaultOf "" ), ( "METHOD_CALL_MAIN_PATH", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "setHelper_1", jm_setHelper_1 )
        , ( "getHelper_0", jm_getHelper_0 )
        , ( "getHostName_0", jm_getHostName_0 )
        , ( "addUsers_0", jm_addUsers_0 )
        , ( "addDatabases_0", jm_addDatabases_0 )
        , ( "addTables_0", jm_addTables_0 )
        , ( "useTemporaryMainPath_0", jm_useTemporaryMainPath_0 )
        , ( "useNormalMainPath_0", jm_useNormalMainPath_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InitDb"
        [ ( "jm_setHelper_1", jm_setHelper_1 ), ( "jm_getHelper_0", jm_getHelper_0 ), ( "jm_getHostName_0", jm_getHostName_0 ), ( "jm_addUsers_0", jm_addUsers_0 ), ( "jm_addDatabases_0", jm_addDatabases_0 ), ( "jm_addTables_0", jm_addTables_0 ), ( "jm_useTemporaryMainPath_0", jm_useTemporaryMainPath_0 ), ( "jm_useNormalMainPath_0", jm_useNormalMainPath_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "METHOD_CALL_GET_HOST_NAME" "" JR.this (JR.str "getHostName")),
                JR.exec (JR.setField "METHOD_CALL_ADD_USERS" "" JR.this (JR.str "addUsers")),
                JR.exec (JR.setField "METHOD_CALL_ADD_DATABASES" "" JR.this (JR.str "addDatabases")),
                JR.exec (JR.setField "METHOD_CALL_ADD_TABLES" "" JR.this (JR.str "addTables")),
                JR.exec (JR.setField "METHOD_CALL_TEMP_MAIN_PATH" "" JR.this (JR.str "useTemporaryMainPath")),
                JR.exec (JR.setField "METHOD_CALL_MAIN_PATH" "" JR.this (JR.str "useNormalMainPath")),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "dbConnectionInfo", "" ) ] ""
        (JR.run [ JR.exec (JR.setField "METHOD_CALL_GET_HOST_NAME" "" JR.this (JR.str "getHostName")),
                JR.exec (JR.setField "METHOD_CALL_ADD_USERS" "" JR.this (JR.str "addUsers")),
                JR.exec (JR.setField "METHOD_CALL_ADD_DATABASES" "" JR.this (JR.str "addDatabases")),
                JR.exec (JR.setField "METHOD_CALL_ADD_TABLES" "" JR.this (JR.str "addTables")),
                JR.exec (JR.setField "METHOD_CALL_TEMP_MAIN_PATH" "" JR.this (JR.str "useTemporaryMainPath")),
                JR.exec (JR.setField "METHOD_CALL_MAIN_PATH" "" JR.this (JR.str "useNormalMainPath")),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_setHelper_1 : JR.Method
jm_setHelper_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "anyType" "" JR.this (JR.local "anyType")) ])
        (jregister jheap)
        jthis
        jargs


jm_getHelper_0 : JR.Method
jm_getHelper_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "anyType") ])
        (jregister jheap)
        jthis
        jargs


jm_getHostName_0 : JR.Method
jm_getHostName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "dynamicClass" "" (JR.getClass (JR.thisField "anyType")), 
                        JR.declare "method" "" (JR.invoke "getMethod_2" (JR.local "dynamicClass") [ (JR.thisField "METHOD_CALL_GET_HOST_NAME"), JR.null ]), 
                        JR.declare "result" "" (JR.invoke "invoke_2" (JR.local "method") [ (JR.thisField "anyType"), JR.null ]), 
                        JR.return (JR.local "result") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.return JR.null ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_addUsers_0 : JR.Method
jm_addUsers_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "dynamicClass" "" (JR.getClass (JR.thisField "anyType")), 
                        JR.declare "method" "" (JR.invoke "getMethod_2" (JR.local "dynamicClass") [ (JR.thisField "METHOD_CALL_ADD_USERS"), JR.null ]), 
                        JR.declare "result" "" (JR.invoke "invoke_2" (JR.local "method") [ (JR.thisField "anyType"), JR.null ]), 
                        JR.return (JR.invoke "booleanValue_0" (JR.local "result") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_addDatabases_0 : JR.Method
jm_addDatabases_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "dynamicClass" "" (JR.getClass (JR.thisField "anyType")), 
                        JR.declare "method" "" (JR.invoke "getMethod_2" (JR.local "dynamicClass") [ (JR.thisField "METHOD_CALL_ADD_DATABASES"), JR.null ]), 
                        JR.declare "result" "" (JR.invoke "invoke_2" (JR.local "method") [ (JR.thisField "anyType"), JR.null ]), 
                        JR.return (JR.invoke "booleanValue_0" (JR.local "result") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_addTables_0 : JR.Method
jm_addTables_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "dynamicClass" "" (JR.getClass (JR.thisField "anyType")), 
                        JR.declare "method" "" (JR.invoke "getMethod_2" (JR.local "dynamicClass") [ (JR.thisField "METHOD_CALL_ADD_TABLES"), JR.null ]), 
                        JR.declare "result" "" (JR.invoke "invoke_2" (JR.local "method") [ (JR.thisField "anyType"), JR.null ]), 
                        JR.return (JR.invoke "booleanValue_0" (JR.local "result") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_useTemporaryMainPath_0 : JR.Method
jm_useTemporaryMainPath_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "dynamicClass" "" (JR.getClass (JR.thisField "anyType")), 
                        JR.declare "method" "" (JR.invoke "getMethod_2" (JR.local "dynamicClass") [ (JR.thisField "METHOD_CALL_TEMP_MAIN_PATH"), JR.null ]), 
                        JR.declare "result" "" (JR.invoke "invoke_2" (JR.local "method") [ (JR.thisField "anyType"), JR.null ]), 
                        JR.return (JR.invoke "booleanValue_0" (JR.local "result") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.return (JR.bool False) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_useNormalMainPath_0 : JR.Method
jm_useNormalMainPath_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "dynamicClass" "" (JR.getClass (JR.thisField "anyType")), 
                        JR.declare "method" "" (JR.invoke "getMethod_2" (JR.local "dynamicClass") [ (JR.thisField "METHOD_CALL_MAIN_PATH"), JR.null ]), 
                        JR.declare "result" "" (JR.invoke "invoke_2" (JR.local "method") [ (JR.thisField "anyType"), JR.null ]), 
                        JR.return (JR.invoke "booleanValue_0" (JR.local "result") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.return (JR.bool False) ]) ) ] identity ])
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

