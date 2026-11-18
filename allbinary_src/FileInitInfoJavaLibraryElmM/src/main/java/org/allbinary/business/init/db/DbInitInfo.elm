module Org.Allbinary.Business.Init.Db.DbInitInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init.db
-}

import JR
import Org.Allbinary.Logic.Io.AbDataInputStream as AbDataInputStream
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Logic.Io.AbFileInputStream as AbFileInputStream
import Org.Allbinary.Logic.Io.Path.AbPath as AbPath
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Io.DataOutputStreamFactory as DataOutputStreamFactory
import Org.Allbinary.Logic.System.Security.Crypt.DatabaseEncoder as DatabaseEncoder
import Org.Allbinary.Business.Init.Db.DbConnectionInfo as DbConnectionInfo
import Org.Allbinary.Logic.Io.File.Directory.Directory as Directory
import Org.Allbinary.Globals.FREEBLISKET_PATH_GLOBALS as FREEBLISKET_PATH_GLOBALS
import Org.Allbinary.Logic.Communication.Http.HttpData as HttpData
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Logic.Io.StreamUtil as StreamUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Globals.URLGLOBALS as URLGLOBALS
import Org.Allbinary.Logic.System.Security.Crypt.WeakCrypt as WeakCrypt


jclass : String
jclass =
    "DbInitInfo"


jchain : List String
jchain =
    [ "DbInitInfo" ]
        ++ DbConnectionInfo.jchain


jfields : List ( String, JR.JValue )
jfields =
    DbConnectionInfo.jfields ++ [ ( "commonStrings", JR.defaultOf "" ), ( "directory", JR.defaultOf "" ), ( "httpData", JR.defaultOf "" ), ( "GET_URL", JR.defaultOf "" ), ( "PACKAGE", JR.defaultOf "" ), ( "initFileName", JR.defaultOf "" ), ( "hasRead", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getUrl_0", jm_getUrl_0 )
        , ( "write_0", jm_write_0 )
        , ( "load_0", jm_load_0 )
        , ( "setHasRead_1", jm_setHasRead_1 )
        , ( "updateIfNeeded_0", jm_updateIfNeeded_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "getUserName_0", jm_getUserName_0 )
        , ( "getPassword_0", jm_getPassword_0 )
        , ( "getSchema_0", jm_getSchema_0 )
        , ( "getServer_0", jm_getServer_0 )
        , ( "getPort_0", jm_getPort_0 ) ]
        DbConnectionInfo.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DbInitInfo"
        [ ( "jm_getUrl_0", jm_getUrl_0 ), ( "jm_write_0", jm_write_0 ), ( "jm_load_0", jm_load_0 ), ( "jm_setHasRead_1", jm_setHasRead_1 ), ( "jm_updateIfNeeded_0", jm_updateIfNeeded_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_getUserName_0", jm_getUserName_0 ), ( "jm_getPassword_0", jm_getPassword_0 ), ( "jm_getSchema_0", jm_getSchema_0 ), ( "jm_getServer_0", jm_getServer_0 ), ( "jm_getPort_0", jm_getPort_0 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "initFileName", "" ), ( "read", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect DbConnectionInfo.jinit_0 JR.this []),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "directory" "" JR.this (JR.callStatic Directory.jm_getInstance_0 [])),
                JR.exec (JR.setField "httpData" "" JR.this (JR.callStatic HttpData.jm_getInstance_0 [])),
                JR.exec (JR.setField "GET_URL" "" JR.this (JR.str "getUrl")),
                JR.exec (JR.setField "PACKAGE" "" JR.this (JR.field "DBINITPATH" (JR.callStatic FREEBLISKET_PATH_GLOBALS.jm_getInstance_0 []))),
                JR.exec (JR.setField "hasRead" "Z" JR.this (JR.bool False)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "initFileName" "" JR.this (JR.local "initFileName")), 
                    JR.ifElse (JR.local "read") (JR.run [ 
                        JR.exec (JR.invoke "updateIfNeeded_0" JR.this []) ]) (JR.run [ 
                        JR.exec (JR.invoke "setHasRead_1" JR.this [ (JR.bool True) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getUrl_0 : JR.Method
jm_getUrl_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "url" "" (JR.callVia DbConnectionInfo.jvtable "getUrl_0" JR.this []), 
                    JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.field "URL_LABEL" (JR.thisField "httpData")) (JR.local "url")), JR.this, (JR.thisField "GET_URL") ]) ]) identity, 
                    JR.return (JR.local "url") ])
        (jregister jheap)
        jthis
        jargs


jm_write_0 : JR.Method
jm_write_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "PATH" "" (JR.new AbPath.jnew_2 [ (JR.concat (JR.callStatic URLGLOBALS.jm_getWebappPath_0 []) (JR.thisField "PACKAGE")), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "create_1" (JR.thisField "directory") [ (JR.local "PATH") ]), 
                    JR.declare "FILEABPATH" "" (JR.new AbPath.jnew_2 [ (JR.concat (JR.callStatic URLGLOBALS.jm_getWebappPath_0 []) (JR.thisField "PACKAGE")), (JR.thisField "initFileName") ]), 
                    JR.try (JR.run [ 
                        JR.declare "newFile" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "FILEABPATH") ]), 
                        JR.exec (JR.invoke "createNewFile_0" (JR.local "newFile") []), 
                        JR.declare "dataOutputStream" "" (JR.invoke "getInstanceForAbFile_1" (JR.callStatic DataOutputStreamFactory.jm_getInstance_0 []) [ (JR.local "newFile") ]), 
                        JR.try (JR.run [ 
                            JR.declare "cryptedJdbcDriver" "" (JR.invoke "getBytes_0" (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 1) ]) [ (JR.invoke "getJdbcDriver_0" JR.this []) ]) []), 
                            JR.declare "cryptedName" "" (JR.invoke "getBytes_0" (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 2) ]) [ (JR.invoke "getName_0" JR.this []) ]) []), 
                            JR.declare "cryptedUserName" "" (JR.invoke "getBytes_0" (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 3) ]) [ (JR.invoke "getUserName_0" JR.this []) ]) []), 
                            JR.declare "cryptedPassword" "" (JR.invoke "getBytes_0" (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 4) ]) [ (JR.invoke "getPassword_0" JR.this []) ]) []), 
                            JR.declare "cryptedSchema" "" (JR.invoke "getBytes_0" (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 5) ]) [ (JR.invoke "getSchema_0" JR.this []) ]) []), 
                            JR.declare "cryptedServer" "" (JR.invoke "getBytes_0" (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 6) ]) [ (JR.invoke "getServer_0" JR.this []) ]) []), 
                            JR.declare "cryptedPort" "" (JR.invoke "getBytes_0" (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 7) ]) [ (JR.invoke "getPort_0" JR.this []) ]) []), 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "cryptedJdbcDriver") ]) ]), 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "cryptedName") ]) ]), 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "cryptedUserName") ]) ]), 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "cryptedPassword") ]) ]), 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "cryptedSchema") ]) ]), 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "cryptedServer") ]) ]), 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "cryptedPort") ]) ]), 
                            JR.exec (JR.setField "hasRead" "Z" JR.this (JR.bool False)) ]) [  ] (JR.run [ 
                            JR.exec (JR.invoke "close_1" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "dataOutputStream") ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.concat (JR.str "Failed Write: ") (JR.invoke "toString_0" (JR.local "FILEABPATH") [])), JR.this, (JR.str "write"), (JR.local "e") ]) ]) identity ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_load_0 : JR.Method
jm_load_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "FILEABPATH" "" (JR.new AbPath.jnew_2 [ (JR.concat (JR.callStatic URLGLOBALS.jm_getWebappPath_0 []) (JR.thisField "PACKAGE")), (JR.thisField "initFileName") ]), 
                    JR.try (JR.run [ 
                        JR.declare "file" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "FILEABPATH") ]), 
                        JR.ifElse (JR.invoke "isFile_0" (JR.local "file") []) (JR.run [ 
                            JR.declare "iFile" "" (JR.callStatic AbFileInputStream.jm_createFromAbFile_1 [ (JR.local "file") ]), 
                            JR.declare "iData" "" (JR.new AbDataInputStream.jnew_1 [ (JR.local "iFile") ]), 
                            JR.try (JR.run [ 
                                JR.declare "decryptedJdbcDriver" "" (JR.withState JR.newString [ (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ]) ]), 
                                JR.declare "decryptedName" "" (JR.withState JR.newString [ (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ]) ]), 
                                JR.declare "decryptedUserName" "" (JR.withState JR.newString [ (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ]) ]), 
                                JR.declare "decryptedPassword" "" (JR.withState JR.newString [ (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ]) ]), 
                                JR.declare "decryptedSchema" "" (JR.withState JR.newString [ (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ]) ]), 
                                JR.declare "decryptedServer" "" (JR.withState JR.newString [ (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ]) ]), 
                                JR.declare "decryptedPort" "" (JR.withState JR.newString [ (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ]) ]), 
                                JR.exec (JR.invoke "setJdbcDriver_1" JR.this [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 1) ]) [ (JR.local "decryptedJdbcDriver") ]) ]), 
                                JR.exec (JR.invoke "setName_1" JR.this [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 2) ]) [ (JR.local "decryptedName") ]) ]), 
                                JR.exec (JR.invoke "setUserName_1" JR.this [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 3) ]) [ (JR.local "decryptedUserName") ]) ]), 
                                JR.exec (JR.invoke "setPassword_1" JR.this [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 4) ]) [ (JR.local "decryptedPassword") ]) ]), 
                                JR.exec (JR.invoke "setSchema_1" JR.this [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 5) ]) [ (JR.local "decryptedSchema") ]) ]), 
                                JR.exec (JR.invoke "setServer_1" JR.this [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 6) ]) [ (JR.local "decryptedServer") ]) ]), 
                                JR.exec (JR.invoke "setPort_1" JR.this [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 7) ]) [ (JR.local "decryptedPort") ]) ]), 
                                JR.declare "stringUtil" "" (JR.callStatic StringUtil.jm_getInstance_0 []) ]) [  ] (JR.run [ 
                                JR.exec (JR.invoke "close_1" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "iData") ]) ]) ]) (JR.run [ 
                            JR.exec (JR.setField "hasRead" "Z" JR.this (JR.bool False)), 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.str "Not a File - Failed Loading: ") (JR.invoke "toString_0" (JR.local "FILEABPATH") [])), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")) ]) ]) identity ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.concat (JR.str "Failed Loading: ") (JR.invoke "toString_0" (JR.local "FILEABPATH") [])), JR.this, (JR.field "LOAD" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) identity ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_setHasRead_1 : JR.Method
jm_setHasRead_1 jheap jthis jargs =
    JR.method [ ( "value", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "hasRead" "Z" JR.this (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_updateIfNeeded_0 : JR.Method
jm_updateIfNeeded_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map JR.not_ (JR.thisField "hasRead")) (JR.run [ 
                            JR.exec (JR.setField "hasRead" "Z" JR.this (JR.bool True)), 
                            JR.exec (JR.invoke "load_0" JR.this []) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.callStatic PreLogUtil.jm_putOE_4 [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "updateIfNeeded"), (JR.local "e") ]) ]) identity ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.str "Name: ") (JR.callVia DbConnectionInfo.jvtable "getName_0" JR.this [])), JR.this, (JR.str "getName") ]) ]) identity, 
                    JR.return (JR.callVia DbConnectionInfo.jvtable "getName_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getUserName_0 : JR.Method
jm_getUserName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.concat (JR.str "Name: ") (JR.callVia DbConnectionInfo.jvtable "getUserName_0" JR.this [])), JR.this, (JR.str "getUserName") ]) ]) identity, 
                    JR.return (JR.callVia DbConnectionInfo.jvtable "getUserName_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getPassword_0 : JR.Method
jm_getPassword_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.return (JR.callVia DbConnectionInfo.jvtable "getPassword_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getSchema_0 : JR.Method
jm_getSchema_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.return (JR.callVia DbConnectionInfo.jvtable "getSchema_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getServer_0 : JR.Method
jm_getServer_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.return (JR.callVia DbConnectionInfo.jvtable "getServer_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_getPort_0 : JR.Method
jm_getPort_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.return (JR.callVia DbConnectionInfo.jvtable "getPort_0" JR.this []) ])
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

