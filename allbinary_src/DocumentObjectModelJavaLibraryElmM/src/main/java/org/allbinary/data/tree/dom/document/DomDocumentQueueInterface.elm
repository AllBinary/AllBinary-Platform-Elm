module Org.Allbinary.Data.Tree.Dom.Document.DomDocumentQueueInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.data.tree.dom.document
-}

import JR



jclass : String
jclass =
    "DomDocumentQueueInterface"


jchain : List String
jchain =
    [ "DomDocumentQueueInterface" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DomDocumentQueueInterface"
        []
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

