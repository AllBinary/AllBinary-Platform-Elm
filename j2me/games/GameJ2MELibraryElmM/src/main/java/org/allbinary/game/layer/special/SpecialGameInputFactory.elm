module Org.Allbinary.Game.Layer.Special.SpecialGameInputFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.special
-}

import JR
import Org.Allbinary.Game.Layer.Special.SpecialGameInput as SpecialGameInput


jclass : String
jclass =
    "SpecialGameInputFactory"


jchain : List String
jchain =
    [ "SpecialGameInputFactory" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        []
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpecialGameInputFactory"
        [ ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NO_SPECIAL_GAME_INPUT", jstatic_NO_SPECIAL_GAME_INPUT ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NO_SPECIAL_GAME_INPUT : JR.M
jstatic_NO_SPECIAL_GAME_INPUT s =
    JR.static "SpecialGameInputFactory" jclinit "NO_SPECIAL_GAME_INPUT"
        (JR.new SpecialGameInput.jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

