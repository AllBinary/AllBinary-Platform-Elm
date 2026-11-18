module Org.Allbinary.Game.Part.PartInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.part
-}

import JR
import Org.Allbinary.Animation.AnimationInterfaceCompositeInterface as AnimationInterfaceCompositeInterface
import Org.Allbinary.Graphics.Paint.PaintableInterface as PaintableInterface


jclass : String
jclass =
    "PartInterface"


jchain : List String
jchain =
    [ "PartInterface" ]
        ++ PaintableInterface.jchain
        ++ AnimationInterfaceCompositeInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "PartInterface"
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

