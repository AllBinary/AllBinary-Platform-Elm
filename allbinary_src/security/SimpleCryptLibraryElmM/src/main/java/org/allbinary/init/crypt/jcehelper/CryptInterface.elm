module Org.Allbinary.Init.Crypt.Jcehelper.CryptInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.init.crypt.jcehelper
-}

import JR



jclass : String
jclass =
    "CryptInterface"


jchain : List String
jchain =
    [ "CryptInterface" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CryptInterface"
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

