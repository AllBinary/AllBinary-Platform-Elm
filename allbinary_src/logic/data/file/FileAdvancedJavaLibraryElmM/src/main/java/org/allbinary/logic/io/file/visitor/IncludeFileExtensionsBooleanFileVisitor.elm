module Org.Allbinary.Logic.Io.File.Visitor.IncludeFileExtensionsBooleanFileVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.visitor
-}

import JR
import Org.Allbinary.Logic.Io.File.Visitor.BooleanFileVisitor as BooleanFileVisitor


jclass : String
jclass =
    "IncludeFileExtensionsBooleanFileVisitor"


jchain : List String
jchain =
    [ "IncludeFileExtensionsBooleanFileVisitor" ]
        ++ BooleanFileVisitor.jchain


jfields : List ( String, JR.JValue )
jfields =
    BooleanFileVisitor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "visit_1", jm_visit_1 )
        , ( "visit_2", jm_visit_2 ) ]
        BooleanFileVisitor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "IncludeFileExtensionsBooleanFileVisitor"
        [ ( "jm_visit_1", jm_visit_1 ), ( "jm_visit_2", jm_visit_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "filterStringBasicArrayList", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BooleanFileVisitor.jinit_1 JR.this [ (JR.local "filterStringBasicArrayList") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_visit_1 : JR.Method
jm_visit_1 jheap jthis jargs =
    JR.method [ ( "file", "" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals (JR.invoke "size_0" (JR.invoke "getFilterStringBasicArrayList_0" JR.this []) []) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool False) ]) identity, 
                    JR.return (JR.callVia BooleanFileVisitor.jvtable "visit_1" JR.this [ (JR.local "file") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_visit_2 : JR.Method
jm_visit_2 jheap jthis jargs =
    JR.method [ ( "file", "" ), ( "fileNameString", "" ) ] ""
        (JR.run [ 
                    JR.declare "fileNameAndExtension" "" (JR.invoke "getPath_0" (JR.local "file") []), 
                    JR.ifElse (JR.map2 JR.greater (JR.invoke "length_0" (JR.local "fileNameAndExtension") []) (JR.invoke "length_0" (JR.local "fileNameString") [])) (JR.run [ 
                        JR.declare "startIndex" "I" (JR.map2 JR.sub (JR.invoke "length_0" (JR.local "fileNameAndExtension") []) (JR.invoke "length_0" (JR.local "fileNameString") [])), 
                        JR.declare "fileName" "" (JR.invoke "substring_1" (JR.local "fileNameAndExtension") [ (JR.local "startIndex") ]), 
                        JR.ifElse (JR.map2 JR.equals (JR.invoke "compareTo_1" (JR.local "fileName") [ (JR.local "fileNameString") ]) (JR.int 0)) (JR.run [ 
                            JR.return (JR.bool True) ]) identity ]) identity, 
                    JR.return (JR.bool False) ])
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

