module Org.Allbinary.Business.Init.InstallerInfo exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init
-}

import JR
import Org.Allbinary.Logic.Io.AbDataInputStream as AbDataInputStream
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Logic.Io.AbFileLocalInputStream as AbFileLocalInputStream
import Org.Allbinary.Logic.Io.Path.AbPath as AbPath
import Org.Allbinary.Logic.Io.DataOutputStreamFactory as DataOutputStreamFactory
import Org.Allbinary.Logic.System.Security.Crypt.DatabaseEncoder as DatabaseEncoder
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Globals.PATH_GLOBALS as PATH_GLOBALS
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Globals.URLGLOBALS as URLGLOBALS
import Org.Allbinary.Logic.System.Security.Crypt.WeakCrypt as WeakCrypt


jclass : String
jclass =
    "InstallerInfo"


jchain : List String
jchain =
    [ "InstallerInfo" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "write_0", jm_write_0 )
        , ( "read_0", jm_read_0 )
        , ( "setHasRead_1", jm_setHasRead_1 )
        , ( "setUserName_1", jm_setUserName_1 )
        , ( "setPassword_1", jm_setPassword_1 )
        , ( "updateIfNeeded_0", jm_updateIfNeeded_0 )
        , ( "getUserName_0", jm_getUserName_0 )
        , ( "getPassword_0", jm_getPassword_0 )
        , ( "isValid_2", jm_isValid_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "InstallerInfo"
        [ ( "jm_write_0", jm_write_0 ), ( "jm_read_0", jm_read_0 ), ( "jm_setHasRead_1", jm_setHasRead_1 ), ( "jm_setUserName_1", jm_setUserName_1 ), ( "jm_setPassword_1", jm_setPassword_1 ), ( "jm_updateIfNeeded_0", jm_updateIfNeeded_0 ), ( "jm_getUserName_0", jm_getUserName_0 ), ( "jm_getPassword_0", jm_getPassword_0 ), ( "jm_isValid_2", jm_isValid_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ), ( "jstatic_INITFILENAME", jstatic_INITFILENAME ), ( "jstatic_PACKAGE", jstatic_PACKAGE ), ( "jstatic_userName", jstatic_userName ), ( "jstatic_password", jstatic_password ), ( "jstatic_hasRead", jstatic_hasRead ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "InstallerInfo" jclinit "instance"
        (JR.new jnew_0 [])
        s


jstatic_INITFILENAME : JR.M
jstatic_INITFILENAME s =
    JR.static "InstallerInfo" jclinit "INITFILENAME"
        (JR.str "installerdata.dat")
        s


jstatic_PACKAGE : JR.M
jstatic_PACKAGE s =
    JR.static "InstallerInfo" jclinit "PACKAGE"
        (JR.field "INIT_PATH" (JR.callStatic PATH_GLOBALS.jm_getInstance_0 []))
        s


jstatic_userName : JR.M
jstatic_userName s =
    JR.static "InstallerInfo" jclinit "userName"
        (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))
        s


jstatic_password : JR.M
jstatic_password s =
    JR.static "InstallerInfo" jclinit "password"
        (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 []))
        s


jstatic_hasRead : JR.M
jstatic_hasRead s =
    JR.static "InstallerInfo" jclinit "hasRead"
        (JR.bool False)
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_write_0 : JR.Method
jm_write_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "FILEABPATH" "" (JR.new AbPath.jnew_2 [ (JR.concat (JR.callStatic URLGLOBALS.jm_getMainPath_0 []) jstatic_PACKAGE), jstatic_INITFILENAME ]), 
                    JR.try (JR.run [ 
                        JR.declare "newFile" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "FILEABPATH") ]), 
                        JR.exec (JR.invoke "createNewFile_0" (JR.local "newFile") []), 
                        JR.declare "dataOutputStream" "" (JR.invoke "getInstanceForAbFile_1" (JR.callStatic DataOutputStreamFactory.jm_getInstance_0 []) [ (JR.local "newFile") ]), 
                        JR.declare "cryptedUserName" "" (JR.invoke "getBytes_0" (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 1) ]) [ (JR.invoke "getUserName_0" JR.this []) ]) []), 
                        JR.declare "cryptedPassword" "" (JR.invoke "getBytes_0" (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 2) ]) [ (JR.invoke "getPassword_0" JR.this []) ]) []), 
                        JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "cryptedUserName") ]) ]), 
                        JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "cryptedPassword") ]) ]), 
                        JR.exec (JR.setStatic "InstallerInfo.hasRead" "Z" (JR.bool False)) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Failed"), JR.this, (JR.str "write") ]) ]) identity, 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_read_0 : JR.Method
jm_read_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "FILEABPATH" "" (JR.new AbPath.jnew_2 [ (JR.concat (JR.callStatic URLGLOBALS.jm_getMainPath_0 []) jstatic_PACKAGE), jstatic_INITFILENAME ]), 
                    JR.try (JR.run [ 
                        JR.declare "file" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "FILEABPATH") ]), 
                        JR.ifElse (JR.invoke "isFile_0" (JR.local "file") []) (JR.run [ 
                            JR.declare "iFile" "" (JR.new AbFileLocalInputStream.jnew_1 [ (JR.local "file") ]), 
                            JR.declare "iData" "" (JR.new AbDataInputStream.jnew_1 [ (JR.local "iFile") ]), 
                            JR.declare "decryptedUserName" "" (JR.withState JR.newString [ (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ]) ]), 
                            JR.declare "decryptedPassword" "" (JR.withState JR.newString [ (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ]) ]), 
                            JR.exec (JR.invoke "setUserName_1" JR.this [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 1) ]) [ (JR.local "decryptedUserName") ]) ]), 
                            JR.exec (JR.invoke "setPassword_1" JR.this [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 2) ]) [ (JR.local "decryptedPassword") ]) ]) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Not a File - Failed Loading: ") (JR.invoke "toString_0" (JR.local "FILEABPATH") [])), JR.this, (JR.str "read") ]) ]) identity ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADERERROR" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Failed"), JR.this, (JR.str "read") ]) ]) identity ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_setHasRead_1 : JR.Method
jm_setHasRead_1 jheap jthis jargs =
    JR.method [ ( "value", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "InstallerInfo.hasRead" "Z" (JR.local "value")) ])
        (jregister jheap)
        jthis
        jargs


jm_setUserName_1 : JR.Method
jm_setUserName_1 jheap jthis jargs =
    JR.method [ ( "userName", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "InstallerInfo.userName" "" (JR.local "userName")) ])
        (jregister jheap)
        jthis
        jargs


jm_setPassword_1 : JR.Method
jm_setPassword_1 jheap jthis jargs =
    JR.method [ ( "password", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "InstallerInfo.password" "" (JR.local "password")) ])
        (jregister jheap)
        jthis
        jargs


jm_updateIfNeeded_0 : JR.Method
jm_updateIfNeeded_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map JR.not_ jstatic_hasRead) (JR.run [ 
                        JR.exec (JR.setStatic "InstallerInfo.hasRead" "Z" (JR.bool True)), 
                        JR.exec (JR.invoke "read_0" JR.this []), 
                        JR.ifElse (JR.or (JR.map2 JR.equals jstatic_userName JR.null) (JR.map2 JR.equals jstatic_password JR.null)) (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "PRELOADER" (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])) ]) (JR.run [ 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Failed"), JR.this, (JR.str "updateIfNeeded") ]) ]) identity ]) identity ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getUserName_0 : JR.Method
jm_getUserName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.return jstatic_userName ])
        (jregister jheap)
        jthis
        jargs


jm_getPassword_0 : JR.Method
jm_getPassword_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.return jstatic_password ])
        (jregister jheap)
        jthis
        jargs


jm_isValid_2 : JR.Method
jm_isValid_2 jheap jthis jargs =
    JR.method [ ( "userName", "" ), ( "password", "" ) ] "Z"
        (JR.run [ 
                    JR.exec (JR.invoke "updateIfNeeded_0" JR.this []), 
                    JR.ifElse (JR.and (JR.and (JR.and (JR.map2 JR.notEquals jstatic_userName JR.null) (JR.map2 JR.equals (JR.invoke "compareTo_1" jstatic_userName [ (JR.local "userName") ]) (JR.int 0))) (JR.map2 JR.notEquals jstatic_password JR.null)) (JR.map2 JR.equals (JR.invoke "compareTo_1" jstatic_password [ (JR.local "password") ]) (JR.int 0))) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.return (JR.bool False) ])
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

