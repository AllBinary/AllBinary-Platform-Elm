module Org.Allbinary.Game.Input.Event.GameKeyEventListenerInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.input.event
-}

import JR
import Org.Allbinary.Game.Input.Event.DownGameKeyEventListenerInterface as DownGameKeyEventListenerInterface
import Org.Allbinary.Game.Input.Event.PressGameKeyEventListenerInterface as PressGameKeyEventListenerInterface
import Org.Allbinary.Game.Input.Event.UpGameKeyEventListenerInterface as UpGameKeyEventListenerInterface


jclass : String
jclass =
    "GameKeyEventListenerInterface"


jchain : List String
jchain =
    [ "GameKeyEventListenerInterface" ]
        ++ DownGameKeyEventListenerInterface.jchain
        ++ UpGameKeyEventListenerInterface.jchain
        ++ PressGameKeyEventListenerInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "GameKeyEventListenerInterface"
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

