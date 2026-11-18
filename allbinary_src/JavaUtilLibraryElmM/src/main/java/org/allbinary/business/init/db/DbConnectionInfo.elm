module Org.Allbinary.Business.Init.Db.DbConnectionInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init.db
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Business.Init.Db.DatabaseConnectionInfoInterface as DatabaseConnectionInfoInterface
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "DbConnectionInfo"


jchain : List String
jchain =
    [ "DbConnectionInfo" ]
        ++ DatabaseConnectionInfoInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "jdbcDriver", JR.defaultOf "" ), ( "name", JR.defaultOf "" ), ( "userName", JR.defaultOf "" ), ( "password", JR.defaultOf "" ), ( "schema", JR.defaultOf "" ), ( "server", JR.defaultOf "" ), ( "port", JR.defaultOf "" ), ( "url", JR.defaultOf "" ), ( "host", JR.defaultOf "" ), ( "SCHEMA_SEP", JR.defaultOf "" ), ( "USER_NAME_KEY", JR.defaultOf "" ), ( "PASSWORD_KEY", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "updateUrl_0", jm_updateUrl_0 )
        , ( "getUrl_0", jm_getUrl_0 )
        , ( "getJdbcDriver_0", jm_getJdbcDriver_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "getUserName_0", jm_getUserName_0 )
        , ( "getPassword_0", jm_getPassword_0 )
        , ( "updateHost_0", jm_updateHost_0 )
        , ( "getHost_0", jm_getHost_0 )
        , ( "getSchema_0", jm_getSchema_0 )
        , ( "getServer_0", jm_getServer_0 )
        , ( "getPort_0", jm_getPort_0 )
        , ( "setJdbcDriver_1", jm_setJdbcDriver_1 )
        , ( "setName_1", jm_setName_1 )
        , ( "setUserName_1", jm_setUserName_1 )
        , ( "setPassword_1", jm_setPassword_1 )
        , ( "setSchema_1", jm_setSchema_1 )
        , ( "setServer_1", jm_setServer_1 )
        , ( "setPort_1", jm_setPort_1 )
        , ( "getUserNameKey_0", jm_getUserNameKey_0 )
        , ( "getPasswordKey_0", jm_getPasswordKey_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DbConnectionInfo"
        [ ( "jm_updateUrl_0", jm_updateUrl_0 ), ( "jm_getUrl_0", jm_getUrl_0 ), ( "jm_getJdbcDriver_0", jm_getJdbcDriver_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_getUserName_0", jm_getUserName_0 ), ( "jm_getPassword_0", jm_getPassword_0 ), ( "jm_updateHost_0", jm_updateHost_0 ), ( "jm_getHost_0", jm_getHost_0 ), ( "jm_getSchema_0", jm_getSchema_0 ), ( "jm_getServer_0", jm_getServer_0 ), ( "jm_getPort_0", jm_getPort_0 ), ( "jm_setJdbcDriver_1", jm_setJdbcDriver_1 ), ( "jm_setName_1", jm_setName_1 ), ( "jm_setUserName_1", jm_setUserName_1 ), ( "jm_setPassword_1", jm_setPassword_1 ), ( "jm_setSchema_1", jm_setSchema_1 ), ( "jm_setServer_1", jm_setServer_1 ), ( "jm_setPort_1", jm_setPort_1 ), ( "jm_getUserNameKey_0", jm_getUserNameKey_0 ), ( "jm_getPasswordKey_0", jm_getPasswordKey_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "SCHEMA_SEP" "" JR.this (JR.str "://")),
                JR.exec (JR.setField "USER_NAME_KEY" "" JR.this (JR.str "?user=")),
                JR.exec (JR.setField "PASSWORD_KEY" "" JR.this (JR.str "&password=")),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_updateUrl_0 : JR.Method
jm_updateUrl_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateHost_0" JR.this []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getHost_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getName_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getUserNameKey_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getUserName_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPasswordKey_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPassword_0" JR.this []) ]), 
                    JR.exec (JR.setField "url" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getUrl_0 : JR.Method
jm_getUrl_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "url") ])
        (jregister jheap)
        jthis
        jargs


jm_getJdbcDriver_0 : JR.Method
jm_getJdbcDriver_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "jdbcDriver") ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "name") ])
        (jregister jheap)
        jthis
        jargs


jm_getUserName_0 : JR.Method
jm_getUserName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "userName") ])
        (jregister jheap)
        jthis
        jargs


jm_getPassword_0 : JR.Method
jm_getPassword_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "password") ])
        (jregister jheap)
        jthis
        jargs


jm_updateHost_0 : JR.Method
jm_updateHost_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getSchema_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.thisField "SCHEMA_SEP") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getServer_0" JR.this []) ]), 
                    JR.ifElse (JR.and (JR.map2 JR.notEquals (JR.invoke "getPort_0" JR.this []) JR.null) (JR.map2 JR.greater (JR.invoke "length_0" (JR.invoke "getPort_0" JR.this []) []) (JR.int 1))) (JR.run [ 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COLON" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPort_0" JR.this []) ]) ]) identity, 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.setField "host" "" JR.this (JR.invoke "toString_0" (JR.local "stringBuffer") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getHost_0 : JR.Method
jm_getHost_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "host") ])
        (jregister jheap)
        jthis
        jargs


jm_getSchema_0 : JR.Method
jm_getSchema_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "schema") ])
        (jregister jheap)
        jthis
        jargs


jm_getServer_0 : JR.Method
jm_getServer_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "server") ])
        (jregister jheap)
        jthis
        jargs


jm_getPort_0 : JR.Method
jm_getPort_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "port") ])
        (jregister jheap)
        jthis
        jargs


jm_setJdbcDriver_1 : JR.Method
jm_setJdbcDriver_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "jdbcDriver" "" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setName_1 : JR.Method
jm_setName_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "name" "" JR.this (JR.local "value")), 
                    JR.exec (JR.invoke "updateUrl_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setUserName_1 : JR.Method
jm_setUserName_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "userName" "" JR.this (JR.local "value")), 
                    JR.exec (JR.invoke "updateUrl_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setPassword_1 : JR.Method
jm_setPassword_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "password" "" JR.this (JR.local "value")), 
                    JR.exec (JR.invoke "updateUrl_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setSchema_1 : JR.Method
jm_setSchema_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "schema" "" JR.this (JR.local "value")), 
                    JR.exec (JR.invoke "updateUrl_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setServer_1 : JR.Method
jm_setServer_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "server" "" JR.this (JR.local "value")), 
                    JR.exec (JR.invoke "updateUrl_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_setPort_1 : JR.Method
jm_setPort_1 jheap jthis jargs =
    JR.method [ ( "value", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "port" "" JR.this (JR.local "value")), 
                    JR.exec (JR.invoke "updateUrl_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getUserNameKey_0 : JR.Method
jm_getUserNameKey_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "USER_NAME_KEY") ])
        (jregister jheap)
        jthis
        jargs


jm_getPasswordKey_0 : JR.Method
jm_getPasswordKey_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "PASSWORD_KEY") ])
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

