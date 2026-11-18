module Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineLayerFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.weapon.mine
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayerFactoryInterface as AllBinaryLayerFactoryInterface
import Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineLayer as MineLayer


jclass : String
jclass =
    "MineLayerFactory"


jchain : List String
jchain =
    [ "MineLayerFactory" ]
        ++ AllBinaryLayerFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "viewPositionFactoryInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MineLayerFactory"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "viewPositionFactoryInterface", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "viewPositionFactoryInterface" "" JR.this (JR.local "viewPositionFactoryInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.new MineLayer.jnew_1 [ (JR.invoke "getInstance_0" (JR.thisField "viewPositionFactoryInterface") []) ]) ])
        (jregister jheap)
        jthis
        jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

