module Org.Allbinary.Logic.Io.File.Filter.BasicFileFilterUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.logic.io.file.filter
-}

import JR
import Org.Allbinary.Util.BasicArrayListD as BasicArrayListD
import Org.Allbinary.Logic.Io.File.Visitor.IncludeFileExtensionsBooleanFileVisitor as IncludeFileExtensionsBooleanFileVisitor
import Org.Allbinary.Logic.Io.File.Filter.VisitorFileFilter as VisitorFileFilter


jclass : String
jclass =
    "BasicFileFilterUtil"


jchain : List String
jchain =
    [ "BasicFileFilterUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_1", jm_getInstance_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicFileFilterUtil"
        [ ( "jm_getInstance_1", jm_getInstance_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
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


jm_getInstance_1 : JR.Method
jm_getInstance_1 jheap jthis jargs =
    JR.method [ ( "extension", "" ) ] ""
        (JR.run [ 
                    JR.declare "vector" "" (JR.new BasicArrayListD.jnew_0 []), 
                    JR.exec (JR.invoke "add_1" (JR.local "vector") [ (JR.local "extension") ]), 
                    JR.declare "includeFileExtensionsBooleanFileVisitor" "" (JR.new IncludeFileExtensionsBooleanFileVisitor.jnew_1 [ (JR.local "vector") ]), 
                    JR.return (JR.new VisitorFileFilter.jnew_1 [ (JR.local "includeFileExtensionsBooleanFileVisitor") ]) ])
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

