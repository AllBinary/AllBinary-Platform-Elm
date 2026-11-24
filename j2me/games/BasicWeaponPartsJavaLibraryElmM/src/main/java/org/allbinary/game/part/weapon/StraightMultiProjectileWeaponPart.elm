module Org.Allbinary.Game.Part.Weapon.StraightMultiProjectileWeaponPart exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.part.weapon
-}

import JR
import Org.Allbinary.Layer.AllBinaryLayer as AllBinaryLayer
import Org.Allbinary.Game.Part.Weapon.BasicWeaponPart as BasicWeaponPart
import Org.Allbinary.Math.NoDecimalTrigTable as NoDecimalTrigTable
import Org.Allbinary.Game.Score.NoScoreable as NoScoreable
import Org.Allbinary.Graphics.RelativeRelationship as RelativeRelationship
import Org.Allbinary.Game.Combat.Weapon.WeaponProperties as WeaponProperties


jclass : String
jclass =
    "StraightMultiProjectileWeaponPart"


jchain : List String
jchain =
    [ "StraightMultiProjectileWeaponPart" ]
        ++ BasicWeaponPart.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicWeaponPart.jfields ++ [ ( "weaponLayerCircularStaticPool", JR.defaultOf "" ), ( "total", JR.defaultOf "I" ), ( "noDecimalTrigTable", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "createStraightMultiProjectileWeaponPart_2", jm_createStraightMultiProjectileWeaponPart_2 )
        , ( "processScore_5", jm_processScore_5 ) ]
        BasicWeaponPart.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "StraightMultiProjectileWeaponPart"
        [ ( "jm_createStraightMultiProjectileWeaponPart_2", jm_createStraightMultiProjectileWeaponPart_2 ), ( "jm_processScore_5", jm_processScore_5 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "sourceLayerInterface", "" ), ( "weaponLayerCircularStaticPool", "" ), ( "total", "I" ), ( "weaponProperties", "" ), ( "scoreableInterface", "" ), ( "relativeRelationship", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicWeaponPart.jinit_5 JR.this [ (JR.local "animationInterface"), (JR.local "sourceLayerInterface"), (JR.local "weaponProperties"), (JR.local "scoreableInterface"), (JR.local "relativeRelationship") ]),
                JR.exec (JR.setField "noDecimalTrigTable" "" JR.this (JR.callStatic NoDecimalTrigTable.jm_getInstance_0 [])),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "total" "I" JR.this (JR.local "total")), 
                    JR.exec (JR.setField "weaponLayerCircularStaticPool" "" JR.this (JR.local "weaponLayerCircularStaticPool")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_7 : JR.Method
jnew_7 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_7 jheap jthis jargs


jm_createStraightMultiProjectileWeaponPart_2 : JR.Method
jm_createStraightMultiProjectileWeaponPart_2 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "weaponLayerCircularStaticPool", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.new jnew_7 [ (JR.local "animationInterface"), AllBinaryLayer.jstatic_NULL_ALLBINARY_LAYER, (JR.local "weaponLayerCircularStaticPool"), (JR.int 2), WeaponProperties.jstatic_NULL_WEAPON_PROPERTIES, (JR.callStatic NoScoreable.jm_getInstance_0 []), RelativeRelationship.jstatic_NULL_RELATIVE_RELATIONSHIP ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processScore_5 : JR.Method
jm_processScore_5 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "angle", "S" ), ( "otherAngle", "S" ), ( "weaponProperties", "" ), ( "scoreableInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "sourceLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.declare "reducedWidth" "I" ((JR.map2 JR.div (JR.map2 JR.mul (JR.invoke "getWidth_0" (JR.local "sourceLayerInterface") []) (JR.int 8)) (JR.int 10))), 
                    JR.declare "halfWidth" "I" ((JR.map2 JR.shr (JR.local "reducedWidth") (JR.int 1))), 
                    JR.declare "x" "I" (JR.invoke "getX_0" (JR.thisField "relativeRelationship") []), 
                    JR.declare "y" "I" (JR.invoke "getY_0" (JR.thisField "relativeRelationship") []), 
                    JR.declare "sine" "J" (JR.lit (JR.defaultOf "J")), 
                    JR.declare "beamX" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "cosine" "J" (JR.lit (JR.defaultOf "J")), 
                    JR.declare "beamY" "I" (JR.lit (JR.defaultOf "I")), 
                    JR.declare "weaponLayer" "" (JR.lit (JR.defaultOf "")), 
                    JR.declare "increment" "I" (JR.map2 JR.div (JR.local "reducedWidth") ((JR.map2 JR.sub (JR.thisField "total") (JR.int 1)))), 
                    JR.declare "next" "I" (JR.map JR.neg (JR.local "halfWidth")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "total")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN72515 -> (JR.setLocal "index" "I" (JR.lit jwN72515))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "sine" "J" ((JR.map2 JR.mul (JR.cast "J" (JR.local "next")) (JR.invoke "sin_1" (JR.thisField "noDecimalTrigTable") [ (JR.cast "I" (JR.local "angle")) ])))), 
                        JR.exec (JR.setLocal "beamX" "I" (JR.cast "I" ((JR.map2 JR.div (JR.local "sine") (JR.cast "J" (JR.field "SCALE" (JR.thisField "noDecimalTrigTable"))))))), 
                        JR.exec (JR.setLocal "cosine" "J" ((JR.map2 JR.mul (JR.cast "J" (JR.local "next")) (JR.invoke "cos_1" (JR.thisField "noDecimalTrigTable") [ (JR.cast "I" (JR.local "angle")) ])))), 
                        JR.exec (JR.setLocal "beamY" "I" (JR.map JR.neg (JR.cast "I" ((JR.map2 JR.div (JR.local "cosine") (JR.cast "J" (JR.field "SCALE" (JR.thisField "noDecimalTrigTable")))))))), 
                        JR.exec (JR.setLocal "weaponLayer" "" (JR.invoke "getInstanceWeaponLayer_8" (JR.thisField "weaponLayerCircularStaticPool") [ (JR.local "sourceLayerInterface"), (JR.map2 JR.add (JR.local "x") (JR.local "beamX")), (JR.map2 JR.add (JR.local "y") (JR.local "beamY")), (JR.int 0), (JR.cast "I" (JR.local "angle")), (JR.cast "I" (JR.local "otherAngle")), (JR.local "weaponProperties"), (JR.local "scoreableInterface") ])), 
                        JR.exec (JR.invoke "append_1" (JR.local "allbinaryLayerManager") [ (JR.local "weaponLayer") ]), 
                        JR.exec (JR.setLocal "next" "I" (JR.map2 JR.add (JR.local "next") (JR.local "increment"))) ]) ] ])
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

