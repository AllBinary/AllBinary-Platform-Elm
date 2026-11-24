module Org.Allbinary.Logic.Io.File.FileListFetcher exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Io.File.Directory.DirectoryBooleanFileVisitor as DirectoryBooleanFileVisitor
import Org.Allbinary.Logic.Io.File.Directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor as DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor
import Org.Allbinary.Logic.Io.File.Directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor as DirectoryOrIncludeFileExtensionBooleanFileVisitor
import JSystem
import Org.Allbinary.Logic.Io.File.Directory.SubDirectory as SubDirectory
import Org.Allbinary.Logic.Io.File.Filter.VisitorFileFilter as VisitorFileFilter


jclass : String
jclass =
    "FileListFetcher"


jchain : List String
jchain =
    [ "FileListFetcher" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "subDirectory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "getFiles_1", jm_getFiles_1 )
        , ( "getFiles_2", jm_getFiles_2 )
        , ( "getFiles_3", jm_getFiles_3 )
        , ( "getTrackedFiles_2", jm_getTrackedFiles_2 )
        , ( "getDirectories_1", jm_getDirectories_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FileListFetcher"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getFiles_1", jm_getFiles_1 ), ( "jm_getFiles_2", jm_getFiles_2 ), ( "jm_getFiles_3", jm_getFiles_3 ), ( "jm_getTrackedFiles_2", jm_getTrackedFiles_2 ), ( "jm_getDirectories_1", jm_getDirectories_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "FileListFetcher" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "subDirectory" "" JR.this (JR.callStatic SubDirectory.jm_getInstance_0 [])),
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


jm_getFiles_1 : JR.Method
jm_getFiles_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "files" "" (JR.invoke "search_1" (JR.thisField "subDirectory") [ (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "path") ]) ]), 
                        JR.return (JR.local "files") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "printStackTrace_0" (JR.local "e") []), 
                        JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.concat (JR.concat (JR.str "Error: ") (JR.local "e")) (JR.str "\nMsg: ")) (JR.invoke "getMessage_0" (JR.local "e") [])) ]) ]) ) ] identity, 
                    JR.return JR.null ])
        (jregister jheap)
        jthis
        jargs


jm_getFiles_2 : JR.Method
jm_getFiles_2 jheap jthis jargs =
    JR.method [ ( "path", "" ), ( "includeExtensions", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "includeExtensionBasicArrayList" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.declare "size" "I" (JR.alength (JR.local "includeExtensions")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68111 -> (JR.setLocal "index" "I" (JR.lit jwN68111))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "includeExtensionBasicArrayList") [ (JR.aget (JR.local "includeExtensions") (JR.local "index")) ]) ]) ], 
                        JR.declare "visitorFileFilter" "" (JR.new VisitorFileFilter.jnew_1 [ (JR.new DirectoryOrIncludeFileExtensionBooleanFileVisitor.jnew_1 [ (JR.local "includeExtensionBasicArrayList") ]) ]), 
                        JR.declare "files" "" (JR.invoke "search_2" (JR.thisField "subDirectory") [ (JR.local "visitorFileFilter"), (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "path") ]) ]), 
                        JR.return (JR.local "files") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "printStackTrace_0" (JR.local "e") []), 
                        JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.concat (JR.concat (JR.str "Error: ") (JR.local "e")) (JR.str "\nMsg: ")) (JR.invoke "getMessage_0" (JR.local "e") [])) ]) ]) ) ] identity, 
                    JR.return JR.null ])
        (jregister jheap)
        jthis
        jargs


jm_getFiles_3 : JR.Method
jm_getFiles_3 jheap jthis jargs =
    JR.method [ ( "path", "" ), ( "pathIncludes", "" ), ( "includeExtension", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "includeExtensionBasicArrayList" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.exec (JR.invoke "add_1" (JR.local "includeExtensionBasicArrayList") [ (JR.local "includeExtension") ]), 
                        JR.declare "visitorFileFilter" "" (JR.new VisitorFileFilter.jnew_1 [ (JR.new DirectoryOrIncludeFileExtensionBooleanFileVisitor.jnew_2 [ (JR.local "includeExtensionBasicArrayList"), (JR.local "pathIncludes") ]) ]), 
                        JR.declare "files" "" (JR.invoke "search_2" (JR.thisField "subDirectory") [ (JR.local "visitorFileFilter"), (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "path") ]) ]), 
                        JR.return (JR.local "files") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "printStackTrace_0" (JR.local "e") []), 
                        JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.concat (JR.concat (JR.str "Error: ") (JR.local "e")) (JR.str "\nMsg: ")) (JR.invoke "getMessage_0" (JR.local "e") [])) ]) ]) ) ] identity, 
                    JR.return JR.null ])
        (jregister jheap)
        jthis
        jargs


jm_getTrackedFiles_2 : JR.Method
jm_getTrackedFiles_2 jheap jthis jargs =
    JR.method [ ( "path", "" ), ( "includeExtensions", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "includeExtensionBasicArrayList" "" (JR.new BasicArrayListD.jnew_0 []), 
                        JR.declare "size" "I" (JR.alength (JR.local "includeExtensions")), 
                        JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69720 -> (JR.setLocal "index" "I" (JR.lit jwN69720))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.invoke "add_1" (JR.local "includeExtensionBasicArrayList") [ (JR.aget (JR.local "includeExtensions") (JR.local "index")) ]) ]) ], 
                        JR.declare "visitorFileFilter" "" (JR.new VisitorFileFilter.jnew_1 [ (JR.new DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor.jnew_1 [ (JR.local "includeExtensionBasicArrayList") ]) ]), 
                        JR.declare "files" "" (JR.invoke "search_2" (JR.thisField "subDirectory") [ (JR.local "visitorFileFilter"), (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "path") ]) ]), 
                        JR.return (JR.local "files") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "printStackTrace_0" (JR.local "e") []), 
                        JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.concat (JR.concat (JR.str "Error: ") (JR.local "e")) (JR.str "\nMsg: ")) (JR.invoke "getMessage_0" (JR.local "e") [])) ]) ]) ) ] identity, 
                    JR.return JR.null ])
        (jregister jheap)
        jthis
        jargs


jm_getDirectories_1 : JR.Method
jm_getDirectories_1 jheap jthis jargs =
    JR.method [ ( "path", "" ) ] ""
        (JR.run [ 
                    JR.try (JR.run [ 
                        JR.declare "visitorFileFilter" "" (JR.new VisitorFileFilter.jnew_1 [ (JR.new DirectoryBooleanFileVisitor.jnew_0 []) ]), 
                        JR.declare "files" "" (JR.invoke "search_2" (JR.thisField "subDirectory") [ (JR.local "visitorFileFilter"), (JR.callStatic AbFile.jm_createAbFile_1 [ (JR.local "path") ]) ]), 
                        JR.return (JR.local "files") ]) [ ( [ "Exception" ], "e", (JR.run [ 
                        JR.exec (JR.invoke "printStackTrace_0" (JR.local "e") []), 
                        JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.concat (JR.concat (JR.str "Error: ") (JR.local "e")) (JR.str "\nMsg: ")) (JR.invoke "getMessage_0" (JR.local "e") [])) ]) ]) ) ] identity, 
                    JR.return JR.null ])
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

