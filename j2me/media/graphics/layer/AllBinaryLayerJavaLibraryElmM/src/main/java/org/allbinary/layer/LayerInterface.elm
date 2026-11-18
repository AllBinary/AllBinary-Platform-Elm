module Org.Allbinary.Layer.LayerInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.layer
-}

import JR
import Org.Allbinary.Game.Identification.GroupInterfaceCompositeInterface as GroupInterfaceCompositeInterface
import Org.Allbinary.Layer.NamedInterface as NamedInterface
import Org.Allbinary.Graphics.Paint.PaintableInterface as PaintableInterface
import Org.Allbinary.Layer.PositionInterface as PositionInterface


jclass : String
jclass =
    "LayerInterface"


jchain : List String
jchain =
    [ "LayerInterface" ]
        ++ NamedInterface.jchain
        ++ PaintableInterface.jchain
        ++ GroupInterfaceCompositeInterface.jchain
        ++ PositionInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "LayerInterface"
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

