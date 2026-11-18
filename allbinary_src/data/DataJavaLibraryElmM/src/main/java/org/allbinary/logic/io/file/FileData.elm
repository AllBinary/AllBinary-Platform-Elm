module Org.Allbinary.Logic.Io.File.FileData exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR



jclass : String
jclass =
    "FileData"


jchain : List String
jchain =
    [ "FileData" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "NAME", JR.defaultOf "" ), ( "ISFILE", JR.defaultOf "" ), ( "ISDIRECTORY", JR.defaultOf "" ), ( "ISHIDDEN", JR.defaultOf "" ), ( "ISABSOLUTE", JR.defaultOf "" ), ( "ROOT_NAME", JR.defaultOf "" ), ( "PATH", JR.defaultOf "" ), ( "ABSOLUTE_PATH", JR.defaultOf "" ), ( "CANONICAL_PATH", JR.defaultOf "" ), ( "PARENT", JR.defaultOf "" ), ( "MINLEN", JR.defaultOf "I" ), ( "MAXLEN", JR.defaultOf "I" ), ( "MAXIMAGEFILESIZE", JR.defaultOf "I" ), ( "MINIMAGEFILESIZE", JR.defaultOf "I" ), ( "MAXDOWNLOADABLEFILESIZE", JR.defaultOf "I" ), ( "MINDOWNLOADABLEFILESIZE", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FileData"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FileData" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "NAME" "" JR.this (JR.str "FILE_NAME")),
                JR.exec (JR.setField "ISFILE" "" JR.this (JR.str "FILE_ISFILE")),
                JR.exec (JR.setField "ISDIRECTORY" "" JR.this (JR.str "FILE_ISDIRECTORY")),
                JR.exec (JR.setField "ISHIDDEN" "" JR.this (JR.str "FILE_ISHIDDEN")),
                JR.exec (JR.setField "ISABSOLUTE" "" JR.this (JR.str "FILE_ISABSOLUTE")),
                JR.exec (JR.setField "ROOT_NAME" "" JR.this (JR.str "FILE_ROOT_NAME")),
                JR.exec (JR.setField "PATH" "" JR.this (JR.str "FILE_PATH")),
                JR.exec (JR.setField "ABSOLUTE_PATH" "" JR.this (JR.str "FILE_ABSOLUTE_PATH")),
                JR.exec (JR.setField "CANONICAL_PATH" "" JR.this (JR.str "FILE_CANONICAL_PATH")),
                JR.exec (JR.setField "PARENT" "" JR.this (JR.str "FILE_PARENT")),
                JR.exec (JR.setField "MINLEN" "I" JR.this (JR.int 1)),
                JR.exec (JR.setField "MAXLEN" "I" JR.this (JR.int 120)),
                JR.exec (JR.setField "MAXIMAGEFILESIZE" "I" JR.this (JR.int 1048576)),
                JR.exec (JR.setField "MINIMAGEFILESIZE" "I" JR.this (JR.int 32)),
                JR.exec (JR.setField "MAXDOWNLOADABLEFILESIZE" "I" JR.this (JR.map2 JR.mul (JR.int 1048576) (JR.int 20))),
                JR.exec (JR.setField "MINDOWNLOADABLEFILESIZE" "I" JR.this (JR.int 1)),
                identity,
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

