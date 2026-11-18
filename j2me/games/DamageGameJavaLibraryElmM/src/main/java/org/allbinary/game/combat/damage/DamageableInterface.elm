module Org.Allbinary.Game.Combat.Damage.DamageableInterface exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.damage
-}

import JR
import Org.Allbinary.Layer.NamedInterface as NamedInterface


jclass : String
jclass =
    "DamageableInterface"


jchain : List String
jchain =
    [ "DamageableInterface" ]
        ++ NamedInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DamageableInterface"
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

