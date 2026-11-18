module Org.Allbinary.Logic.Io.File.AbFile exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFileInterface as AbFileInterface
import Org.Allbinary.Logic.Io.Path.AbPath as AbPath
import JFile
import Org.Allbinary.Logic.String.StringUtil as StringUtil
import Org.Allbinary.TsUtil as TsUtil


jclass : String
jclass =
    "AbFile"


jchain : List String
jchain =
    [ "AbFile" ]
        ++ AbFileInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "file", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createAbFileWithChild_2", jm_createAbFileWithChild_2 )
        , ( "createAbFile_1", jm_createAbFile_1 )
        , ( "createAbFilePathAndName_2", jm_createAbFilePathAndName_2 )
        , ( "createAbFileFromAbPath_1", jm_createAbFileFromAbPath_1 )
        , ( "createAbFileFromRawPath_1", jm_createAbFileFromRawPath_1 )
        , ( "getFile_0", jm_getFile_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "getParent_0", jm_getParent_0 )
        , ( "getParentFile_0", jm_getParentFile_0 )
        , ( "getPath_0", jm_getPath_0 )
        , ( "isAbsolute_0", jm_isAbsolute_0 )
        , ( "getAbsolutePath_0", jm_getAbsolutePath_0 )
        , ( "getAbsoluteFile_0", jm_getAbsoluteFile_0 )
        , ( "getCanonicalPath_0", jm_getCanonicalPath_0 )
        , ( "getCanonicalFile_0", jm_getCanonicalFile_0 )
        , ( "toURI_0", jm_toURI_0 )
        , ( "canRead_0", jm_canRead_0 )
        , ( "canWrite_0", jm_canWrite_0 )
        , ( "exists_0", jm_exists_0 )
        , ( "isDirectory_0", jm_isDirectory_0 )
        , ( "isFile_0", jm_isFile_0 )
        , ( "isHidden_0", jm_isHidden_0 )
        , ( "lastModified_0", jm_lastModified_0 )
        , ( "length_0", jm_length_0 )
        , ( "createNewFile_0", jm_createNewFile_0 )
        , ( "delete_0", jm_delete_0 )
        , ( "deleteOnExit_0", jm_deleteOnExit_0 )
        , ( "list_0", jm_list_0 )
        , ( "listWithFilter_1", jm_listWithFilter_1 )
        , ( "listFiles_0", jm_listFiles_0 )
        , ( "listFilesFileNameFilter_1", jm_listFilesFileNameFilter_1 )
        , ( "listFilesFileFilter_1", jm_listFilesFileFilter_1 )
        , ( "mkdir_0", jm_mkdir_0 )
        , ( "mkdirs_0", jm_mkdirs_0 )
        , ( "renameTo_1", jm_renameTo_1 )
        , ( "setLastModified_1", jm_setLastModified_1 )
        , ( "setReadOnly_0", jm_setReadOnly_0 )
        , ( "setWritable_2", jm_setWritable_2 )
        , ( "setWritable_1", jm_setWritable_1 )
        , ( "setReadable_2", jm_setReadable_2 )
        , ( "setReadable_1", jm_setReadable_1 )
        , ( "setExecutable_2", jm_setExecutable_2 )
        , ( "setExecutable_1", jm_setExecutable_1 )
        , ( "canExecute_0", jm_canExecute_0 )
        , ( "getTotalSpace_0", jm_getTotalSpace_0 )
        , ( "getFreeSpace_0", jm_getFreeSpace_0 )
        , ( "getUsableSpace_0", jm_getUsableSpace_0 )
        , ( "compareTo_1", jm_compareTo_1 )
        , ( "equals_1", jm_equals_1 )
        , ( "hashCode_0", jm_hashCode_0 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbFile"
        [ ( "jm_createAbFileWithChild_2", jm_createAbFileWithChild_2 ), ( "jm_createAbFile_1", jm_createAbFile_1 ), ( "jm_createAbFilePathAndName_2", jm_createAbFilePathAndName_2 ), ( "jm_createAbFileFromAbPath_1", jm_createAbFileFromAbPath_1 ), ( "jm_createAbFileFromRawPath_1", jm_createAbFileFromRawPath_1 ), ( "jm_getFile_0", jm_getFile_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_getParent_0", jm_getParent_0 ), ( "jm_getParentFile_0", jm_getParentFile_0 ), ( "jm_getPath_0", jm_getPath_0 ), ( "jm_isAbsolute_0", jm_isAbsolute_0 ), ( "jm_getAbsolutePath_0", jm_getAbsolutePath_0 ), ( "jm_getAbsoluteFile_0", jm_getAbsoluteFile_0 ), ( "jm_getCanonicalPath_0", jm_getCanonicalPath_0 ), ( "jm_getCanonicalFile_0", jm_getCanonicalFile_0 ), ( "jm_toURI_0", jm_toURI_0 ), ( "jm_canRead_0", jm_canRead_0 ), ( "jm_canWrite_0", jm_canWrite_0 ), ( "jm_exists_0", jm_exists_0 ), ( "jm_isDirectory_0", jm_isDirectory_0 ), ( "jm_isFile_0", jm_isFile_0 ), ( "jm_isHidden_0", jm_isHidden_0 ), ( "jm_lastModified_0", jm_lastModified_0 ), ( "jm_length_0", jm_length_0 ), ( "jm_createNewFile_0", jm_createNewFile_0 ), ( "jm_delete_0", jm_delete_0 ), ( "jm_deleteOnExit_0", jm_deleteOnExit_0 ), ( "jm_list_0", jm_list_0 ), ( "jm_listWithFilter_1", jm_listWithFilter_1 ), ( "jm_listFiles_0", jm_listFiles_0 ), ( "jm_listFilesFileNameFilter_1", jm_listFilesFileNameFilter_1 ), ( "jm_listFilesFileFilter_1", jm_listFilesFileFilter_1 ), ( "jm_mkdir_0", jm_mkdir_0 ), ( "jm_mkdirs_0", jm_mkdirs_0 ), ( "jm_renameTo_1", jm_renameTo_1 ), ( "jm_setLastModified_1", jm_setLastModified_1 ), ( "jm_setReadOnly_0", jm_setReadOnly_0 ), ( "jm_setWritable_2", jm_setWritable_2 ), ( "jm_setWritable_1", jm_setWritable_1 ), ( "jm_setReadable_2", jm_setReadable_2 ), ( "jm_setReadable_1", jm_setReadable_1 ), ( "jm_setExecutable_2", jm_setExecutable_2 ), ( "jm_setExecutable_1", jm_setExecutable_1 ), ( "jm_canExecute_0", jm_canExecute_0 ), ( "jm_getTotalSpace_0", jm_getTotalSpace_0 ), ( "jm_getFreeSpace_0", jm_getFreeSpace_0 ), ( "jm_getUsableSpace_0", jm_getUsableSpace_0 ), ( "jm_compareTo_1", jm_compareTo_1 ), ( "jm_equals_1", jm_equals_1 ), ( "jm_hashCode_0", jm_hashCode_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_NULL_FILE", jstatic_NULL_FILE ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_FILE : JR.M
jstatic_NULL_FILE s =
    JR.static "AbFile" jclinit "NULL_FILE"
        (JR.callStatic jm_createAbFileFromRawPath_1 [ (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "file" "" JR.this (JR.local "file")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_createAbFileWithChild_2 : JR.Method
jm_createAbFileWithChild_2 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "childPathName", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.new JFile.jnew_2 [ (JR.invoke "getFile_0" (JR.local "file") []), (JR.local "childPathName") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createAbFile_1 : JR.Method
jm_createAbFile_1 jheap jthis jargs =
    JR.method [ ( "filePath", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.new JFile.jnew_1 [ (JR.invoke "toFileSystemString_0" (JR.new AbPath.jnew_2 [ (JR.local "filePath"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createAbFilePathAndName_2 : JR.Method
jm_createAbFilePathAndName_2 jheap jthis jargs =
    JR.method [ ( "filePath", "" ), ( "fileName", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.new JFile.jnew_2 [ (JR.invoke "toFileSystemString_0" (JR.new AbPath.jnew_2 [ (JR.local "filePath"), (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ]) []), (JR.local "fileName") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createAbFileFromAbPath_1 : JR.Method
jm_createAbFileFromAbPath_1 jheap jthis jargs =
    JR.method [ ( "abPath", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.new JFile.jnew_1 [ (JR.invoke "toFileSystemString_0" (JR.local "abPath") []) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createAbFileFromRawPath_1 : JR.Method
jm_createAbFileFromRawPath_1 jheap jthis jargs =
    JR.method [ ( "filePath", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.new JFile.jnew_1 [ (JR.local "filePath") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFile_0 : JR.Method
jm_getFile_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "file") ])
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getName_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getParent_0 : JR.Method
jm_getParent_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getParent_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getParentFile_0 : JR.Method
jm_getParentFile_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getParentFile_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getPath_0 : JR.Method
jm_getPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getPath_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_isAbsolute_0 : JR.Method
jm_isAbsolute_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isAbsolute_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getAbsolutePath_0 : JR.Method
jm_getAbsolutePath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getAbsolutePath_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getAbsoluteFile_0 : JR.Method
jm_getAbsoluteFile_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getAbsoluteFile_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getCanonicalPath_0 : JR.Method
jm_getCanonicalPath_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getCanonicalPath_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getCanonicalFile_0 : JR.Method
jm_getCanonicalFile_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getCanonicalFile_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_toURI_0 : JR.Method
jm_toURI_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toURI_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_canRead_0 : JR.Method
jm_canRead_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "canRead_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_canWrite_0 : JR.Method
jm_canWrite_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "canWrite_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_exists_0 : JR.Method
jm_exists_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "exists_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_isDirectory_0 : JR.Method
jm_isDirectory_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isDirectory_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_isFile_0 : JR.Method
jm_isFile_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isFile_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_isHidden_0 : JR.Method
jm_isHidden_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isHidden_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_lastModified_0 : JR.Method
jm_lastModified_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.invoke "lastModified_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_length_0 : JR.Method
jm_length_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.cast "J" (JR.invoke "length_0" (JR.thisField "file") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_createNewFile_0 : JR.Method
jm_createNewFile_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "createNewFile_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_delete_0 : JR.Method
jm_delete_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "delete_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_deleteOnExit_0 : JR.Method
jm_deleteOnExit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "deleteOnExit_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_list_0 : JR.Method
jm_list_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "list_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_listWithFilter_1 : JR.Method
jm_listWithFilter_1 jheap jthis jargs =
    JR.method [ ( "filter", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "list_1" (JR.thisField "file") [ (JR.local "filter") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_listFiles_0 : JR.Method
jm_listFiles_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "listFiles_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_listFilesFileNameFilter_1 : JR.Method
jm_listFilesFileNameFilter_1 jheap jthis jargs =
    JR.method [ ( "filter", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "listFiles_1" (JR.thisField "file") [ (JR.local "filter") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_listFilesFileFilter_1 : JR.Method
jm_listFilesFileFilter_1 jheap jthis jargs =
    JR.method [ ( "filter", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "listFiles_1" (JR.thisField "file") [ (JR.local "filter") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_mkdir_0 : JR.Method
jm_mkdir_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "mkdir_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_mkdirs_0 : JR.Method
jm_mkdirs_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "mkdirs_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_renameTo_1 : JR.Method
jm_renameTo_1 jheap jthis jargs =
    JR.method [ ( "dest", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "renameTo_1" (JR.thisField "file") [ (JR.invoke "getFile_0" (JR.local "dest") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setLastModified_1 : JR.Method
jm_setLastModified_1 jheap jthis jargs =
    JR.method [ ( "time", "J" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "setLastModified_1" (JR.thisField "file") [ (JR.local "time") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setReadOnly_0 : JR.Method
jm_setReadOnly_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "setReadOnly_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_setWritable_2 : JR.Method
jm_setWritable_2 jheap jthis jargs =
    JR.method [ ( "writable", "Z" ), ( "ownerOnly", "Z" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "setExecutable_2" (JR.thisField "file") [ (JR.local "writable"), (JR.local "ownerOnly") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setWritable_1 : JR.Method
jm_setWritable_1 jheap jthis jargs =
    JR.method [ ( "writable", "Z" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "setWritable_1" (JR.thisField "file") [ (JR.local "writable") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setReadable_2 : JR.Method
jm_setReadable_2 jheap jthis jargs =
    JR.method [ ( "readable", "Z" ), ( "ownerOnly", "Z" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "setReadable_2" (JR.thisField "file") [ (JR.local "readable"), (JR.local "ownerOnly") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setReadable_1 : JR.Method
jm_setReadable_1 jheap jthis jargs =
    JR.method [ ( "readable", "Z" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "setReadable_1" (JR.thisField "file") [ (JR.local "readable") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setExecutable_2 : JR.Method
jm_setExecutable_2 jheap jthis jargs =
    JR.method [ ( "executable", "Z" ), ( "ownerOnly", "Z" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "setExecutable_2" (JR.thisField "file") [ (JR.local "executable"), (JR.local "ownerOnly") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setExecutable_1 : JR.Method
jm_setExecutable_1 jheap jthis jargs =
    JR.method [ ( "executable", "Z" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "setExecutable_1" (JR.thisField "file") [ (JR.local "executable") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_canExecute_0 : JR.Method
jm_canExecute_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "canExecute_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getTotalSpace_0 : JR.Method
jm_getTotalSpace_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.invoke "getTotalSpace_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getFreeSpace_0 : JR.Method
jm_getFreeSpace_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.invoke "getFreeSpace_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_getUsableSpace_0 : JR.Method
jm_getUsableSpace_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.invoke "getUsableSpace_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_compareTo_1 : JR.Method
jm_compareTo_1 jheap jthis jargs =
    JR.method [ ( "pathname", "" ) ] "I"
        (JR.run [ 
                    JR.return (JR.invoke "compareTo_1" (JR.thisField "file") [ (JR.local "pathname") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_equals_1 : JR.Method
jm_equals_1 jheap jthis jargs =
    JR.method [ ( "obj", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "equalsNotstring_2" (JR.callStatic TsUtil.jm_getInstance_0 []) [ (JR.thisField "file"), (JR.local "obj") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_hashCode_0 : JR.Method
jm_hashCode_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.invoke "hashCode_0" (JR.thisField "file") []) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "toString_0" (JR.thisField "file") []) ])
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

