module Org.Allbinary.Logic.Io.BufferedIOUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFileNativeUtil as AbFileNativeUtil
import Org.Allbinary.Logic.String.StringUtil as StringUtil


jclass : String
jclass =
    "BufferedIOUtil"


jchain : List String
jchain =
    [ "BufferedIOUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "copy_2", jm_copy_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BufferedIOUtil"
        [ ( "jm_copy_2", jm_copy_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_copy_2 : JR.Method
jm_copy_2 jheap jthis jargs =
    JR.method [ ( "backupFile", "" ), ( "backupFileBak", "" ) ] ""
        (JR.run [ 
                    JR.declare "line" "" (JR.field "EMPTY_STRING" (JR.callStatic StringUtil.jm_getInstance_0 [])), 
                    JR.declare "tmpOut" "" (JR.new (JR.namedMethod "BufferedWriter.jnew_1") [ (JR.new (JR.namedMethod "FileWriter.jnew_1") [ (JR.callStatic AbFileNativeUtil.jm_get_1 [ (JR.local "backupFileBak") ]) ]) ]), 
                    JR.declare "tmpIn" "" (JR.new (JR.namedMethod "BufferedReader.jnew_1") [ (JR.new (JR.namedMethod "FileReader.jnew_1") [ (JR.callStatic AbFileNativeUtil.jm_get_1 [ (JR.local "backupFile") ]) ]) ]), 
                    JR.while (JR.invoke "ready_0" (JR.local "tmpIn") []) (JR.run [ 
                        JR.exec (JR.setLocal "line" "" (JR.invoke "readLine_0" (JR.local "tmpIn") [])), 
                        JR.exec (JR.invoke "write_3" (JR.local "tmpOut") [ (JR.local "line"), (JR.int 0), (JR.invoke "length_0" (JR.local "line") []) ]), 
                        JR.exec (JR.invoke "newLine_0" (JR.local "tmpOut") []) ]), 
                    JR.exec (JR.invoke "flush_0" (JR.local "tmpOut") []) ])
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

