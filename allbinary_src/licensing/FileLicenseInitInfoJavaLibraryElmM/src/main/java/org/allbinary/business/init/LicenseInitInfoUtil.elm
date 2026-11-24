module Org.Allbinary.Business.Init.LicenseInitInfoUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.business.init
-}

import JR
import Org.Allbinary.Logic.Io.AbDataInputStream as AbDataInputStream
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.Logic.Io.DataOutputStreamFactory as DataOutputStreamFactory
import Org.Allbinary.Logic.System.Security.Crypt.DatabaseEncoder as DatabaseEncoder
import Org.Allbinary.Logic.Io.FileStreamFactory as FileStreamFactory
import Org.Allbinary.Business.Init.LicenseInitInfo as LicenseInitInfo
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Globals.PATH_GLOBALS as PATH_GLOBALS
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil
import Org.Allbinary.Globals.URLGLOBALS as URLGLOBALS
import Org.Allbinary.Logic.System.Security.Crypt.WeakCrypt as WeakCrypt


jclass : String
jclass =
    "LicenseInitInfoUtil"


jchain : List String
jchain =
    [ "LicenseInitInfoUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "stringUtil", JR.defaultOf "" ), ( "INITFILENAME", JR.defaultOf "" ), ( "ABOUT", JR.defaultOf "" ), ( "PRIVACY_POLICY", JR.defaultOf "" ), ( "filePath", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "setFilePath_1", jm_setFilePath_1 )
        , ( "write_1", jm_write_1 )
        , ( "read_0", jm_read_0 )
        , ( "readAgain_1", jm_readAgain_1 )
        , ( "getFilePath_0", jm_getFilePath_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LicenseInitInfoUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_setFilePath_1", jm_setFilePath_1 ), ( "jm_write_1", jm_write_1 ), ( "jm_read_0", jm_read_0 ), ( "jm_readAgain_1", jm_readAgain_1 ), ( "jm_getFilePath_0", jm_getFilePath_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "LicenseInitInfoUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "stringUtil" "" JR.this (JR.callStatic StringUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "INITFILENAME" "" JR.this (JR.str "licenseinitdata.dat")),
                JR.exec (JR.setField "ABOUT" "" JR.this (JR.str "about")),
                JR.exec (JR.setField "PRIVACY_POLICY" "" JR.this (JR.str "privacy_policy")),
                JR.exec (JR.setField "filePath" "" JR.this (JR.field "EMPTY_STRING" (JR.thisField "stringUtil"))),
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


jm_setFilePath_1 : JR.Method
jm_setFilePath_1 jheap jthis jargs =
    JR.method [ ( "filePath", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "filePath" "" JR.this (JR.local "filePath")) ])
        (jregister jheap)
        jthis
        jargs


jm_write_1 : JR.Method
jm_write_1 jheap jthis jargs =
    JR.method [ ( "initData", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "filePath") (JR.field "EMPTY_STRING" (JR.thisField "stringUtil"))) (JR.run [ 
                        JR.exec (JR.setField "filePath" "" JR.this (JR.concat (JR.callStatic URLGLOBALS.jm_getMainPath_0 []) (JR.field "INIT_PATH" (JR.callStatic PATH_GLOBALS.jm_getInstance_0 [])))) ]) identity, 
                    JR.try (JR.run [ 
                        JR.declare "tsUtil" "" (JR.callStatic TsUtil.jm_getInstance_0 []), 
                        JR.declare "dataOutputStream" "" (JR.invoke "getInstance_2" (JR.callStatic DataOutputStreamFactory.jm_getInstance_0 []) [ (JR.thisField "filePath"), (JR.thisField "INITFILENAME") ]), 
                        JR.declare "licenseIdCrypted" "" (JR.invoke "getByteArray_1" (JR.local "tsUtil") [ (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 1) ]) [ (JR.invoke "getLicenseId_0" (JR.local "initData") []) ]) ]), 
                        JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "licenseIdCrypted") ]) ]), 
                        JR.declare "numberOfLicenseServers" "I" (JR.invoke "getNumberOfServers_0" (JR.local "initData") []), 
                        JR.exec (JR.invoke "writeInt_1" (JR.local "dataOutputStream") [ (JR.local "numberOfLicenseServers") ]), 
                        JR.declare "licenseServerCrypted" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "numberOfLicenseServers")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68465 -> (JR.setLocal "index" "I" (JR.lit jwN68465))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "licenseServerCrypted" "" (JR.invoke "getByteArray_1" (JR.local "tsUtil") [ (JR.invoke "encrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 3) ]) [ (JR.invoke "getServer_1" (JR.local "initData") [ (JR.local "index") ]) ]) ])), 
                            JR.exec (JR.invoke "writeUTF_1" (JR.local "dataOutputStream") [ (JR.callStatic DatabaseEncoder.jm_encode_1 [ (JR.local "licenseServerCrypted") ]) ]) ]) ] ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.str "Command Failed: ") (JR.thisField "INITFILENAME")), JR.this, (JR.str "write"), (JR.local "e") ]), 
                        JR.exec (JR.invoke "delete_2" (JR.callStatic FileStreamFactory.jm_getInstance_0 []) [ (JR.thisField "filePath"), (JR.thisField "INITFILENAME") ]), 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_read_0 : JR.Method
jm_read_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "readAgain_1" JR.this [ (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_readAgain_1 : JR.Method
jm_readAgain_1 jheap jthis jargs =
    JR.method [ ( "initializeCounter", "I" ) ] ""
        (JR.run [ 
                    JR.declare "METHOD_NAME" "" (JR.str "readAgain"), 
                    JR.ifElse (JR.map2 JR.equals (JR.thisField "filePath") (JR.field "EMPTY_STRING" (JR.thisField "stringUtil"))) (JR.run [ 
                        JR.exec (JR.setField "filePath" "" JR.this (JR.concat (JR.callStatic URLGLOBALS.jm_getMainPath_0 []) (JR.field "INIT_PATH" (JR.callStatic PATH_GLOBALS.jm_getInstance_0 [])))) ]) identity, 
                    JR.try (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "LicenseInitInfo File: ") (JR.thisField "INITFILENAME")), JR.this, (JR.local "METHOD_NAME") ]), 
                        JR.declare "fileStreamFactory" "" (JR.callStatic FileStreamFactory.jm_getInstance_0 []), 
                        JR.declare "iFile" "" (JR.invoke "getFileInputStreamInstance_2" (JR.local "fileStreamFactory") [ (JR.thisField "filePath"), (JR.thisField "INITFILENAME") ]), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "iFile") JR.null) (JR.run [ 
                            JR.declare "iData" "" (JR.new AbDataInputStream.jnew_1 [ (JR.local "iFile") ]), 
                            JR.declare "initInfo" "" (JR.new LicenseInitInfo.jnew_0 []), 
                            JR.declare "decodedByteArray" "" (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ]), 
                            JR.declare "licenseIdDecoded" "" (JR.withState JR.newString [ (JR.local "decodedByteArray") ]), 
                            JR.exec (JR.invoke "setLicenseId_1" (JR.local "initInfo") [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 1) ]) [ (JR.local "licenseIdDecoded") ]) ]), 
                            JR.declare "numberOfLicenseServers" "I" (JR.invoke "readInt_0" (JR.local "iData") []), 
                            JR.declare "NEXT_FILE" "" (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NEXT" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.str " License Server From File: ") ]) []), 
                            JR.declare "licenseServerDecoded" "" (JR.lit (JR.defaultOf "")), 
                            JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "numberOfLicenseServers")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69947 -> (JR.setLocal "index" "I" (JR.lit jwN69947))) JR.increment) ]) (JR.run [ 
                                JR.exec (JR.setLocal "decodedByteArray" "" (JR.callStatic DatabaseEncoder.jm_decode_1 [ (JR.invoke "readUTF_0" (JR.local "iData") []) ])), 
                                JR.exec (JR.setLocal "licenseServerDecoded" "" (JR.withState JR.newString [ (JR.local "decodedByteArray") ])), 
                                JR.exec (JR.invoke "setServer_2" (JR.local "initInfo") [ (JR.invoke "decrypt_1" (JR.new WeakCrypt.jnew_1 [ (JR.int 3) ]) [ (JR.local "licenseServerDecoded") ]), (JR.local "index") ]), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.local "NEXT_FILE") (JR.invoke "getServer_1" (JR.local "initInfo") [ (JR.local "index") ])), JR.this, (JR.local "METHOD_NAME") ]) ]) ], 
                            JR.return (JR.local "initInfo") ]) (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.str "Could Not Load License InitInfo: ") (JR.thisField "INITFILENAME")) ]) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.try (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.str "Command Failed: ") (JR.thisField "INITFILENAME")), JR.this, (JR.local "METHOD_NAME"), (JR.local "e") ]) ]) [ ( [ "Exception" ], "e2", (JR.run [ 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.concat (JR.str "LicenseInitInfo Read Retry: ") (JR.thisField "INITFILENAME")), JR.this, (JR.str "readAgain()"), (JR.local "e2") ]) ]) ) ] identity, 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.str "LicenseInitInfo Read Error: ") (JR.thisField "INITFILENAME")) ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getFilePath_0 : JR.Method
jm_getFilePath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "filePath") ])
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

