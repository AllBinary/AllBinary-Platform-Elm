module Org.Allbinary.Logic.Io.File.FileWrapperUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil


jclass : String
jclass =
    "FileWrapperUtil"


jchain : List String
jchain =
    [ "FileWrapperUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "wrapFiles_1", jm_wrapFiles_1 )
        , ( "wrapFile_1", jm_wrapFile_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FileWrapperUtil"
        [ ( "jm_wrapFiles_1", jm_wrapFiles_1 ), ( "jm_wrapFile_1", jm_wrapFile_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_wrapFiles_1 : JR.Method
jm_wrapFiles_1 jheap jthis jargs =
    JR.method [ ( "files", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "abFileArray" "" (JR.newArray "" [ (JR.alength (JR.local "files")) ]), 
                        JR.run [ JR.declare "index" "I" (JR.map2 JR.sub (JR.alength (JR.local "files")) (JR.int 1)), JR.for (JR.map2 JR.greaterEquals (JR.local "index") (JR.int 0)) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN66431 -> (JR.setLocal "index" "I" (JR.lit jwN66431))) JR.decrement) ]) (JR.run [ 
                            JR.exec (JR.andThen (JR.local "abFileArray") (\jaN66290 -> JR.andThen (JR.local "index") (\jiN66290 -> (JR.aset (JR.lit jaN66290) (JR.lit jiN66290) (JR.new AbFile.jnew_1 [ (JR.aget (JR.local "files") (JR.local "index")) ]))))) ]) ], 
                        JR.return (JR.local "abFileArray") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putSE_4 [ (JR.str "Exception Wrapping Files"), (JR.str "FileWrapperUtil"), (JR.str "wrapFiles"), (JR.local "e") ]), 
                        JR.return (JR.newArray "" [ (JR.int 0) ]) ]) ) ] identity ])
        (jregister jheap)
        jthis
        jargs


jm_wrapFile_1 : JR.Method
jm_wrapFile_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.return (JR.new AbFile.jnew_1 [ (JR.local "file") ]) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.callStatic PreLogUtil.jm_putSE_4 [ (JR.str "Exception Wrapping File"), (JR.str "FileWrapperUtil"), (JR.str "wrapFile"), (JR.local "e") ]), 
                        JR.return AbFile.jstatic_NULL_FILE ]) ) ] identity ])
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

