module Org.Allbinary.Game.Combat.Weapon.SimpleWeaponProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.weapon
-}

import JR



jclass : String
jclass =
    "SimpleWeaponProperties"


jchain : List String
jchain =
    [ "SimpleWeaponProperties" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "damage", JR.defaultOf "I" ), ( "dissipation", JR.defaultOf "S" ), ( "range", JR.defaultOf "I" ) ]


jvtable =
    JR.vtable
        [ ( "set_1", jm_set_1 )
        , ( "setDamage_1", jm_setDamage_1 )
        , ( "getDamage_0", jm_getDamage_0 )
        , ( "setDissipation_1", jm_setDissipation_1 )
        , ( "getDissipation_0", jm_getDissipation_0 )
        , ( "getRange_0", jm_getRange_0 )
        , ( "setRange_1", jm_setRange_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SimpleWeaponProperties"
        [ ( "jm_set_1", jm_set_1 ), ( "jm_setDamage_1", jm_setDamage_1 ), ( "jm_getDamage_0", jm_getDamage_0 ), ( "jm_setDissipation_1", jm_setDissipation_1 ), ( "jm_getDissipation_0", jm_getDissipation_0 ), ( "jm_getRange_0", jm_getRange_0 ), ( "jm_setRange_1", jm_setRange_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


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


jm_set_1 : JR.Method
jm_set_1 jheap jthis jargs =
    JR.method [ ( "simpleWeaponProperties", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setDamage_1" JR.this [ (JR.invoke "getDamage_0" (JR.local "simpleWeaponProperties") []) ]), 
                    JR.exec (JR.invoke "setDissipation_1" JR.this [ (JR.invoke "getDissipation_0" (JR.local "simpleWeaponProperties") []) ]), 
                    JR.exec (JR.invoke "setRange_1" JR.this [ (JR.invoke "getRange_0" (JR.local "simpleWeaponProperties") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_setDamage_1 : JR.Method
jm_setDamage_1 jheap jthis jargs =
    JR.method [ ( "damage", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "damage" "I" JR.this (JR.local "damage")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDamage_0 : JR.Method
jm_getDamage_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "damage") ])
        (jregister jheap)
        jthis
        jargs


jm_setDissipation_1 : JR.Method
jm_setDissipation_1 jheap jthis jargs =
    JR.method [ ( "dissipation", "S" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "dissipation" "S" JR.this (JR.local "dissipation")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDissipation_0 : JR.Method
jm_getDissipation_0 jheap jthis jargs =
    JR.method [] "S"
        (JR.run [ 
                    JR.return (JR.thisField "dissipation") ])
        (jregister jheap)
        jthis
        jargs


jm_getRange_0 : JR.Method
jm_getRange_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "range") ])
        (jregister jheap)
        jthis
        jargs


jm_setRange_1 : JR.Method
jm_setRange_1 jheap jthis jargs =
    JR.method [ ( "range", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "range" "I" JR.this (JR.local "range")) ])
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

