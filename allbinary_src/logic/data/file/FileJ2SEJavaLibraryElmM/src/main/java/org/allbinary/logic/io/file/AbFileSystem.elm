module Org.Allbinary.Logic.Io.File.AbFileSystem exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.String.CommonStrings as CommonStrings
import JFile
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.NullUtil as NullUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "AbFileSystem"


jchain : List String
jchain =
    [ "AbFileSystem" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "isDirectoryOrFile_1", jm_isDirectoryOrFile_1 )
        , ( "isDirectory_1", jm_isDirectory_1 )
        , ( "getFilesAsStringArrayForPath_1", jm_getFilesAsStringArrayForPath_1 )
        , ( "readAsString_1", jm_readAsString_1 )
        , ( "readAsString_2", jm_readAsString_2 )
        , ( "close_1", jm_close_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbFileSystem"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_isDirectoryOrFile_1", jm_isDirectoryOrFile_1 ), ( "jm_isDirectory_1", jm_isDirectory_1 ), ( "jm_getFilesAsStringArrayForPath_1", jm_getFilesAsStringArrayForPath_1 ), ( "jm_readAsString_1", jm_readAsString_1 ), ( "jm_readAsString_2", jm_readAsString_2 ), ( "jm_close_1", jm_close_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "AbFileSystem" jclinit "instance"
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


jm_isDirectoryOrFile_1 : JR.Method
jm_isDirectoryOrFile_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "file" "" (JR.new JFile.jnew_1 [ (JR.local "path") ]), 
                    JR.return (JR.or (JR.invoke "isDirectory_0" (JR.local "file") []) (JR.invoke "isFile_0" (JR.local "file") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_isDirectory_1 : JR.Method
jm_isDirectory_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isDirectory_0" (JR.new JFile.jnew_1 [ (JR.local "path") ]) []) ])
        (jregister jheap)
        jthis
        jargs


jm_getFilesAsStringArrayForPath_1 : JR.Method
jm_getFilesAsStringArrayForPath_1 jheap jthis jargs =
    JR.method [ ( "currentDirPath", "" ) ] ""
        (JR.run [ 
                    JR.declare "file" "" (JR.new JFile.jnew_1 [ (JR.local "currentDirPath") ]), 
                    JR.ifElse (JR.invoke "exists_0" (JR.local "file") []) (JR.run [ 
                        JR.return (JR.invoke "list_0" (JR.local "file") []) ]) (JR.run [ 
                        JR.return (JR.invoke "getArrayInstance_0" (JR.callStatic StringUtil.jm_getInstance_0 []) []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_readAsString_1 : JR.Method
jm_readAsString_1 jheap jthis jargs =
    JR.method [ ( "fileName", "" ) ] ""
        (JR.run [ 
                    JR.declare "bytes" "" (JR.newArray "B" [ (JR.int 1000000) ]), 
                    JR.return (JR.invoke "readAsString_2" JR.this [ (JR.local "fileName"), (JR.local "bytes") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_readAsString_2 : JR.Method
jm_readAsString_2 jheap jthis jargs =
    JR.method [ ( "fileName", "" ), ( "bytes", "" ) ] ""
        (JR.run [ 
                    JR.declare "closeable" "" (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 [])), 
                    JR.try (JR.run [ 
                        JR.declare "idFile" "" (JR.new (JR.namedMethod "FileInputStream.jnew_1") [ (JR.local "fileName") ]), 
                        JR.exec (JR.setLocal "closeable" "" (JR.local "idFile")), 
                        JR.declare "size" "I" (JR.invoke "read_1" (JR.local "idFile") [ (JR.local "bytes") ]), 
                        JR.ifElse (JR.map2 JR.greater (JR.local "size") (JR.int 0)) (JR.run [ 
                            JR.return (JR.withState JR.newString [ (JR.local "bytes"), (JR.int 0), (JR.local "size") ]) ]) identity ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.str "readAsString"), (JR.local "e") ]) ]) ) ] (JR.run [ 
                        JR.exec (JR.invoke "close_1" JR.this [ (JR.local "closeable") ]) ]), 
                    JR.return (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_close_1 : JR.Method
jm_close_1 jheap jthis jargs =
    JR.method [ ( "closeable", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.local "closeable") JR.null) (JR.run [ 
                            JR.declare "inputStream" "" ((JR.local "closeable")), 
                            JR.exec (JR.invoke "close_0" (JR.local "inputStream") []) ]) identity, 
                        JR.return (JR.bool True) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "put_4" (JR.thisField "logUtil") [ (JR.field "EXCEPTION" (JR.thisField "commonStrings")), JR.this, (JR.field "CLOSE" (JR.thisField "commonStrings")), (JR.local "e") ]), 
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

