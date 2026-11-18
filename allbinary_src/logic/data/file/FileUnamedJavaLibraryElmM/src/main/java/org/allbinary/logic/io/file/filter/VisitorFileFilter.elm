module Org.Allbinary.Logic.Io.File.Filter.VisitorFileFilter exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.filter
-}

import JR
import Org.Allbinary.Logic.Io.File.FileWrapperUtil as FileWrapperUtil


jclass : String
jclass =
    "VisitorFileFilter"


jchain : List String
jchain =
    [ "VisitorFileFilter" ]
        ++ [ "FileFilter" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "booleanVisitorInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "accept_1", jm_accept_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "VisitorFileFilter"
        [ ( "jm_accept_1", jm_accept_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "booleanVisitorInterface", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "booleanVisitorInterface" "" JR.this (JR.local "booleanVisitorInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_accept_1 : JR.Method
jm_accept_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] "Z"
        (JR.run [ 
                    JR.declare "abFile" "" (JR.callStatic FileWrapperUtil.jm_wrapFile_1 [ (JR.local "file") ]), 
                    JR.declare "isFileAcceptable" "Z" (JR.invoke "booleanValue_0" ((JR.invoke "visit_1" (JR.thisField "booleanVisitorInterface") [ (JR.local "abFile") ])) []), 
                    JR.return (JR.or (JR.local "isFileAcceptable") (JR.invoke "isDirectory_0" (JR.local "file") [])) ])
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

