module Org.Allbinary.Logic.Io.File.Directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.directory
-}

import JR
import Org.Allbinary.Logic.Io.File.Visitor.IncludeFileExtensionsBooleanFileVisitor as IncludeFileExtensionsBooleanFileVisitor


jclass : String
jclass =
    "DirectoryOrIncludeFileExtensionBooleanFileVisitor"


jchain : List String
jchain =
    [ "DirectoryOrIncludeFileExtensionBooleanFileVisitor" ]
        ++ IncludeFileExtensionsBooleanFileVisitor.jchain


jfields : List ( String, JR.JValue )
jfields =
    IncludeFileExtensionsBooleanFileVisitor.jfields ++ [ ( "includesString", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "visit_1", jm_visit_1 ) ]
        IncludeFileExtensionsBooleanFileVisitor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DirectoryOrIncludeFileExtensionBooleanFileVisitor"
        [ ( "jm_visit_1", jm_visit_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "filterStringBasicArrayList", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect IncludeFileExtensionsBooleanFileVisitor.jinit_1 JR.this [ (JR.local "filterStringBasicArrayList") ]),
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


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

