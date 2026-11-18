module Org.Allbinary.Logic.Io.File.Zip.ZipFileUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.zip
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Logic.Io.AbFileInputStream as AbFileInputStream
import Org.Allbinary.Logic.Io.AbFileOutputStream as AbFileOutputStream
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Io.DataOutputStreamFactory as DataOutputStreamFactory
import Org.Allbinary.Logic.Io.File.FileUtil as FileUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.Io.StreamUtil as StreamUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "ZipFileUtil"


jchain : List String
jchain =
    [ "ZipFileUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "create_2", jm_create_2 )
        , ( "unzip_3", jm_unzip_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ZipFileUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_create_2", jm_create_2 ), ( "jm_unzip_3", jm_unzip_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "ZipFileUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
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


jm_create_2 : JR.Method
jm_create_2 jheap jthis jargs =
    JR.method [ ( "outFilename", "" ), ( "fileBasicArrayList", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "zipFile" "" (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "outFilename") ]), 
                        JR.ifElse (JR.invoke "exists_0" (JR.local "zipFile") []) (JR.run [ 
                            JR.exec (JR.invoke "delete_0" (JR.local "zipFile") []) ]) identity, 
                        JR.exec (JR.invoke "createNewFile_0" (JR.local "zipFile") []), 
                        JR.declare "outputStream" "" (JR.new (JR.namedMethod "ZipOutputStream.jnew_1") [ (JR.callStatic AbFileOutputStream.jm_createFromAbFile_1 [ (JR.local "zipFile") ]) ]), 
                        JR.declare "streamUtil" "" (JR.callStatic StreamUtil.jm_getInstance_0 []), 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.declare "byteArray" "" (JR.newArray "B" [ (JR.int 16384) ]), 
                        JR.declare "fileInputStream" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "size" "I" (JR.invoke "size_0" (JR.local "fileBasicArrayList") []), 
                        JR.declare "current" "I" (JR.int 0), 
                        JR.run [ JR.declare "i" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "i") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "i") (\jwN69612 -> (JR.setLocal "i" "I" (JR.lit jwN69612))) JR.increment) ]) (JR.run [ 
                            JR.declare "file" "" (JR.invoke "get_1" (JR.local "fileBasicArrayList") [ (JR.local "i") ]), 
                            JR.ifElse (JR.invoke "isDirectory_0" (JR.local "file") []) identity (JR.run [ 
                            JR.ifElse (JR.invoke "isFile_0" (JR.local "file") []) (JR.run [ 
                                JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                                JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "current") ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " Creating Zip File Entry: ") ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getPath_0" (JR.local "file") []) ]), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "create()") ]), 
                                JR.try (JR.run [ 
                                    JR.exec (JR.setLocal "fileInputStream" "" (JR.callStatic AbFileInputStream.jm_createFromAbFile_1 [ (JR.local "file") ])), 
                                    JR.exec (JR.invoke "putNextEntry_1" (JR.local "outputStream") [ (JR.new (JR.namedMethod "ZipEntry.jnew_1") [ (JR.invoke "getPath_0" (JR.local "file") []) ]) ]), 
                                    JR.exec (JR.invoke "get_3" (JR.local "streamUtil") [ (JR.local "fileInputStream"), (JR.local "outputStream"), (JR.local "byteArray") ]), 
                                    JR.exec (JR.invoke "closeEntry_0" (JR.local "outputStream") []), 
                                    JR.exec (JR.invoke "close_1" (JR.local "streamUtil") [ (JR.local "fileInputStream") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                                    JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.concat (JR.str "Skipping File (Probably Local): ") (JR.invoke "getPath_0" (JR.local "file") [])), JR.this, (JR.str "create()") ]) ]) ) ] identity ]) identity ]), 
                            JR.exec (JR.postUpdate (JR.local "current") (\jwN69547 -> (JR.setLocal "current" "I" (JR.lit jwN69547))) JR.increment) ]) ], 
                        JR.exec (JR.invoke "close_1" (JR.local "streamUtil") [ (JR.local "outputStream") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "create"), (JR.local "e") ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_unzip_3 : JR.Method
jm_unzip_3 jheap jthis jargs =
    JR.method [ ( "path", "" ), ( "zipFile", "" ), ( "fileName", "" ) ] ""
        (JR.run [ 
                    JR.declare "buffer" "" (JR.newArray "B" [ (JR.int 16384) ]), 
                    JR.declare "inputStream" "" JR.null, 
                    JR.try (JR.run [ 
                        JR.exec (JR.setLocal "inputStream" "" (JR.new (JR.namedMethod "ZipInputStream.jnew_1") [ (JR.callStatic AbFileInputStream.jm_createFromAbFile_1 [ (JR.local "zipFile") ]) ])), 
                        JR.declare "zipEntry" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.declare "fileUtil" "" (JR.callStatic FileUtil.jm_getInstance_0 []), 
                        JR.while (JR.map2 JR.notEquals ((JR.setLocal "zipEntry" "" (JR.invoke "getNextEntry_0" (JR.local "inputStream") []))) JR.null) (JR.run [ 
                            JR.declare "entryName" "" (JR.invoke "getName_0" (JR.local "zipEntry") []), 
                            JR.ifElse (JR.invoke "isDirectory_0" (JR.local "zipEntry") []) identity (JR.run [ 
                                JR.declare "entryFile" "" (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.concat (JR.local "path") (JR.local "entryName")) ]), 
                                JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "ZipEntry Name: ") ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.local "entryName") ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " isFile: ") ]), 
                                JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isFile_0" (JR.local "entryFile") []) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " isDirectory: ") ]), 
                                JR.exec (JR.invoke "appendboolean_1" (JR.local "stringBuffer") [ (JR.invoke "isDirectory_0" (JR.local "entryFile") []) ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " getParent: ") ]), 
                                JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "getParent_0" (JR.local "entryFile") []) ]), 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this, (JR.str "unzip") ]), 
                                JR.declare "dataOutputStream" "" (JR.invoke "getInstanceForAbFile_1" (JR.callStatic DataOutputStreamFactory.jm_getInstance_0 []) [ (JR.local "entryFile") ]), 
                                JR.exec (JR.invoke "write_3" (JR.local "fileUtil") [ (JR.local "inputStream"), (JR.local "dataOutputStream"), (JR.local "buffer") ]) ]), 
                            JR.exec (JR.invoke "closeEntry_0" (JR.local "inputStream") []) ]) ]) [  ] (JR.run [ 
                        JR.exec (JR.invoke "close_1" (JR.callStatic StreamUtil.jm_getInstance_0 []) [ (JR.local "inputStream") ]) ]) ])
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

