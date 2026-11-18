module Org.Allbinary.Logic.Io.File.FilePathData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import JFile


jclass : String
jclass =
    "FilePathData"


jchain : List String
jchain =
    [ "FilePathData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "SEPARATORCHAR", JR.defaultOf "C" ), ( "PATH_START", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FilePathData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FilePathData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "SEPARATORCHAR" "C" JR.this JFile.jstatic_separatorChar),
                JR.exec (JR.setField "PATH_START" "" JR.this JFile.jstatic_separator),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals JFile.jstatic_separatorChar (JR.char 92)) (JR.run [ 
                        JR.exec (JR.setField "PATH_START" "" JR.this (JR.concat JFile.jstatic_separator JFile.jstatic_separator)) ]) identity ]) ])
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

