module Org.Allbinary.Logic.Io.AbFileOutputStream exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR



jclass : String
jclass =
    "AbFileOutputStream"


jchain : List String
jchain =
    [ "AbFileOutputStream" ]
        ++ [ "FileOutputStream" ]


jfields : List ( String, JR.JValue )
jfields =
    [] ++ []


jvtable =
    JR.vtable
        [ ( "createFromAbFile_1", jm_createFromAbFile_1 )
        , ( "createFromAbFileAppend_2", jm_createFromAbFileAppend_2 )
        , ( "createFromFilePath_1", jm_createFromFilePath_1 )
        , ( "createFromFilePathAppend_2", jm_createFromFilePathAppend_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbFileOutputStream"
        [ ( "jm_createFromAbFile_1", jm_createFromAbFile_1 ), ( "jm_createFromAbFileAppend_2", jm_createFromAbFileAppend_2 ), ( "jm_createFromFilePath_1", jm_createFromFilePath_1 ), ( "jm_createFromFilePathAppend_2", jm_createFromFilePathAppend_2 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "append", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect (JR.namedMethod "FileOutputStream.jinit_2") JR.this [ (JR.local "name"), (JR.local "append") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_createFromAbFile_1 : JR.Method
jm_createFromAbFile_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_2 [ (JR.invoke "getPath_0" (JR.local "file") []), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createFromAbFileAppend_2 : JR.Method
jm_createFromAbFileAppend_2 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "append", "Z" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_2 [ (JR.invoke "getPath_0" (JR.local "file") []), (JR.local "append") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createFromFilePath_1 : JR.Method
jm_createFromFilePath_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_2 [ (JR.local "name"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createFromFilePathAppend_2 : JR.Method
jm_createFromFilePathAppend_2 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "append", "Z" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_2 [ (JR.local "name"), (JR.local "append") ]) ])
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

