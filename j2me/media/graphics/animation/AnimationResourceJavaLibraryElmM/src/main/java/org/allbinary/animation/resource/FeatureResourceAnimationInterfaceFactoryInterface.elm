module Org.Allbinary.Animation.Resource.FeatureResourceAnimationInterfaceFactoryInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation.resource
-}

import JR
import Org.Allbinary.Game.Configuration.Feature.GameFeatureControlledInterface as GameFeatureControlledInterface
import Org.Allbinary.Game.Resource.RectangleResourceFactoryInterface as RectangleResourceFactoryInterface
import Org.Allbinary.Animation.Resource.ResourceAnimationInterfaceFactoryInterface as ResourceAnimationInterfaceFactoryInterface


jclass : String
jclass =
    "FeatureResourceAnimationInterfaceFactoryInterface"


jchain : List String
jchain =
    [ "FeatureResourceAnimationInterfaceFactoryInterface" ]
        ++ ResourceAnimationInterfaceFactoryInterface.jchain
        ++ RectangleResourceFactoryInterface.jchain
        ++ GameFeatureControlledInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "FeatureResourceAnimationInterfaceFactoryInterface"
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

