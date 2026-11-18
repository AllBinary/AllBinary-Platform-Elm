module Org.Allbinary.Logic.Io.File.Directory.TrackedStrings exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.directory
-}

import JR



jclass : String
jclass =
    "TrackedStrings"


jchain : List String
jchain =
    [ "TrackedStrings" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "TARGET_PATH_WINDOWS", JR.defaultOf "" ), ( "TARGET_PATH_UNIX", JR.defaultOf "" ), ( "HTML_TEMP", JR.defaultOf "" ), ( "APPLICATION", JR.defaultOf "" ), ( "APP", JR.defaultOf "" ), ( "GIT_COMMAND", JR.defaultOf "" ), ( "CHANGE_DIRECTORY_OPTION", JR.defaultOf "" ), ( "LIST_FILES_COMMAND", JR.defaultOf "" ), ( "ERROR_UNMATCH_OPTION", JR.defaultOf "" ), ( "PATHSPEC_SEPARATOR", JR.defaultOf "" ), ( "SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TrackedStrings"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "TrackedStrings" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "TARGET_PATH_WINDOWS" "" JR.this (JR.str "\\target\\")),
                JR.exec (JR.setField "TARGET_PATH_UNIX" "" JR.this (JR.str "/target/")),
                JR.exec (JR.setField "HTML_TEMP" "" JR.this (JR.str "HTMLTemp")),
                JR.exec (JR.setField "APPLICATION" "" JR.this (JR.str "Application")),
                JR.exec (JR.setField "APP" "" JR.this (JR.str "\\app")),
                JR.exec (JR.setField "GIT_COMMAND" "" JR.this (JR.str "git")),
                JR.exec (JR.setField "CHANGE_DIRECTORY_OPTION" "" JR.this (JR.str "-C")),
                JR.exec (JR.setField "LIST_FILES_COMMAND" "" JR.this (JR.str "ls-files")),
                JR.exec (JR.setField "ERROR_UNMATCH_OPTION" "" JR.this (JR.str "--error-unmatch")),
                JR.exec (JR.setField "PATHSPEC_SEPARATOR" "" JR.this (JR.str "--")),
                JR.exec (JR.setField "SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE" "" JR.this (JR.str "-z")),
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

