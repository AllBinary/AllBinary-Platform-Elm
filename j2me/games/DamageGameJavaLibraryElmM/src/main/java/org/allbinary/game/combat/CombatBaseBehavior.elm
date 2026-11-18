module Org.Allbinary.Game.Combat.CombatBaseBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat
-}

import JR
import Org.Allbinary.Game.Combat.Damage.DamageableBaseBehavior as DamageableBaseBehavior
import Org.Allbinary.Game.Combat.Destroy.DestroyableBaseBehavior as DestroyableBaseBehavior


jclass : String
jclass =
    "CombatBaseBehavior"


jchain : List String
jchain =
    [ "CombatBaseBehavior" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "damageableBaseBehavior", JR.defaultOf "" ), ( "destroyableBaseBehavior", JR.defaultOf "" ), ( "readyForExplosion", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "getDamageableBaseBehavior_0", jm_getDamageableBaseBehavior_0 )
        , ( "getDestroyableBaseBehavior_0", jm_getDestroyableBaseBehavior_0 )
        , ( "isReadyForExplosion_0", jm_isReadyForExplosion_0 )
        , ( "setReadyForExplosion_1", jm_setReadyForExplosion_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CombatBaseBehavior"
        [ ( "jm_getDamageableBaseBehavior_0", jm_getDamageableBaseBehavior_0 ), ( "jm_getDestroyableBaseBehavior_0", jm_getDestroyableBaseBehavior_0 ), ( "jm_isReadyForExplosion_0", jm_isReadyForExplosion_0 ), ( "jm_setReadyForExplosion_1", jm_setReadyForExplosion_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        [ ( "jstatic_NULL_COMBAT_BEHAVIOR", jstatic_NULL_COMBAT_BEHAVIOR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_COMBAT_BEHAVIOR : JR.M
jstatic_NULL_COMBAT_BEHAVIOR s =
    JR.static "CombatBaseBehavior" jclinit "NULL_COMBAT_BEHAVIOR"
        (JR.new jnew_2 [ (JR.callStatic DamageableBaseBehavior.jm_getInstance_0 []), (JR.callStatic DestroyableBaseBehavior.jm_getInstance_0 []) ])
        s


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "damageableBaseBehavior", "" ), ( "destroyableBaseBehavior", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "damageableBaseBehavior" "" JR.this (JR.local "damageableBaseBehavior")), 
                    JR.exec (JR.setField "destroyableBaseBehavior" "" JR.this (JR.local "destroyableBaseBehavior")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_getDamageableBaseBehavior_0 : JR.Method
jm_getDamageableBaseBehavior_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "damageableBaseBehavior") ])
        (jregister jheap)
        jthis
        jargs


jm_getDestroyableBaseBehavior_0 : JR.Method
jm_getDestroyableBaseBehavior_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "destroyableBaseBehavior") ])
        (jregister jheap)
        jthis
        jargs


jm_isReadyForExplosion_0 : JR.Method
jm_isReadyForExplosion_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "readyForExplosion") ])
        (jregister jheap)
        jthis
        jargs


jm_setReadyForExplosion_1 : JR.Method
jm_setReadyForExplosion_1 jheap jthis jargs =
    JR.method [ ( "readyForExplosion", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "readyForExplosion" "Z" JR.this (JR.local "readyForExplosion")) ])
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

