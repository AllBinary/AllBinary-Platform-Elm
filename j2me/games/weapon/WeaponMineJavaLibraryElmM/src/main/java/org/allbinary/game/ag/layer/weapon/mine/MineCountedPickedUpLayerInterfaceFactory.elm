module Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineCountedPickedUpLayerInterfaceFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.layer.weapon.mine
-}

import JR
import Org.Allbinary.Game.Layer.Pickup.CountedPickedUpLayerInterfaceFactory as CountedPickedUpLayerInterfaceFactory
import Org.Allbinary.Animation.FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactory
import Org.Allbinary.Game.Layer.Pickup.IconLayerFactory as IconLayerFactory
import Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineLayerCircularStaticPool as MineLayerCircularStaticPool
import Org.Allbinary.Game.Ag.Layer.Weapon.Mine.MineWeaponResources as MineWeaponResources
import Org.Allbinary.Game.Layer.Pickup.PickedUpLayerTypeFactory as PickedUpLayerTypeFactory
import Org.Allbinary.Logic.Math.SmallIntegerSingletonFactory as SmallIntegerSingletonFactory
import Org.Allbinary.Game.Combat.Weapon.WeaponProperties as WeaponProperties


jclass : String
jclass =
    "MineCountedPickedUpLayerInterfaceFactory"


jchain : List String
jchain =
    [ "MineCountedPickedUpLayerInterfaceFactory" ]
        ++ CountedPickedUpLayerInterfaceFactory.jchain


jfields : List ( String, JR.JValue )
jfields =
    CountedPickedUpLayerInterfaceFactory.jfields ++ [ ( "weaponLayerCircularStaticPool", JR.defaultOf "" ), ( "weaponProperties", JR.defaultOf "" ), ( "smallIntegerSingletonFactory", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_0", jm_init_0 )
        , ( "getInstance_0", jm_getInstance_0 )
        , ( "getTotal_0", jm_getTotal_0 )
        , ( "getNextInstance_4", jm_getNextInstance_4 ) ]
        CountedPickedUpLayerInterfaceFactory.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "MineCountedPickedUpLayerInterfaceFactory"
        [ ( "jm_init_0", jm_init_0 ), ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_getTotal_0", jm_getTotal_0 ), ( "jm_getNextInstance_4", jm_getNextInstance_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_pickedUpLayerInterfaceFactoryInterface", jstatic_pickedUpLayerInterfaceFactoryInterface ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_pickedUpLayerInterfaceFactoryInterface : JR.M
jstatic_pickedUpLayerInterfaceFactoryInterface s =
    JR.static "MineCountedPickedUpLayerInterfaceFactory" jclinit "pickedUpLayerInterfaceFactoryInterface"
        CountedPickedUpLayerInterfaceFactory.jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect CountedPickedUpLayerInterfaceFactory.jinit_3 JR.this [ (JR.field "MINE" (JR.callStatic PickedUpLayerTypeFactory.jm_getInstance_0 [])), (JR.callStatic IconLayerFactory.jm_getInstance_3 [ (JR.invoke "getInstance_1" (JR.invoke "get_1" (JR.callStatic FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0 []) [ (JR.field "DROP_ICON_RESOURCE" (JR.callStatic MineWeaponResources.jm_getInstance_0 [])) ]) [ (JR.int 0) ]), (JR.int 10), (JR.int 10) ]), (JR.invoke "getInstance_1" (JR.invoke "get_1" (JR.callStatic FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0 []) [ (JR.field "DROP_RESOURCE" (JR.callStatic MineWeaponResources.jm_getInstance_0 [])) ]) [ (JR.int 0) ]) ]),
                JR.exec (JR.setField "weaponLayerCircularStaticPool" "" JR.this (JR.callStatic MineLayerCircularStaticPool.jm_getInstance_0 [])),
                JR.exec (JR.setField "weaponProperties" "" JR.this (JR.new WeaponProperties.jnew_5 [ (JR.map JR.neg (JR.long 1)), (JR.map JR.neg (JR.long 1)), (JR.int 0), (JR.int 8000), (JR.cast "S" (JR.int 10)) ])),
                JR.exec (JR.setField "smallIntegerSingletonFactory" "" JR.this (JR.callStatic SmallIntegerSingletonFactory.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_0 : JR.Method
jm_init_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.setStatic "MineCountedPickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactoryInterface" "" (JR.new jnew_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_pickedUpLayerInterfaceFactoryInterface ])
        (jregister jheap)
        jthis
        jargs


jm_getTotal_0 : JR.Method
jm_getTotal_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.int 3) ])
        (jregister jheap)
        jthis
        jargs


jm_getNextInstance_4 : JR.Method
jm_getNextInstance_4 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "x", "I" ), ( "y", "I" ), ( "z", "I" ) ] ""
        (JR.run [ 
                    JR.declare "sourceLayerInterface" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.invoke "getAt_1" (JR.thisField "smallIntegerSingletonFactory") [ (JR.int 0) ]) ]), 
                    JR.declare "angle" "" (JR.invoke "get_1" (JR.local "hashtable") [ (JR.invoke "getAt_1" (JR.thisField "smallIntegerSingletonFactory") [ (JR.int 1) ]) ]), 
                    JR.declare "scoreableInterface" "" (JR.local "sourceLayerInterface"), 
                    JR.return (JR.invoke "getInstanceWeaponLayer_8" (JR.thisField "weaponLayerCircularStaticPool") [ (JR.local "sourceLayerInterface"), (JR.local "x"), (JR.local "y"), (JR.local "z"), (JR.cast "I" (JR.invoke "intValue_0" (JR.local "angle") [])), (JR.int 0), (JR.thisField "weaponProperties"), (JR.local "scoreableInterface") ]) ])
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

