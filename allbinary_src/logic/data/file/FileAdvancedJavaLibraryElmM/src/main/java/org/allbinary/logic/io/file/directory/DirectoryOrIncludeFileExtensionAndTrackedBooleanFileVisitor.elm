module Org.Allbinary.Logic.Io.File.Directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.directory
-}

import JR
import Org.Allbinary.Logic.Io.File.AbFile as AbFile
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Io.File.CommonDataFileStrings as CommonDataFileStrings
import Org.Allbinary.Java.Runtime.Process.Git.GitProcessHelper as GitProcessHelper
import Org.Allbinary.Logic.Io.File.Visitor.IncludeFileExtensionsBooleanFileVisitor as IncludeFileExtensionsBooleanFileVisitor
import JSystem
import Org.Allbinary.Logic.Io.File.Directory.TrackedStrings as TrackedStrings


jclass : String
jclass =
    "DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor"


jchain : List String
jchain =
    [ "DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor" ]
        ++ IncludeFileExtensionsBooleanFileVisitor.jchain


jfields : List ( String, JR.JValue )
jfields =
    IncludeFileExtensionsBooleanFileVisitor.jfields ++ [ ( "trackedStrings", JR.defaultOf "" ), ( "gitProcessHelper", JR.defaultOf "" ), ( "includesString", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "visit_1", jm_visit_1 )
        , ( "visit_2", jm_visit_2 )
        , ( "main_1", jm_main_1 ) ]
        IncludeFileExtensionsBooleanFileVisitor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor"
        [ ( "jm_visit_1", jm_visit_1 ), ( "jm_visit_2", jm_visit_2 ), ( "jm_main_1", jm_main_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "filterStringBasicArrayList", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IncludeFileExtensionsBooleanFileVisitor.jinit_1 JR.this [ (JR.local "filterStringBasicArrayList") ]),
                JR.exec (JR.setField "trackedStrings" "" JR.this (JR.callStatic TrackedStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "gitProcessHelper" "" JR.this (JR.callStatic GitProcessHelper.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "includesString" "" JR.this JR.null) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "filterStringBasicArrayList", "" ), ( "includesString", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IncludeFileExtensionsBooleanFileVisitor.jinit_1 JR.this [ (JR.local "filterStringBasicArrayList") ]),
                JR.exec (JR.setField "trackedStrings" "" JR.this (JR.callStatic TrackedStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "gitProcessHelper" "" JR.this (JR.callStatic GitProcessHelper.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "includesString" "" JR.this (JR.local "includesString")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_visit_1 : JR.Method
jm_visit_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.invoke "isDirectory_0" (JR.local "file") []) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
                    JR.ifElse (JR.or (JR.map2 JR.equals (JR.thisField "includesString") JR.null) (JR.map2 JR.greaterEquals (JR.invoke "indexOf_1" (JR.invoke "getAbsolutePath_0" (JR.local "file") []) [ (JR.thisField "includesString") ]) (JR.int 0))) (JR.run [ 
                        JR.return (JR.callVia IncludeFileExtensionsBooleanFileVisitor.jvtable "visit_1" JR.this [ (JR.local "file") ]) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_visit_2 : JR.Method
jm_visit_2 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "fileNameString", "" ) ] ""
        (JR.run [ 
                    JR.declare "filePath" "" (JR.invoke "getPath_0" (JR.local "file") []), 
                    JR.ifElse (JR.callVia IncludeFileExtensionsBooleanFileVisitor.jvtable "visit_2" JR.this [ (JR.local "file"), (JR.local "fileNameString") ]) (JR.run [ 
                        JR.ifElse (JR.map JR.not_ ((JR.or (JR.or (JR.invoke "contains_1" (JR.local "filePath") [ (JR.field "APPLICATION" (JR.thisField "trackedStrings")) ]) (JR.invoke "contains_1" (JR.local "filePath") [ (JR.field "APP" (JR.thisField "trackedStrings")) ])) (JR.invoke "contains_1" (JR.local "filePath") [ (JR.field "HTML_TEMP" (JR.thisField "trackedStrings")) ])))) (JR.run [ 
                            JR.ifElse (JR.map JR.not_ ((JR.or (JR.invoke "contains_1" (JR.local "filePath") [ (JR.field "TARGET_PATH_WINDOWS" (JR.thisField "trackedStrings")) ]) (JR.invoke "contains_1" (JR.local "filePath") [ (JR.field "TARGET_PATH_UNIX" (JR.thisField "trackedStrings")) ])))) (JR.run [ 
                                JR.ifElse (JR.invoke "isTracked_1" (JR.thisField "gitProcessHelper") [ (JR.local "file") ]) (JR.run [ 
                                    JR.return (JR.bool True) ]) identity ]) identity ]) identity ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_main_1 : JR.Method
jm_main_1 jheap jthis jargs =
    JR.method [ ( "args", "" ) ] ""
        (JR.run [ 
                    JR.declare "commonFileStrings" "" (JR.callStatic CommonDataFileStrings.jm_getInstance_0 []), 
                    JR.declare "list" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.exec (JR.invoke "add_1" (JR.local "list") [ (JR.field "JAVA" (JR.local "commonFileStrings")) ]), 
                    JR.declare "filePath" "" (JR.str "G:\\mnt\\bc\\mydev\\games\\ZeptoRacer\\platform\\j2se\\ZeptoRacerStaticPathsJ2SEM\\target\\dependency\\org\\allbinary\\logic\\system\\security\\licensing\\ZeptoRacerPCClientInformation.java"), 
                    JR.declare "result" "Z" (JR.invoke "visit_1" (JR.new jnew_1 [ (JR.local "list") ]) [ (JR.callStatic AbFile.jm_createAbFileFromRawPath_1 [ (JR.local "filePath") ]) ]), 
                    JR.exec (JR.invoke "println_1" JSystem.jstatic_out [ (JR.concat (JR.concat (JR.local "filePath") (JR.str " is Tracked: ")) (JR.local "result")) ]) ])
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

