module Org.Allbinary.Logic.Io.File.Directory.DirectoryBooleanFileVisitor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.directory
-}

import JR
import Org.Allbinary.Logic.Util.Visitor.VisitorInterface as VisitorInterface


jclass : String
jclass =
    "DirectoryBooleanFileVisitor"


jchain : List String
jchain =
    [ "DirectoryBooleanFileVisitor" ]
        ++ VisitorInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "visit_1", jm_visit_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DirectoryBooleanFileVisitor"
        [ ( "jm_visit_1", jm_visit_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_visit_1 : JR.Method
jm_visit_1 jheap jthis jargs =
    JR.method [ ( "anyType", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.invoke "visit_1" JR.this [ (JR.local "anyType") ]) ])
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

