module Org.Allbinary.Logic.Io.File.Directory.Directory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.directory
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Io.File.FileWrapperUtil as FileWrapperUtil


jclass : String
jclass =
    "Directory"


jchain : List String
jchain =
    [ "Directory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "create_1", jm_create_1 )
        , ( "remove_1", jm_remove_1 )
        , ( "search_2", jm_search_2 )
        , ( "search_3", jm_search_3 )
        , ( "search_1", jm_search_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Directory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_create_1", jm_create_1 ), ( "jm_remove_1", jm_remove_1 ), ( "jm_search_2", jm_search_2 ), ( "jm_search_3", jm_search_3 ), ( "jm_search_1", jm_search_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "Directory" jclinit "instance"
        (JR.new jnew_0 [])
        s


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


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_create_1 : JR.Method
jm_create_1 jheap jthis jargs =
    JR.method [ ( "directoryAbPath", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "create_1" JR.this [ (JR.invoke "toFileSystemString_0" (JR.local "directoryAbPath") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_remove_1 : JR.Method
jm_remove_1 jheap jthis jargs =
    JR.method [ ( "existingDirectoryAbPath", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "remove_1" JR.this [ (JR.invoke "toFileSystemString_0" (JR.local "existingDirectoryAbPath") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_search_2 : JR.Method
jm_search_2 jheap jthis jargs =
    JR.method [ ( "fileFilter", "" ), ( "file", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "search_3" JR.this [ (JR.local "fileFilter"), (JR.local "file"), (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_search_3 : JR.Method
jm_search_3 jheap jthis jargs =
    JR.method [ ( "fileFilter", "" ), ( "file", "" ), ( "isRecursiveSearch", "Z" ) ] ""
        (JR.run [ 
                    JR.declare "fileList" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.declare "recursiveFileList" "" (JR.lit (JR.defaultOf "")), 
                    JR.ifElse (JR.invoke "isDirectory_0" (JR.local "file") []) (JR.run [ 
                        JR.declare "fileArray" "" (JR.invoke "listFilesFileFilter_1" (JR.local "file") [ (JR.local "fileFilter") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "fileArray") JR.null) (JR.run [ 
                            JR.return (JR.local "fileList") ]) identity, 
                        JR.declare "files" "" (JR.callStatic FileWrapperUtil.jm_wrapFiles_1 [ (JR.local "fileArray") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "files") JR.null) (JR.run [ 
                            JR.return (JR.local "fileList") ]) identity, 
                        JR.declare "size" "I" (JR.alength (JR.local "files")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69030 -> (JR.setLocal "index" "I" (JR.lit jwN69030))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "fileList") [ (JR.aget (JR.local "files") (JR.local "index")) ]), 
                            JR.ifElse (JR.local "isRecursiveSearch") (JR.run [ 
                                JR.exec (JR.setLocal "recursiveFileList" "" (JR.invoke "search_3" JR.this [ (JR.local "fileFilter"), (JR.aget (JR.local "files") (JR.local "index")), (JR.local "isRecursiveSearch") ])), 
                                JR.exec (JR.invoke "addAllList_1" (JR.local "fileList") [ (JR.local "recursiveFileList") ]) ]) identity ]) ] ]) identity, 
                    JR.return (JR.local "fileList") ])
        (jregister jheap)
        jthis
        jargs


jm_search_1 : JR.Method
jm_search_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "search_2" JR.this [ (JR.local "file"), (JR.bool False) ]) ])
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

