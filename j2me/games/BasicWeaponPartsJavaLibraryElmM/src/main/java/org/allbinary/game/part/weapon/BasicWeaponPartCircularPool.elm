module Org.Allbinary.Game.Part.Weapon.BasicWeaponPartCircularPool exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.part.weapon
-}

import JR
import Org.Allbinary.Game.Part.Weapon.BasicWeaponPart as BasicWeaponPart


jclass : String
jclass =
    "BasicWeaponPartCircularPool"


jchain : List String
jchain =
    [ "BasicWeaponPartCircularPool" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "basicWeaponPart", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "init_1", jm_init_1 )
        , ( "getInstance_4", jm_getInstance_4 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BasicWeaponPartCircularPool"
        [ ( "jm_init_1", jm_init_1 ), ( "jm_getInstance_4", jm_getInstance_4 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL", jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL : JR.M
jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL s =
    JR.static "BasicWeaponPartCircularPool" jclinit "NULL_BASIC_WEAPON_PART_CIRCULAR_POOL"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "basicWeaponPart" "" JR.this BasicWeaponPart.jstatic_NULL_BASIC_WEAPON_PART),
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "basicWeaponPartFactoryInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "basicWeaponPart" "" JR.this (JR.invoke "getInstance_0" (JR.local "basicWeaponPartFactoryInterface") [])) ])
        (jregister jheap)
        jthis
        jargs


jm_getInstance_4 : JR.Method
jm_getInstance_4 jheap jthis jargs =
    JR.method [ ( "sourceLayerInterface", "" ), ( "weaponProperties", "" ), ( "scoreableInterface", "" ), ( "relativeRelationship", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "init_4" (JR.thisField "basicWeaponPart") [ (JR.local "sourceLayerInterface"), (JR.local "weaponProperties"), (JR.local "scoreableInterface"), (JR.local "relativeRelationship") ]), 
                    JR.return (JR.thisField "basicWeaponPart") ])
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

