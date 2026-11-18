module Org.Allbinary.Game.Part.Weapon.BasicProjectileWeaponPart exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.part.weapon
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Game.Part.Weapon.BasicWeaponPart as BasicWeaponPart
import Org.Allbinary.Game.Score.NoScoreable as NoScoreable
import Org.Allbinary.Graphics.RelativeRelationship as RelativeRelationship
import Org.Allbinary.Game.Combat.Weapon.WeaponProperties as WeaponProperties


jclass : String
jclass =
    "BasicProjectileWeaponPart"


jchain : List String
jchain =
    [ "BasicProjectileWeaponPart" ]
        ++ BasicWeaponPart.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicWeaponPart.jfields ++ [ ( "weaponLayerCircularStaticPool", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createBasicProjectileWeaponPart_2", jm_createBasicProjectileWeaponPart_2 )
        , ( "processScore_5", jm_processScore_5 ) ]
        BasicWeaponPart.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicProjectileWeaponPart"
        [ ( "jm_createBasicProjectileWeaponPart_2", jm_createBasicProjectileWeaponPart_2 ), ( "jm_processScore_5", jm_processScore_5 ), ( "jnew_6", jnew_6 ), ( "jinit_6", jinit_6 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_6 : JR.Method
jinit_6 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "sourceLayerInterface", "" ), ( "weaponLayerCircularStaticPool", "" ), ( "weaponProperties", "" ), ( "scoreableInterface", "" ), ( "relativeRelationship", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicWeaponPart.jinit_5 JR.this [ (JR.local "animationInterface"), (JR.local "sourceLayerInterface"), (JR.local "weaponProperties"), (JR.local "scoreableInterface"), (JR.local "relativeRelationship") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "weaponLayerCircularStaticPool" "" JR.this (JR.local "weaponLayerCircularStaticPool")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_6 : JR.Method
jnew_6 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_6 jheap jthis jargs


jm_createBasicProjectileWeaponPart_2 : JR.Method
jm_createBasicProjectileWeaponPart_2 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "weaponLayerCircularStaticPool", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_6 [ (JR.local "animationInterface"), AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER, (JR.local "weaponLayerCircularStaticPool"), WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES, (JR.callStatic NoScoreable.jm_getInstance_0 []), RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processScore_5 : JR.Method
jm_processScore_5 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "angle", "S" ), ( "otherAngle", "S" ), ( "weaponProperties", "" ), ( "scoreableInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "weaponLayer" "" (JR.invoke "getInstanceWeaponLayer_8" (JR.thisField "weaponLayerCircularStaticPool") [ (JR.invoke "getOwnerLayerInterface_0" JR.this []), (JR.invoke "getX_0" (JR.thisField "relativeRelationship") []), (JR.invoke "getY_0" (JR.thisField "relativeRelationship") []), (JR.invoke "getZ_0" (JR.thisField "relativeRelationship") []), (JR.cast "I" (JR.local "angle")), (JR.cast "I" (JR.local "otherAngle")), (JR.local "weaponProperties"), (JR.local "scoreableInterface") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "allbinaryLayerManager") [ (JR.local "weaponLayer") ]) ])
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

