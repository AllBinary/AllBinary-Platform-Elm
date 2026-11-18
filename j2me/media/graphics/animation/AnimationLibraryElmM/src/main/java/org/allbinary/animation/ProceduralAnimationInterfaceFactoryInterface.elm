module Org.Allbinary.Animation.ProceduralAnimationInterfaceFactoryInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.animation
-}

import JR
import Org.Allbinary.Animation.BasicAnimationInterfaceFactoryInterface as BasicAnimationInterfaceFactoryInterface


jclass : String
jclass =
    "ProceduralAnimationInterfaceFactoryInterface"


jchain : List String
jchain =
    [ "ProceduralAnimationInterfaceFactoryInterface" ]
        ++ BasicAnimationInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ProceduralAnimationInterfaceFactoryInterface"
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

