module Org.Allbinary.Logic.Io.File.FileUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Logic.Io.AbFileInputStream as AbFileInputStream
import Org.Allbinary.Logic.Io.AbFileLocalInputStream as AbFileLocalInputStream
import Org.Allbinary.Logic.Io.AbIOSystem as AbIOSystem
import Org.Allbinary.Logic.Io.Path.AbPath as AbPath
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Io.DataOutputStreamFactory as DataOutputStreamFactory
import Org.Allbinary.Logic.Io.File.Directory.Directory as Directory
import Org.Allbinary.Logic.Io.File.FilePathData as FilePathData
import Org.Allbinary.Logic.Io.File.FileUtil2 as FileUtil2
import Org.Allbinary.Logic.Io.File.FileWrapperUtil as FileWrapperUtil
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypeFactory as LogConfigTypeFactory
import Org.Allbinary.Logic.Communication.Log.Config.Type.LogConfigTypes as LogConfigTypes
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Io.StreamUtil as StreamUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.Globals.URLGLOBALS as URLGLOBALS


jclass : String
jclass =
    "FileUtil"


jchain : List String
jchain =
    [ "FileUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "directory", JR.defaultOf "" ), ( "logConfigTypeFactory", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "streamUtil", JR.defaultOf "" ), ( "WRITE_LABEL", JR.defaultOf "" ), ( "DATA_LABEL", JR.defaultOf "" ), ( "WRITE_METHOD", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "write_2", jm_write_2 )
        , ( "write_3", jm_write_3 )
        , ( "copy_2", jm_copy_2 )
        , ( "fixPath_4", jm_fixPath_4 )
        , ( "copyToCloud_4", jm_copyToCloud_4 )
        , ( "copyToCloud_6", jm_copyToCloud_6 )
        , ( "copyToCloud_2", jm_copyToCloud_2 )
        , ( "copyPrepare_4", jm_copyPrepare_4 )
        , ( "copyFile_2", jm_copyFile_2 )
        , ( "copyFile_4", jm_copyFile_4 )
        , ( "getNewDirectory_1", jm_getNewDirectory_1 )
        , ( "copyDirectoryPortion_6", jm_copyDirectoryPortion_6 )
        , ( "copyDirectory_2", jm_copyDirectory_2 )
        , ( "shouldSkip_2", jm_shouldSkip_2 )
        , ( "loadFileAsList_3", jm_loadFileAsList_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FileUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_write_2", jm_write_2 ), ( "jm_write_3", jm_write_3 ), ( "jm_copy_2", jm_copy_2 ), ( "jm_fixPath_4", jm_fixPath_4 ), ( "jm_copyToCloud_4", jm_copyToCloud_4 ), ( "jm_copyToCloud_6", jm_copyToCloud_6 ), ( "jm_copyToCloud_2", jm_copyToCloud_2 ), ( "jm_copyPrepare_4", jm_copyPrepare_4 ), ( "jm_copyFile_2", jm_copyFile_2 ), ( "jm_copyFile_4", jm_copyFile_4 ), ( "jm_getNewDirectory_1", jm_getNewDirectory_1 ), ( "jm_copyDirectoryPortion_6", jm_copyDirectoryPortion_6 ), ( "jm_copyDirectory_2", jm_copyDirectory_2 ), ( "jm_shouldSkip_2", jm_shouldSkip_2 ), ( "jm_loadFileAsList_3", jm_loadFileAsList_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FileUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "directory" "" JR.this (JR.callStatic Directory.jm_getInstance_0 [])),
                JR.exec (JR.setField "logConfigTypeFactory" "" JR.this (JR.callStatic LogConfigTypeFactory.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "streamUtil" "" JR.this (JR.callStatic StreamUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "WRITE_LABEL" "" JR.this (JR.str "Write file: ")),
                JR.exec (JR.setField "DATA_LABEL" "" JR.this (JR.str " data: ")),
                JR.exec (JR.setField "WRITE_METHOD" "" JR.this (JR.str "write")),
                identity,
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


jm_write_2 : JR.Method
jm_write_2 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ), ( "file", "" ) ] ""
        (JR.run [ 
                    JR.declare "dataOutputStream" "" (JR.invoke "getInstanceForAbFile_1" (JR.callStatic DataOutputStreamFactory.jm_getInstance_0 []) [ (JR.local "file") ]), 
                    JR.exec (JR.invoke "write_2" JR.this [ (JR.local "inputStream"), (JR.local "dataOutputStream") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_write_3 : JR.Method
jm_write_3 jheap jthis jargs =
    JR.method [ ( "inputStream", "" ), ( "dataOutputStream", "" ), ( "buffer", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "dataOutputStream" "" (JR.invoke "get_3" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "inputStream"), (JR.local "dataOutputStream"), (JR.local "buffer") ])), 
                        JR.exec (JR.invoke "flush_0" (JR.local "dataOutputStream") []) ]) [  ] (JR.run [ 
                        JR.exec (JR.invoke "close_1" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "dataOutputStream") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_copy_2 : JR.Method
jm_copy_2 jheap jthis jargs =
    JR.method [ ( "dataInputStream", "" ), ( "dataOutputStream", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "dataOutputStream" "" (JR.invoke "get_3" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "dataInputStream"), (JR.local "dataOutputStream"), (JR.newArray "B" [ (JR.int 16384) ]) ])), 
                        JR.exec (JR.invoke "flush_0" (JR.local "dataOutputStream") []) ]) [  ] (JR.run [ 
                        JR.exec (JR.invoke "close_1" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "dataOutputStream") ]), 
                        JR.exec (JR.invoke "close_1" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "dataInputStream") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_fixPath_4 : JR.Method
jm_fixPath_4 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "path", "" ), ( "realPath", "" ), ( "cloud", "" ) ] ""
        (JR.run [ 
                    JR.declare "beginIndex" "I" (JR.map2 JR.add (JR.invoke "indexOf_1" (JR.invoke "getPath_0" (JR.local "file") []) [ (JR.local "cloud") ]) (JR.invoke "length_0" (JR.local "cloud") [])), 
                    JR.declare "endIndex" "I" (JR.invoke "indexOf_1" (JR.invoke "getPath_0" (JR.local "file") []) [ (JR.invoke "getName_0" (JR.local "file") []) ]), 
                    JR.declare "fixedPathString" "" (JR.concat (JR.invoke "toFileSystemString_0" (JR.local "realPath") []) (JR.invoke "substring_2" (JR.invoke "getPath_0" (JR.local "file") []) [ (JR.local "beginIndex"), (JR.local "endIndex") ])), 
                    JR.declare "fixedPath" "" (JR.new AbPath.jnew_2 [ (JR.local "fixedPathString"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "create_1" (JR.thisField "directory") [ (JR.local "fixedPath") ]), 
                    JR.declare "string" "" (JR.invoke "toFileSystemString_0" (JR.local "fixedPath") []), 
                    JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILE" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.local "string"), JR.this, (JR.str "fixPath") ]) ]) identity, 
                    JR.declare "outPath" "" (JR.new AbPath.jnew_2 [ (JR.local "string"), (JR.invoke "getName_0" (JR.local "file") []) ]), 
                    JR.return (JR.local "outPath") ])
        (jregister jheap)
        jthis
        jargs


jm_copyToCloud_4 : JR.Method
jm_copyToCloud_4 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "path", "" ), ( "realPath", "" ), ( "cloud", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "copyToCloud_6" JR.this [ (JR.local "file"), (JR.local "path"), (JR.local "realPath"), (JR.local "cloud"), (JR.bool False), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_copyToCloud_6 : JR.Method
jm_copyToCloud_6 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "path", "" ), ( "realPath", "" ), ( "cloud", "" ), ( "overwriteNewer", "Z" ), ( "overwriteAll", "Z" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "outPath" "" (JR.invoke "fixPath_4" JR.this [ (JR.local "file"), (JR.local "path"), (JR.local "realPath"), (JR.local "cloud") ]), 
                        JR.declare "outFile" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "outPath") ]), 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "copyPrepare_4" JR.this [ (JR.local "file"), (JR.local "outFile"), (JR.local "overwriteNewer"), (JR.local "overwriteAll") ])) (JR.run [ 
                            JR.returnVoid ]) (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILE" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                                JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Out File: ") ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "outFile") []) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " In File: ") ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "file") []) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " to cloud.") ]), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copyToCloud") ]) ]) identity ]), 
                        JR.declare "dataOutputStream" "" (JR.invoke "getInstanceForAbFile_1" (JR.callStatic DataOutputStreamFactory.jm_getInstance_0 []) [ (JR.local "outFile") ]), 
                        JR.declare "fileInputStream" "" (JR.new AbFileLocalInputStream.jnew_1 [ (JR.local "file") ]), 
                        JR.exec (JR.invoke "copy_2" JR.this [ (JR.local "fileInputStream"), (JR.local "dataOutputStream") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILEERROR" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                            JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Error Copying File File: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "file") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " to cloud.") ]), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copyToCloud"), (JR.local "e") ]) ]) identity, 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_copyToCloud_2 : JR.Method
jm_copyToCloud_2 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "outFile", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "copyToCloud_4" JR.this [ (JR.local "file"), (JR.local "outFile"), (JR.bool False), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_copyPrepare_4 : JR.Method
jm_copyPrepare_4 jheap jthis jargs =
    JR.method [ ( "fromFile", "" ), ( "toFile", "" ), ( "overwriteNewer", "Z" ), ( "overwriteAll", "Z" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "exists_0" (JR.local "toFile") []) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.ifElse (JR.local "overwriteAll") (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILE" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                                JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Overwriting File: ") ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "toFile") []) ]), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copyFile") ]) ]) identity, 
                            JR.exec (JR.invoke "delete_0" (JR.local "toFile") []), 
                            JR.exec (JR.invoke "createNewFile_0" (JR.local "toFile") []) ]) (JR.run [ 
                        JR.ifElse (JR.and (JR.map2 JR.less (JR.invoke "lastModified_0" (JR.local "toFile") []) (JR.invoke "lastModified_0" (JR.local "fromFile") [])) (JR.local "overwriteNewer")) (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILE" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                                JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Newer by: ") ]), 
                                JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.map2 JR.sub (JR.invoke "lastModified_0" (JR.local "fromFile") []) (JR.invoke "lastModified_0" (JR.local "toFile") [])) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "ms ") ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Copying File: ") ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "toFile") []) ]), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copyFile") ]) ]) identity, 
                            JR.exec (JR.invoke "delete_0" (JR.local "toFile") []), 
                            JR.exec (JR.invoke "createNewFile_0" (JR.local "toFile") []) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILE" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                                JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "File Already Exists") ]), 
                                JR.ifElse (JR.local "overwriteNewer") (JR.run [ 
                                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " And Is Not Older") ]) ]) (JR.run [ 
                                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " And Not A In Overwrite Mode") ]) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "COLON_SEP" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "toFile") []) ]), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copyFile") ]) ]) identity, 
                            JR.return (JR.bool False) ]) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "createNewFile_0" (JR.local "toFile") []) ]), 
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_copyFile_2 : JR.Method
jm_copyFile_2 jheap jthis jargs =
    JR.method [ ( "fromFile", "" ), ( "toFile", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "copyFile_4" JR.this [ (JR.local "fromFile"), (JR.local "toFile"), (JR.bool False), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_copyFile_4 : JR.Method
jm_copyFile_4 jheap jthis jargs =
    JR.method [ ( "fromFile", "" ), ( "toFile", "" ), ( "overwriteNewer", "Z" ), ( "overwriteAll", "Z" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILE" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                            JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Copying ") ]), 
                            JR.exec (JR.invoke "appendlong_1" (JR.local "stringBuffer") [ (JR.cast "J" (JR.invoke "length_0" (JR.local "fromFile") [])) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " bytes from File: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "fromFile") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " to: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "toFile") []) ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copyFile") ]) ]) identity, 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "copyPrepare_4" JR.this [ (JR.local "fromFile"), (JR.local "toFile"), (JR.local "overwriteNewer"), (JR.local "overwriteAll") ])) (JR.run [ 
                            JR.returnVoid ]) identity, 
                        JR.declare "dataOutputStream" "" (JR.invoke "getInstanceForAbFile_1" (JR.callStatic DataOutputStreamFactory.jm_getInstance_0 []) [ (JR.local "toFile") ]), 
                        JR.declare "fileInputStream" "" (JR.callStatic AbFileInputStream.jm_createFromAbFile_1 [ (JR.local "fromFile") ]), 
                        JR.exec (JR.invoke "copy_2" JR.this [ (JR.local "fileInputStream"), (JR.local "dataOutputStream") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILEERROR" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                            JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Error Copying File fromFile: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "fromFile") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " to: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "toFile") []) ]), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copyFile"), (JR.local "e") ]) ]) identity, 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_getNewDirectory_1 : JR.Method
jm_getNewDirectory_1 jheap jthis jargs =
    JR.method [ ( "fromFile", "" ) ] ""
        (JR.run [ 
                    JR.declare "newDirectory" "" (JR.invoke "getPath_0" (JR.local "fromFile") []), 
                    JR.declare "separatorChar" "" (JR.field "PATH_START" (JR.callStatic FilePathData.jm_getInstance_0 [])), 
                    JR.ifElse (JR.invoke "isType_1" (JR.callStatic AbIOSystem.jm_getInstance_0 []) [ (JR.str "com.vobject.appengine.java.io") ]) (JR.run [ 
                        JR.exec (JR.setLocal "separatorChar" "" (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 []))) ]) identity, 
                    JR.declare "lastIndex" "I" (JR.invoke "lastIndexOf_1" (JR.local "newDirectory") [ (JR.local "separatorChar") ]), 
                    JR.ifElse (JR.map2 JR.greaterEquals (JR.local "lastIndex") (JR.invoke "length_0" (JR.local "newDirectory") [])) (JR.run [ 
                        JR.exec (JR.setLocal "newDirectory" "" (JR.invoke "substring_2" (JR.local "newDirectory") [ (JR.int 0), (JR.map2 JR.sub (JR.invoke "length_0" (JR.local "newDirectory") []) (JR.int 1)) ])), 
                        JR.exec (JR.setLocal "lastIndex" "I" (JR.invoke "lastIndexOf_1" (JR.local "newDirectory") [ (JR.local "separatorChar") ])) ]) identity, 
                    JR.return (JR.invoke "substring_2" (JR.local "newDirectory") [ (JR.local "lastIndex"), (JR.invoke "length_0" (JR.local "newDirectory") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_copyDirectoryPortion_6 : JR.Method
jm_copyDirectoryPortion_6 jheap jthis jargs =
    JR.method [ ( "fromDirectoryAbPath", "" ), ( "toDirectoryAbPath", "" ), ( "overwriteNewer", "Z" ), ( "overwriteAll", "Z" ), ( "current", "I" ), ( "total", "I" ) ] ""
        (JR.run [ 
                    JR.declare "file" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "fromDirectoryAbPath") ]), 
                    JR.ifElse (JR.map JR.not_ (JR.invoke "isDirectory_0" (JR.local "file") [])) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.str "Not a directory: ") (JR.invoke "getPath_0" (JR.local "file") [])) ]) ]) identity, 
                    JR.declare "fileList" "" (JR.invoke "search_2" (JR.thisField "directory") [ (JR.local "file"), (JR.bool True) ]), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "fileList") []), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Searched: ") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "file") []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Total: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "size") ]), 
                    JR.declare "portion" "I" (JR.map2 JR.add (JR.map2 JR.div (JR.local "size") (JR.local "total")) (JR.int 1)), 
                    JR.declare "start" "I" (JR.map2 JR.mul (JR.local "portion") (JR.local "current")), 
                    JR.declare "end" "I" (JR.map2 JR.add (JR.local "start") (JR.local "portion")), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "end") (JR.local "size")) (JR.run [ 
                        JR.exec (JR.setLocal "end" "I" (JR.local "size")) ]) identity, 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Section: ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "start") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " - ") ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "end") ]), 
                    JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILE" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copySomeFilesToDirectory()") ]) ]) identity, 
                    JR.declare "nextFile" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.local "start"), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "end")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN78234 -> (JR.setLocal "index" "I" (JR.lit jwN78234))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "nextFile" "" (JR.invoke "get_1" (JR.local "fileList") [ (JR.local "index") ])), 
                        JR.ifElse (JR.invoke "isDirectory_0" (JR.local "nextFile") []) identity (JR.run [ 
                            JR.declare "path" "" (JR.invoke "getPath_0" (JR.new AbPath.jnew_2 [ (JR.invoke "getPath_0" (JR.local "nextFile") []), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) []), 
                            JR.declare "beginIndex" "I" (JR.invoke "length_0" (JR.invoke "getPath_0" (JR.local "fromDirectoryAbPath") []) []), 
                            JR.ifElse (JR.map2 JR.less (JR.invoke "indexOf_1" (JR.local "path") [ (JR.callStatic URLGLOBALS.jm_getWebappPath_0 []) ]) (JR.int 0)) (JR.run [ 
                                JR.exec (JR.setLocal "beginIndex" "I" (JR.map2 JR.sub (JR.local "beginIndex") (JR.invoke "length_0" (JR.invoke "getPath_0" (JR.new AbPath.jnew_2 [ (JR.callStatic URLGLOBALS.jm_getWebappPath_0 []), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) []) []))) ]) identity, 
                            JR.declare "newPath" "" (JR.concat (JR.invoke "toFileSystemString_0" (JR.local "toDirectoryAbPath") []) (JR.invoke "substring_1" (JR.local "path") [ (JR.local "beginIndex") ])), 
                            JR.declare "toFile" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.new AbPath.jnew_2 [ (JR.local "newPath"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) ]), 
                            JR.exec (JR.invoke "copyFile_4" JR.this [ (JR.local "nextFile"), (JR.local "toFile"), (JR.local "overwriteNewer"), (JR.local "overwriteAll") ]) ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_copyDirectory_2 : JR.Method
jm_copyDirectory_2 jheap jthis jargs =
    JR.method [ ( "fromFile", "" ), ( "to", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILE" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                            JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Copying Directory from: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "fromFile") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " to: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "to") []) ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copyDirectory") ]) ]) identity, 
                        JR.declare "newDirectory" "" (JR.callStatic jm_getNewDirectory_1 [ (JR.local "fromFile") ]), 
                        JR.declare "newDirectoryAbPath" "" (JR.new AbPath.jnew_2 [ (JR.concat (JR.concat (JR.invoke "getPath_0" (JR.local "to") []) (JR.field "SEPARATOR" (JR.callStatic AbPathData.jm_getInstance_0 []))) (JR.local "newDirectory")), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]), 
                        JR.ifElse (JR.map JR.not_ (JR.invoke "create_1" (JR.thisField "directory") [ (JR.local "newDirectoryAbPath") ])) (JR.run [ 
                            JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.concat (JR.str "Failed to create directory: ") (JR.local "newDirectoryAbPath")) ]) ]) identity, 
                        JR.declare "fileArray" "" (JR.callStatic FileWrapperUtil.jm_wrapFiles_1 [ (JR.invoke "listFiles_0" (JR.local "fromFile") []) ]), 
                        JR.declare "size" "I" (JR.alength (JR.local "fileArray")), 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILE" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                            JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Copying ") ]), 
                            JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "size") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " files from: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "fromFile") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " to: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "to") []) ]), 
                            JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copyDirectory") ]) ]) identity, 
                        JR.declare "file" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN79799 -> (JR.setLocal "index" "I" (JR.lit jwN79799))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "file" "" (JR.aget (JR.local "fileArray") (JR.local "index"))), 
                            JR.ifElse (JR.invoke "isFile_0" (JR.local "file") []) (JR.run [ 
                                JR.exec (JR.invoke "copyFile_2" JR.this [ (JR.local "file"), (JR.callStatic AbFile.jm_createAbFilePathAndName_2 [ (JR.invoke "toString_0" (JR.local "newDirectoryAbPath") []), (JR.invoke "getName_0" (JR.local "file") []) ]) ]) ]) (JR.run [ 
                            JR.ifElse (JR.invoke "isDirectory_0" (JR.local "file") []) (JR.run [ 
                                JR.exec (JR.invoke "copyDirectory_2" JR.this [ (JR.local "file"), (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "newDirectoryAbPath") ]) ]) ]) (JR.run [ 
                                JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.str "File Copy Error") ]) ]) ]) ]) ] ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.ifElse (JR.invoke "contains_1" LogConfigTypes.jstatic_LOGGING [ (JR.field "FILEERROR" (JR.thisField "logConfigTypeFactory")) ]) (JR.run [ 
                            JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Error Copying Directory fromFile: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "fromFile") []) ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " to: ") ]), 
                            JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "to") []) ]), 
                            JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.callStatic jm_getInstance_0 []), (JR.str "copyDirectory"), (JR.local "e") ]) ]) identity, 
                        JR.throw (JR.local "e") ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_shouldSkip_2 : JR.Method
jm_shouldSkip_2 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "skipFiles", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "size" "I" (JR.alength (JR.local "skipFiles")), 
                    JR.declare "skipFile" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN83387 -> (JR.setLocal "index" "I" (JR.lit jwN83387))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "skipFile" "" (JR.aget (JR.local "skipFiles") (JR.local "index"))), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.invoke "getPath_0" (JR.local "file") []) [ (JR.local "skipFile") ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.bool True) ]) identity ]) ], 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_loadFileAsList_3 : JR.Method
jm_loadFileAsList_3 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "max", "I" ), ( "byteArray1", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "loadFileAsList_3" (JR.callStatic FileUtil2.jm_getInstance_0 []) [ (JR.local "file"), (JR.local "max"), (JR.local "byteArray1") ]) ])
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

