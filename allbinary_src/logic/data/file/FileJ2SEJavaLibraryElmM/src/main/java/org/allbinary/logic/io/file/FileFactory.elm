module Org.Allbinary.Logic.Io.File.FileFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile


jclass : String
jclass =
    "FileFactory"


jchain : List String
jchain =
    [ "FileFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getInstance_1", jm_getInstance_1 )
        , ( "getInstance_2", jm_getInstance_2 )
        , ( "isFile_1", jm_isFile_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FileFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getInstance_1", jm_getInstance_1 ), ( "jm_getInstance_2", jm_getInstance_2 ), ( "jm_isFile_1", jm_isFile_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FileFactory" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "filePath", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic AbFile.jm_createAbFileFromRawPath_1 [ (JR.local "filePath") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_2 : JR.Method
jm_getInstance_2 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "childFilePath", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.callStatic AbFile.jm_createAbFileWithChild_2 [ (JR.local "file"), (JR.local "childFilePath") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isFile_1 : JR.Method
jm_isFile_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "file" "" (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "path") ]), 
                    JR.ifElse (JR.invoke "exists_0" (JR.local "file") []) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
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

