module Org.Allbinary.Logic.System.Security.Licensing.LicenseServerInitFileUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.system.security.licensing
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Io.File.FileFactory as FileFactory
import Org.Allbinary.Logic.Io.FileStreamFactory as FileStreamFactory
import Org.Allbinary.Business.Init.LicenseInitInfoUtil as LicenseInitInfoUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Data.Resource.ResourceUtil as ResourceUtil
import Org.Allbinary.Logic.Io.File.SimpleFileUtil as SimpleFileUtil
import Org.Allbinary.Logic.Io.StreamUtil as StreamUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "LicenseServerInitFileUtil"


jchain : List String
jchain =
    [ "LicenseServerInitFileUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "NULL_OUTPUT_STREAM", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "write_0", jm_write_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LicenseServerInitFileUtil"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_write_0", jm_write_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "NULL_OUTPUT_STREAM" "" JR.this (JR.callStatic SimpleFileUtil.jm_nullOutputStream_0 [])),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "filePath" "" (JR.field "INITFILENAME" (JR.callStatic LicenseInitInfoUtil.jm_getInstance_0 [])), 
                        JR.exec (JR.invoke "setFilePath_1" (JR.callStatic LicenseInitInfoUtil.jm_getInstance_0 []) [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]), 
                        JR.ifElse (JR.invoke "isFile_1" (JR.callStatic FileFactory.jm_getInstance_0 []) [ (JR.local "filePath") ]) (JR.run [ 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Using Existing License File"), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]) ]) (JR.run [ 
                            JR.exec (JR.invoke "write_0" JR.this []) ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_write_0 : JR.Method
jm_write_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "fileOutputStream" "" (JR.thisField "NULL_OUTPUT_STREAM"), 
                    JR.try (JR.run [ 
                        JR.declare "resourceUtil" "" (JR.callStatic ResourceUtil.jm_getInstance_0 []), 
                        JR.declare "filePath" "" (JR.field "INITFILENAME" (JR.callStatic LicenseInitInfoUtil.jm_getInstance_0 [])), 
                        JR.declare "inputStream" "" (JR.invoke "getResourceAsStream_1" (JR.local "resourceUtil") [ (JR.local "filePath") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Writing Default License File"), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]), 
                        JR.declare "fileStreamFactory" "" (JR.callStatic FileStreamFactory.jm_getInstance_0 []), 
                        JR.exec (JR.setLocal "fileOutputStream" "" (JR.invoke "getFileOutputStreamInstance_2" (JR.local "fileStreamFactory") [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), (JR.local "filePath") ])), 
                        JR.declare "b" "I" (JR.lit (JR.defaultOf "I")), 
                        JR.declare "index" "I" (JR.int 0), 
                        JR.while (JR.bool True) (JR.run [ 
                            JR.exec (JR.setLocal "b" "I" (JR.invoke "read_0" (JR.local "inputStream") [])), 
                            JR.ifElse (JR.map2 JR.equals (JR.local "b") (JR.map JR.neg (JR.int 1))) (JR.run [ 
                                JR.break ]) identity, 
                            JR.exec (JR.invoke "write_1" (JR.local "fileOutputStream") [ (JR.local "b") ]), 
                            JR.exec (JR.postUpdate (JR.local "index") (\jwN68354 -> (JR.setLocal "index" "I" (JR.lit jwN68354))) JR.increment) ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Wrote Bytes: ") (JR.local "index")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")) ]), 
                        JR.exec (JR.invoke "flush_0" (JR.local "fileOutputStream") []) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "INIT" (JR.thisField "commonStrings")), (JR.local "e") ]) ]) ) ] (JR.run [ 
                        JR.exec (JR.invoke "close_1" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "fileOutputStream") ]) ]) ])
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

