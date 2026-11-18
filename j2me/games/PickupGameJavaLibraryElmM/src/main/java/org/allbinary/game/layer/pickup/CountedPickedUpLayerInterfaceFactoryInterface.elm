module Org.Allbinary.Game.Layer.Pickup.CountedPickedUpLayerInterfaceFactoryInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.pickup
-}

import JR
import Org.Allbinary.Layer.LayerInterfaceFactoryInterface as LayerInterfaceFactoryInterface
import Org.Allbinary.Game.Layer.Pickup.PickedUpLayerInterfaceFactoryInterface as PickedUpLayerInterfaceFactoryInterface


jclass : String
jclass =
    "CountedPickedUpLayerInterfaceFactoryInterface"


jchain : List String
jchain =
    [ "CountedPickedUpLayerInterfaceFactoryInterface" ]
        ++ PickedUpLayerInterfaceFactoryInterface.jchain
        ++ LayerInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CountedPickedUpLayerInterfaceFactoryInterface"
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

