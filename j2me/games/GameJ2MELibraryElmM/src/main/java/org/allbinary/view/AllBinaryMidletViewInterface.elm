module Org.Allbinary.View.AllBinaryMidletViewInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.view
-}

import JR
import Org.Allbinary.Game.Midlet.DemoGameMidletEventListener as DemoGameMidletEventListener
import Org.Allbinary.View.EmulatorViewInterface as EmulatorViewInterface
import Org.Allbinary.Game.Configuration.Event.GameInitializedListenerInterface as GameInitializedListenerInterface
import Org.Allbinary.Midlet.MidletCompositeInterface as MidletCompositeInterface


jclass : String
jclass =
    "AllBinaryMidletViewInterface"


jchain : List String
jchain =
    [ "AllBinaryMidletViewInterface" ]
        ++ MidletCompositeInterface.jchain
        ++ EmulatorViewInterface.jchain
        ++ DemoGameMidletEventListener.jchain
        ++ GameInitializedListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryMidletViewInterface"
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

