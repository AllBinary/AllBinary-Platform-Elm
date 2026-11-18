module Org.Allbinary.Logic.Io.AbFileInputStream exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFileNativeUtil as AbFileNativeUtil


jclass : String
jclass =
    "AbFileInputStream"


jchain : List String
jchain =
    [ "AbFileInputStream" ]
        ++ [ "FileInputStream" ]


jfields : List ( String, JR.JValue )
jfields =
    [] ++ []


jvtable =
    JR.vtable
        [ ( "createFromAbFile_1", jm_createFromAbFile_1 )
        , ( "createFromFile_1", jm_createFromFile_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AbFileInputStream"
        [ ( "jm_createFromAbFile_1", jm_createFromAbFile_1 ), ( "jm_createFromFile_1", jm_createFromFile_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "name", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect (JR.namedMethod "FileInputStream.jinit_1") JR.this [ (JR.local "name") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_createFromAbFile_1 : JR.Method
jm_createFromAbFile_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.invoke "getPath_0" (JR.callStatic AbFileNativeUtil.jm_get_1 [ (JR.local "file") ]) []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_createFromFile_1 : JR.Method
jm_createFromFile_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_1 [ (JR.invoke "getPath_0" (JR.local "file") []) ]) ])
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

