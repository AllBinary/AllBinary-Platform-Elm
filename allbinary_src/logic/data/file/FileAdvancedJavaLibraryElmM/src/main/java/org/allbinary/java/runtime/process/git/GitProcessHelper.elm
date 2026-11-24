module Org.Allbinary.Java.Runtime.Process.Git.GitProcessHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.java.runtime.process.git
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFileNativeUtil as AbFileNativeUtil
import Org.Allbinary.String.CommonStrings as CommonStrings
import JArrayList
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker
import Org.Allbinary.Logic.Io.File.Directory.TrackedStrings as TrackedStrings


jclass : String
jclass =
    "GitProcessHelper"


jchain : List String
jchain =
    [ "GitProcessHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "trackedStrings", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "trackedFiles_2", jm_trackedFiles_2 )
        , ( "trackedFiles_3", jm_trackedFiles_3 )
        , ( "isTracked_1", jm_isTracked_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GitProcessHelper"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_trackedFiles_2", jm_trackedFiles_2 ), ( "jm_trackedFiles_3", jm_trackedFiles_3 ), ( "jm_isTracked_1", jm_isTracked_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "GitProcessHelper" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "trackedStrings" "" JR.this (JR.callStatic TrackedStrings.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.declare "logUtil" "" (JR.callStatic LogUtil.jm_getInstance_0 []), 
                    JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                    JR.declare "THIS_IS_SLOW" "" (JR.str "This is slow consider path exclusion instead"), 
                    JR.exec (JR.invoke "putF_3" (JR.local "logUtil") [ (JR.local "THIS_IS_SLOW"), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")) ]) ]) ])
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


jm_trackedFiles_2 : JR.Method
jm_trackedFiles_2 jheap jthis jargs =
    JR.method [ ( "rootAsString", "" ), ( "pathspec", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "trackedFiles_3" JR.this [ (JR.local "rootAsString"), (JR.local "pathspec"), (JR.str ".java") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_trackedFiles_3 : JR.Method
jm_trackedFiles_3 jheap jthis jargs =
    JR.method [ ( "rootAsString", "" ), ( "pathspec", "" ), ( "suffix", "" ) ] ""
        (JR.run [ 
                    JR.declare "process" "" (JR.invoke "start_0" (JR.invoke "redirectError_1" (JR.new (JR.namedMethod "ProcessBuilder.jnew_7") [ (JR.field "GIT_COMMAND" (JR.thisField "trackedStrings")), (JR.field "CHANGE_DIRECTORY_OPTION" (JR.thisField "trackedStrings")), (JR.local "rootAsString"), (JR.field "LIST_FILES_COMMAND" (JR.thisField "trackedStrings")), (JR.field "SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE" (JR.thisField "trackedStrings")), (JR.field "PATHSPEC_SEPARATOR" (JR.thisField "trackedStrings")), (JR.local "pathspec") ]) [ (JR.field "INHERIT" (JR.namedStatic "ProcessBuilder.jstatic_Redirect")) ]) []), 
                    JR.declare "output" "" (JR.invoke "readAllBytes_0" (JR.invoke "getInputStream_0" (JR.local "process") []) []), 
                    JR.declare "exitCode" "I" (JR.invoke "waitFor_0" (JR.local "process") []), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "exitCode") (JR.int 0)) (JR.run [ 
                        JR.throw (JR.new (JR.newThrowable "IllegalStateException" [ "RuntimeException", "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.str "git ls-files failed for ") ]) [ (JR.local "rootAsString") ]) [ (JR.str " with exit code ") ]) [ (JR.local "exitCode") ]) []) ]) ]) identity, 
                    JR.declare "files" "" (JR.new JArrayList.jnew_0 []), 
                    JR.declare "start" "I" (JR.int 0), 
                    JR.declare "relativePath" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.alength (JR.local "output"))) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68452 -> (JR.setLocal "index" "I" (JR.lit jwN68452))) JR.increment) ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.equals (JR.cast "I" (JR.aget (JR.local "output") (JR.local "index"))) (JR.int 0)) (JR.run [ 
                            JR.exec (JR.setLocal "relativePath" "" (JR.withState JR.newString [ (JR.local "output"), (JR.local "start"), (JR.map2 JR.sub (JR.local "index") (JR.local "start")), (JR.namedStatic "StandardCharsets.jstatic_UTF_8") ])), 
                            JR.ifElse (JR.invoke "endsWith_1" (JR.local "relativePath") [ (JR.local "suffix") ]) (JR.run [ 
                                JR.exec (JR.invoke "add_1" (JR.local "files") [ (JR.local "relativePath") ]) ]) identity, 
                            JR.exec (JR.setLocal "start" "I" (JR.map2 JR.add (JR.local "index") (JR.int 1))) ]) identity ]) ], 
                    JR.return (JR.local "files") ])
        (jregister jheap)
        jthis
        jargs


jm_isTracked_1 : JR.Method
jm_isTracked_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] "Z"
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "nativeFile" "" (JR.callStatic AbFileNativeUtil.jm_get_1 [ (JR.local "file") ]), 
                        JR.declare "parentFile" "" (JR.invoke "getParentFile_0" (JR.local "nativeFile") []), 
                        JR.declare "process" "" (JR.invoke "start_0" (JR.invoke "redirectErrorStream_1" (JR.new (JR.namedMethod "ProcessBuilder.jnew_7") [ (JR.field "GIT_COMMAND" (JR.thisField "trackedStrings")), (JR.field "CHANGE_DIRECTORY_OPTION" (JR.thisField "trackedStrings")), (JR.invoke "getPath_0" (JR.local "parentFile") []), (JR.field "LIST_FILES_COMMAND" (JR.thisField "trackedStrings")), (JR.field "ERROR_UNMATCH_OPTION" (JR.thisField "trackedStrings")), (JR.field "PATHSPEC_SEPARATOR" (JR.thisField "trackedStrings")), (JR.invoke "getName_0" (JR.local "nativeFile") []) ]) [ (JR.bool True) ]) []), 
                        JR.exec (JR.invoke "readAllBytes_0" (JR.invoke "getInputStream_0" (JR.local "process") []) []), 
                        JR.return (JR.map2 JR.equals (JR.invoke "waitFor_0" (JR.local "process") []) (JR.int 0)) ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.return (JR.bool False) ]) ) ] identity ])
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

