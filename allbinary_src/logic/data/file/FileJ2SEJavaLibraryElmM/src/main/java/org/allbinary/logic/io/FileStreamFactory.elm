module Org.Allbinary.Logic.Io.FileStreamFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Logic.Io.AbFileInputStream as AbFileInputStream
import Org.Allbinary.Logic.Io.AbFileOutputStream as AbFileOutputStream
import Org.Allbinary.Logic.Io.Path.AbPath as AbPath
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "FileStreamFactory"


jchain : List String
jchain =
    [ "FileStreamFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getFileInputStreamInstance_2", jm_getFileInputStreamInstance_2 )
        , ( "getFileOutputStreamInstance_2", jm_getFileOutputStreamInstance_2 )
        , ( "delete_2", jm_delete_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FileStreamFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getFileInputStreamInstance_2", jm_getFileInputStreamInstance_2 ), ( "jm_getFileOutputStreamInstance_2", jm_getFileOutputStreamInstance_2 ), ( "jm_delete_2", jm_delete_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_SINGLETON", jstatic_SINGLETON ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_SINGLETON : JR.M
jstatic_SINGLETON s =
    JR.static "FileStreamFactory" jclinit "SINGLETON"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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
                    JR.ifElse (JR.map2 JR.equals jstatic_SINGLETON (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "FileStreamFactory.SINGLETON" "" (JR.new jnew_0 [])) ]) identity, 
                    JR.return jstatic_SINGLETON ])
        (jregister jheap)
        jthis
        jargs


jm_getFileInputStreamInstance_2 : JR.Method
jm_getFileInputStreamInstance_2 jheap jthis jargs =
    JR.method [ ( "path", "" ), ( "fileName", "" ) ] ""
        (JR.run [ 
                    JR.declare "FILEABPATH" "" (JR.new AbPath.jnew_2 [ (JR.local "path"), (JR.local "fileName") ]), 
                    JR.declare "file" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "FILEABPATH") ]), 
                    JR.return (JR.callStatic AbFileInputStream.jm_createFromAbFile_1 [ (JR.local "file") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getFileOutputStreamInstance_2 : JR.Method
jm_getFileOutputStreamInstance_2 jheap jthis jargs =
    JR.method [ ( "path", "" ), ( "fileName", "" ) ] ""
        (JR.run [ 
                    JR.declare "FILEABPATH" "" (JR.new AbPath.jnew_2 [ (JR.local "path"), (JR.local "fileName") ]), 
                    JR.declare "file" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "FILEABPATH") ]), 
                    JR.ifElse (JR.invoke "exists_0" (JR.local "file") []) (JR.run [ 
                        JR.exec (JR.invoke "delete_0" (JR.local "file") []), 
                        JR.exec (JR.invoke "createNewFile_0" (JR.local "file") []) ]) identity, 
                    JR.return (JR.callStatic AbFileOutputStream.jm_createFromAbFile_1 [ (JR.local "file") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_delete_2 : JR.Method
jm_delete_2 jheap jthis jargs =
    JR.method [ ( "path", "" ), ( "fileName", "" ) ] ""
        (JR.run [ 
                    JR.declare "FILEABPATH" "" (JR.new AbPath.jnew_2 [ (JR.local "path"), (JR.local "fileName") ]), 
                    JR.declare "file" "" (JR.callStatic AbFile.jm_createAbFileFromAbPath_1 [ (JR.local "FILEABPATH") ]), 
                    JR.exec (JR.invoke "delete_0" (JR.local "file") []) ])
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

