module Org.Allbinary.Game.Layer.Special.SpecialGameInputProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.special
-}

import JR
import Org.Allbinary.Game.Input.GameInputProcessor as GameInputProcessor


jclass : String
jclass =
    "SpecialGameInputProcessor"


jchain : List String
jchain =
    [ "SpecialGameInputProcessor" ]
        ++ GameInputProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    GameInputProcessor.jfields ++ [ ( "collidableDestroyableDamageableLayer", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        []
        GameInputProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SpecialGameInputProcessor"
        [ ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "collidableDestroyableDamageableLayer", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect GameInputProcessor.jinit_0 JR.this []),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "collidableDestroyableDamageableLayer" "" JR.this (JR.local "collidableDestroyableDamageableLayer")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

