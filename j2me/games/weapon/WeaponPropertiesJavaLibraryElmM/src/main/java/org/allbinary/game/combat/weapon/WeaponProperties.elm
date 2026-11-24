module Org.Allbinary.Game.Combat.Weapon.WeaponProperties exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.weapon
-}

import JR
import Org.Allbinary.Logic.Math.BasicDecimal as BasicDecimal
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Logic.Communication.Log.PreLogUtil as PreLogUtil
import Org.Allbinary.Game.Combat.Weapon.SimpleWeaponProperties as SimpleWeaponProperties
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "WeaponProperties"


jchain : List String
jchain =
    [ "WeaponProperties" ]
        ++ SimpleWeaponProperties.jchain


jfields : List ( String, JR.JValue )
jfields =
    SimpleWeaponProperties.jfields ++ [ ( "reloadTime", JR.defaultOf "J" ), ( "targetingTime", JR.defaultOf "J" ), ( "speed", JR.defaultOf "" ), ( "MAX", JR.defaultOf "J" ), ( "ZERO", JR.defaultOf "S" ) ]


jvtable =
    JR.vtable
        [ ( "setReloadTime_1", jm_setReloadTime_1 )
        , ( "getReloadTime_0", jm_getReloadTime_0 )
        , ( "setTargetingTime_1", jm_setTargetingTime_1 )
        , ( "getTargetingTime_0", jm_getTargetingTime_0 )
        , ( "getSpeed_0", jm_getSpeed_0 )
        , ( "setSpeed_1", jm_setSpeed_1 )
        , ( "getDamageI_1", jm_getDamageI_1 )
        , ( "toStringArray_0", jm_toStringArray_0 )
        , ( "toString_0", jm_toString_0 ) ]
        SimpleWeaponProperties.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "WeaponProperties"
        [ ( "jm_setReloadTime_1", jm_setReloadTime_1 ), ( "jm_getReloadTime_0", jm_getReloadTime_0 ), ( "jm_setTargetingTime_1", jm_setTargetingTime_1 ), ( "jm_getTargetingTime_0", jm_getTargetingTime_0 ), ( "jm_getSpeed_0", jm_getSpeed_0 ), ( "jm_setSpeed_1", jm_setSpeed_1 ), ( "jm_getDamageI_1", jm_getDamageI_1 ), ( "jm_toStringArray_0", jm_toStringArray_0 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_5", jnew_5 ), ( "jinit_5", jinit_5 ) ]
        [ ( "jstatic_NULL_WEAPON_PROPERTIES", jstatic_NULL_WEAPON_PROPERTIES ), ( "jstatic_messageSent", jstatic_messageSent ), ( "jstatic_DAMAGE", jstatic_DAMAGE ), ( "jstatic_RANGE", jstatic_RANGE ), ( "jstatic_RELOAD", jstatic_RELOAD ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_WEAPON_PROPERTIES : JR.M
jstatic_NULL_WEAPON_PROPERTIES s =
    JR.static "WeaponProperties" jclinit "NULL_WEAPON_PROPERTIES"
        (JR.new jnew_5 [ (JR.long 0), (JR.long 0), (JR.long 0), (JR.int 0), (JR.cast "S" (JR.int 0)) ])
        s


jstatic_messageSent : JR.M
jstatic_messageSent s =
    JR.static "WeaponProperties" jclinit "messageSent"
        (JR.bool False)
        s


jstatic_DAMAGE : JR.M
jstatic_DAMAGE s =
    JR.static "WeaponProperties" jclinit "DAMAGE"
        (JR.str "Damage: ")
        s


jstatic_RANGE : JR.M
jstatic_RANGE s =
    JR.static "WeaponProperties" jclinit "RANGE"
        (JR.str "Range: ")
        s


jstatic_RELOAD : JR.M
jstatic_RELOAD s =
    JR.static "WeaponProperties" jclinit "RELOAD"
        (JR.str "Reload: ")
        s


jinit_5 : JR.Method
jinit_5 jheap jthis jargs =
    JR.method [ ( "reloadTime", "J" ), ( "targetingTime", "J" ), ( "speed", "J" ), ( "damage", "I" ), ( "dissipation", "S" ) ] ""
        (JR.run [ JR.exec (JR.callDirect SimpleWeaponProperties.jinit_0 JR.this []),
                JR.exec (JR.setField "speed" "" JR.this BasicDecimal.jstatic_ZERO_BIGDECIMAL),
                JR.exec (JR.setField "MAX" "J" JR.this (JR.long 10240)),
                JR.exec (JR.setField "ZERO" "S" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.ifElse (JR.and (JR.and (JR.map2 JR.less (JR.local "speed") (JR.thisField "MAX")) (JR.map2 JR.notEquals (JR.local "speed") (JR.long 0))) (JR.map JR.not_ jstatic_messageSent)) (JR.run [ 
                        JR.declare "MESSAGE" "" (JR.str "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: "), 
                        JR.declare "commonStrings" "" (JR.callStatic CommonStrings.jm_getInstance_0 []), 
                        JR.exec (JR.callStatic PreLogUtil.jm_put_3 [ (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.local "MESSAGE") ]) [ (JR.local "speed") ]) []), JR.this, (JR.field "CONSTRUCTOR" (JR.local "commonStrings")) ]), 
                        JR.exec (JR.setStatic "WeaponProperties.messageSent" "Z" (JR.bool True)) ]) identity, 
                    JR.exec (JR.invoke "setReloadTime_1" JR.this [ (JR.local "reloadTime") ]), 
                    JR.exec (JR.invoke "setTargetingTime_1" JR.this [ (JR.local "targetingTime") ]), 
                    JR.exec (JR.invoke "setDamage_1" JR.this [ (JR.local "damage") ]), 
                    JR.exec (JR.invoke "setDissipation_1" JR.this [ (JR.local "dissipation") ]), 
                    JR.exec (JR.invoke "setSpeed_1" JR.this [ (JR.new BasicDecimal.jnew_1 [ (JR.local "speed") ]) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.local "dissipation") (JR.thisField "ZERO")) (JR.run [ 
                        JR.declare "unscaledDamage" "J" (JR.map2 JR.mul (JR.invoke "getUnscaled_0" (JR.thisField "speed") []) (JR.cast "J" (JR.local "damage"))), 
                        JR.declare "scaledDissipation" "I" (JR.map2 JR.mul (JR.cast "I" (JR.local "dissipation")) (JR.invoke "getScaledFactorValue_0" (JR.thisField "speed") [])), 
                        JR.declare "value" "J" ((JR.map2 JR.div (JR.local "unscaledDamage") (JR.cast "J" (JR.local "scaledDissipation")))), 
                        JR.exec (JR.invoke "setRange_1" JR.this [ (JR.map2 JR.div (JR.cast "I" ((JR.map2 JR.mul (JR.local "value") (JR.long 9)))) (JR.int 10)) ]) ]) identity ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_5 : JR.Method
jnew_5 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_5 jheap jthis jargs


jm_setReloadTime_1 : JR.Method
jm_setReloadTime_1 jheap jthis jargs =
    JR.method [ ( "reloadTime", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "reloadTime" "J" JR.this (JR.local "reloadTime")) ])
        (jregister jheap)
        jthis
        jargs


jm_getReloadTime_0 : JR.Method
jm_getReloadTime_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.thisField "reloadTime") ])
        (jregister jheap)
        jthis
        jargs


jm_setTargetingTime_1 : JR.Method
jm_setTargetingTime_1 jheap jthis jargs =
    JR.method [ ( "targetingTime", "J" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "targetingTime" "J" JR.this (JR.local "targetingTime")) ])
        (jregister jheap)
        jthis
        jargs


jm_getTargetingTime_0 : JR.Method
jm_getTargetingTime_0 jheap jthis jargs =
    JR.method [] "J"
        (JR.run [ 
                    JR.return (JR.thisField "targetingTime") ])
        (jregister jheap)
        jthis
        jargs


jm_getSpeed_0 : JR.Method
jm_getSpeed_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "speed") ])
        (jregister jheap)
        jthis
        jargs


jm_setSpeed_1 : JR.Method
jm_setSpeed_1 jheap jthis jargs =
    JR.method [ ( "speed", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "speed" "" JR.this (JR.local "speed")) ])
        (jregister jheap)
        jthis
        jargs


jm_getDamageI_1 : JR.Method
jm_getDamageI_1 jheap jthis jargs =
    JR.method [ ( "range", "I" ) ] "I"
        (JR.run [ 
                    JR.return (JR.map2 JR.sub (JR.invoke "getDamage_0" JR.this []) ((JR.map2 JR.div ((JR.map2 JR.mul (JR.cast "I" (JR.invoke "getDissipation_0" JR.this [])) (JR.local "range"))) (JR.invoke "getScaled_0" (JR.thisField "speed") [])))) ])
        (jregister jheap)
        jthis
        jargs


jm_toStringArray_0 : JR.Method
jm_toStringArray_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "index" "I" (JR.int 0), 
                    JR.declare "stringArray" "" (JR.newArray "" [ (JR.int 3) ]), 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.andThen (JR.local "stringArray") (\jaN68510 -> JR.andThen (JR.postUpdate (JR.local "index") (\jwN68517 -> (JR.setLocal "index" "I" (JR.lit jwN68517))) JR.increment) (\jiN68510 -> (JR.aset (JR.lit jaN68510) (JR.lit jiN68510) (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_DAMAGE ]) [ (JR.invoke "getDamage_0" JR.this []) ]) []))))), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.andThen (JR.local "stringArray") (\jaN68652 -> JR.andThen (JR.postUpdate (JR.local "index") (\jwN68659 -> (JR.setLocal "index" "I" (JR.lit jwN68659))) JR.increment) (\jiN68652 -> (JR.aset (JR.lit jaN68652) (JR.lit jiN68652) (JR.invoke "toString_0" (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_RANGE ]) [ (JR.invoke "getRange_0" JR.this []) ]) []))))), 
                    JR.exec (JR.invoke "delete_2" (JR.local "stringBuffer") [ (JR.int 0), (JR.invoke "length_0" (JR.local "stringBuffer") []) ]), 
                    JR.exec (JR.andThen (JR.local "stringArray") (\jaN68798 -> JR.andThen (JR.postUpdate (JR.local "index") (\jwN68805 -> (JR.setLocal "index" "I" (JR.lit jwN68805))) JR.increment) (\jiN68798 -> (JR.aset (JR.lit jaN68798) (JR.lit jiN68798) (JR.invoke "toString_0" (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_RELOAD ]) [ (JR.invoke "getReloadTime_0" JR.this []) ]) []))))), 
                    JR.return (JR.local "stringArray") ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_DAMAGE ]) [ (JR.invoke "getDamage_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_RANGE ]) [ (JR.invoke "getRange_0" JR.this []) ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                    JR.exec (JR.invoke "appendlong_1" (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_RELOAD ]) [ (JR.invoke "getReloadTime_0" JR.this []) ]), 
                    JR.return (JR.invoke "toString_0" (JR.local "stringBuffer") []) ])
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

