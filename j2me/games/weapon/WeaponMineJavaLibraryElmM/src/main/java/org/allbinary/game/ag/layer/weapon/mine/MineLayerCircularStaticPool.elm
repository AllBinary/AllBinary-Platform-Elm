module Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineLayerCircularStaticPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.weapon.mine
-}

import JR
import Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineCountedPickedUpLayerInterfaceFactory as MineCountedPickedUpLayerInterfaceFactory
import Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineLayerFactory as MineLayerFactory
import Org.Allbinary.Game.Layer.Weapon.WeaponLayerCircularPool as WeaponLayerCircularPool


jclass : String
jclass =
    "MineLayerCircularStaticPool"


jchain : List String
jchain =
    [ "MineLayerCircularStaticPool" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "getInstance_0", jm_getInstance_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MineLayerCircularStaticPool"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL", jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL : JR.M
jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL s =
    JR.static "MineLayerCircularStaticPool" jclinit "WEAPON_LAYER_CIRCULAR_STATIC_POOL"
        (JR.new WeaponLayerCircularPool.jnew_0 [])
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


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "viewPositionFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic MineCountedPickedUpLayerInterfaceFactory.jm_init_0 []), 
                    JR.exec (JR.invoke "initAllBinaryLayerCircularPool_2" jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL [ (JR.new MineLayerFactory.jnew_1 [ (JR.local "viewPositionFactoryInterface") ]), (JR.int 20) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL ])
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

