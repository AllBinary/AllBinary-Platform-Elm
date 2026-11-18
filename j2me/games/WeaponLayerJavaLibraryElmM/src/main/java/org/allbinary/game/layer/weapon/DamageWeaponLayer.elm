module Org.Allbinary.Game.Layer.Weapon.DamageWeaponLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.weapon
-}

import JR
import Org.Allbinary.Game.Layer.Weapon.CollidableDamageWeaponBehavior as CollidableDamageWeaponBehavior
import Org.Allbinary.Game.Layer.Weapon.WeaponLayer as WeaponLayer


jclass : String
jclass =
    "DamageWeaponLayer"


jchain : List String
jchain =
    [ "DamageWeaponLayer" ]
        ++ WeaponLayer.jchain


jfields : List ( String, JR.JValue )
jfields =
    WeaponLayer.jfields ++ []


jvtable =
    JR.vtable
        []
        WeaponLayer.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DamageWeaponLayer"
        [ ( "jnew_11", jnew_11 ), ( "jinit_11", jinit_11 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_11 : JR.Method
jinit_11 jheap jthis jargs =
    JR.method [ ( "name", "" ), ( "remoteInfo", "" ), ( "movement", "" ), ( "animationInterface", "" ), ( "destroyedAnimationInterface", "" ), ( "rectangle", "" ), ( "viewPosition", "" ), ( "username", "" ), ( "actorSessionId", "I" ), ( "id", "I" ), ( "multiPlayerType", "I" ) ] ""
        (JR.run [ JR.exec (JR.callDirect WeaponLayer.jinit_8 JR.this [ (JR.local "name"), (JR.local "remoteInfo"), (JR.local "multiPlayerType"), (JR.local "movement"), (JR.local "animationInterface"), (JR.local "destroyedAnimationInterface"), (JR.local "rectangle"), (JR.local "viewPosition") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setCollidableInferface_1" JR.this [ (JR.new CollidableDamageWeaponBehavior.jnew_1 [ (JR.bool True) ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_11 : JR.Method
jnew_11 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_11 jheap jthis jargs


-- The Elm Architecture: the Model holds the heap and an object of the class and a Msg calls one of its methods


type alias Model =
    JR.Model


type alias Msg =
    JR.Msg


update : Msg -> Model -> Model
update =
    JR.update

