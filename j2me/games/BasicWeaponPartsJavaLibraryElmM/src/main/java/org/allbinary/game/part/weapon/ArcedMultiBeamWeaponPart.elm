module Org.Allbinary.Game.Part.Weapon.ArcedMultiBeamWeaponPart exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.part.weapon
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Game.Part.Weapon.BasicWeaponPart as BasicWeaponPart


jclass : String
jclass =
    "ArcedMultiBeamWeaponPart"


jchain : List String
jchain =
    [ "ArcedMultiBeamWeaponPart" ]
        ++ BasicWeaponPart.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicWeaponPart.jfields ++ [ ( "weaponLayerCircularStaticPool", JR.defaultOf "" ), ( "total", JR.defaultOf "I" ), ( "TOTAL_ANGLE", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "processScore_5", jm_processScore_5 ) ]
        BasicWeaponPart.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ArcedMultiBeamWeaponPart"
        [ ( "jm_processScore_5", jm_processScore_5 ), ( "jnew_7", jnew_7 ), ( "jinit_7", jinit_7 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_7 : JR.Method
jinit_7 jheap jthis jargs =
    JR.method [ ( "animationInterface", "" ), ( "sourceLayerInterface", "" ), ( "weaponLayerCircularStaticPool", "" ), ( "total", "I" ), ( "weaponProperties", "" ), ( "scoreableInterface", "" ), ( "relativeRelationship", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicWeaponPart.jinit_5 JR.this [ (JR.local "animationInterface"), (JR.local "sourceLayerInterface"), (JR.local "weaponProperties"), (JR.local "scoreableInterface"), (JR.local "relativeRelationship") ]),
                JR.exec (JR.setField "TOTAL_ANGLE" "I" JR.this (JR.cast "I" (JR.field "TOTAL_ANGLE" (JR.callStatic AngleFactory.jm_getInstance_0 [])))),
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


jm_processScore_5 : JR.Method
jm_processScore_5 jheap jthis jargs =
    JR.method [ ( "allbinaryLayerManager", "" ), ( "angle", "S" ), ( "otherAngle", "S" ), ( "weaponProperties", "" ), ( "scoreableInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "increment" "S" (JR.cast "S" ((JR.map2 JR.div ((JR.map2 JR.sub (JR.thisField "total") (JR.int 1))) (JR.thisField "TOTAL_ANGLE")))), 
                    JR.declare "minAngle" "S" (JR.cast "S" ((JR.map2 JR.sub (JR.cast "I" (JR.local "angle")) ((JR.map2 JR.shr ((JR.map2 JR.mul (JR.cast "I" (JR.local "increment")) (JR.thisField "total"))) (JR.int 1)))))), 
                    JR.declare "next" "I" (JR.int 0), 
                    JR.declare "weaponLayer" "" (JR.lit (JR.defaultOf "")), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.thisField "total")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN71657 -> (JR.setLocal "index" "I" (JR.lit jwN71657))) JR.increment) ]) (JR.run [ 
                        JR.exec (JR.setLocal "weaponLayer" "" (JR.invoke "getInstanceWeaponLayer_8" (JR.thisField "weaponLayerCircularStaticPool") [ (JR.invoke "getOwnerLayerInterface_0" JR.this []), (JR.invoke "getX_0" (JR.thisField "relativeRelationship") []), (JR.invoke "getY_0" (JR.thisField "relativeRelationship") []), (JR.int 0), ((JR.map2 JR.add (JR.local "minAngle") (JR.local "increment"))), (JR.cast "I" (JR.local "otherAngle")), (JR.local "weaponProperties"), (JR.local "scoreableInterface") ])), 
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

