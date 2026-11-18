module Org.Allbinary.Game.Layer.Weapon.SimpleWeaponLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.weapon
-}

import JR
import Org.Allbinary.Game.Layer.Weapon.CollidableWeaponBehavior as CollidableWeaponBehavior
import Org.Allbinary.Game.Combat.Damage.ExplosionResources as ExplosionResources
import Org.Allbinary.Animation.FeaturedAnimationInterfaceFactoryInterfaceFactory as FeaturedAnimationInterfaceFactoryInterfaceFactory
import Org.Allbinary.Animation.NullIndexedAnimationFactory as NullIndexedAnimationFactory
import Org.Allbinary.Game.Layer.Weapon.WeaponLayer as WeaponLayer


jclass : String
jclass =
    "SimpleWeaponLayer"


jchain : List String
jchain =
    [ "SimpleWeaponLayer" ]
        ++ WeaponLayer.jchain


jfields : List ( String, JR.JValue )
jfields =
    WeaponLayer.jfields ++ []


jvtable =
    JR.vtable
        [ ( "createDestroyed_0", jm_createDestroyed_0 ) ]
        WeaponLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SimpleWeaponLayer"
        [ ( "jm_createDestroyed_0", jm_createDestroyed_0 ), ( "jnew_8", jnew_8 ), ( "jinit_8", jinit_8 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_8 : JR.Method
jinit_8 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "remoteInfo", "" ), ( "multiPlayerType", "I" ), ( "movement", "" ), ( "animationInterface", "" ), ( "destroyedAnimationInterface", "" ), ( "rectangle", "" ), ( "viewPosition", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect WeaponLayer.jinit_8 JR.this [ (JR.local "name"), (JR.local "remoteInfo"), (JR.local "multiPlayerType"), (JR.local "movement"), (JR.local "animationInterface"), (JR.local "destroyedAnimationInterface"), (JR.local "rectangle"), (JR.local "viewPosition") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setCollidableInferface_1" JR.this [ (JR.new CollidableWeaponBehavior.jnew_1 [ (JR.bool True) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_8 : JR.Method
jnew_8 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_8 jheap jthis jargs


jm_createDestroyed_0 : JR.Method
jm_createDestroyed_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getInstanceAnimation_1" (JR.invoke "getProcedural_1" (JR.callStatic FeaturedAnimationInterfaceFactoryInterfaceFactory.jm_getInstance_0 []) [ (JR.field "THIRD_EXPLOSION_RESOURCE" (JR.callStatic ExplosionResources.jm_getInstance_0 [])) ]) [ (JR.invoke "getInstance_1" (JR.callStatic NullIndexedAnimationFactory.jm_getFactoryInstance_0 []) [ (JR.int 0) ]) ]) ])
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

