module Org.Allbinary.Logic.Io.File.FilePathUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.Logic.Io.Path.AbPathData as AbPathData
import Org.Allbinary.Logic.Io.File.FilePathData as FilePathData
import Org.Allbinary.Logic.String.StringValidationUtil as StringValidationUtil


jclass : String
jclass =
    "FilePathUtil"


jchain : List String
jchain =
    [ "FilePathUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "adjust_1", jm_adjust_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FilePathUtil"
        [ ( "jm_adjust_1", jm_adjust_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_adjust_1 : JR.Method
jm_adjust_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.declare "abPathData" "" (JR.callStatic AbPathData.jm_getInstance_0 []), 
                    JR.declare "stringValidationUtil" "" (JR.callStatic StringValidationUtil.jm_getInstance_0 []), 
                    JR.declare "filePathData" "" (JR.callStatic FilePathData.jm_getInstance_0 []), 
                    JR.ifElse (JR.invoke "isEmpty_1" (JR.local "stringValidationUtil") [ (JR.local "path") ]) (JR.run [ 
                        JR.return (JR.field "PATH_START" (JR.local "filePathData")) ]) identity, 
                    JR.exec (JR.setLocal "path" "" (JR.invoke "replace_2" (JR.local "path") [ (JR.field "SEPARATORCHAR" (JR.local "abPathData")), (JR.field "SEPARATORCHAR" (JR.local "filePathData")) ])), 
                    JR.return (JR.local "path") ])
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

