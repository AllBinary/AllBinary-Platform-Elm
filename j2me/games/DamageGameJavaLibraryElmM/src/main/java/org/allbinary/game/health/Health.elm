module Org.Allbinary.Game.Health.Health exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.health
-}

import JR
import Org.Allbinary.String.CommonSeps as CommonSeps
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil
import Org.Allbinary.Game.Health.HealthInterface as HealthInterface
import Org.Allbinary.Game.Health.NullHealthListener as NullHealthListener
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "Health"


jchain : List String
jchain =
    [ "Health" ]
        ++ HealthInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "health", JR.defaultOf "I" ), ( "maxHealth", JR.defaultOf "I" ), ( "healthListenerInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "heal_1", jm_heal_1 )
        , ( "healMax_0", jm_healMax_0 )
        , ( "isDamaged_0", jm_isDamaged_0 )
        , ( "damage_1", jm_damage_1 )
        , ( "isAlive_0", jm_isAlive_0 )
        , ( "getMaxHealth_0", jm_getMaxHealth_0 )
        , ( "setMaxHealth_1", jm_setMaxHealth_1 )
        , ( "setHealth_1", jm_setHealth_1 )
        , ( "getHealth_0", jm_getHealth_0 )
        , ( "addListener_1", jm_addListener_1 )
        , ( "toString_0", jm_toString_0 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "Health"
        [ ( "jm_heal_1", jm_heal_1 ), ( "jm_healMax_0", jm_healMax_0 ), ( "jm_isDamaged_0", jm_isDamaged_0 ), ( "jm_damage_1", jm_damage_1 ), ( "jm_isAlive_0", jm_isAlive_0 ), ( "jm_getMaxHealth_0", jm_getMaxHealth_0 ), ( "jm_setMaxHealth_1", jm_setMaxHealth_1 ), ( "jm_setHealth_1", jm_setHealth_1 ), ( "jm_getHealth_0", jm_getHealth_0 ), ( "jm_addListener_1", jm_addListener_1 ), ( "jm_toString_0", jm_toString_0 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_NULL_HEALTH", jstatic_NULL_HEALTH ), ( "jstatic_NAME", jstatic_NAME ), ( "jstatic_HEALTH_LABEL", jstatic_HEALTH_LABEL ), ( "jstatic_MAX_HEALTH_LABEL", jstatic_MAX_HEALTH_LABEL ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_HEALTH : JR.M
jstatic_NULL_HEALTH s =
    JR.static "Health" jclinit "NULL_HEALTH"
        (JR.new jnew_1 [ (JR.int 0) ])
        s


jstatic_NAME : JR.M
jstatic_NAME s =
    JR.static "Health" jclinit "NAME"
        (JR.str "Health Resource")
        s


jstatic_HEALTH_LABEL : JR.M
jstatic_HEALTH_LABEL s =
    JR.static "Health" jclinit "HEALTH_LABEL"
        (JR.str "Health: ")
        s


jstatic_MAX_HEALTH_LABEL : JR.M
jstatic_MAX_HEALTH_LABEL s =
    JR.static "Health" jclinit "MAX_HEALTH_LABEL"
        (JR.str " Max: ")
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "maxHealth", "I" ) ] ""
        (JR.run [ JR.exec (JR.setField "healthListenerInterface" "" JR.this NullHealthListener.jstatic_NULL_HEALTH_LISTENER),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setMaxHealth_1" JR.this [ (JR.local "maxHealth") ]), 
                    JR.exec (JR.invoke "setHealth_1" JR.this [ (JR.local "maxHealth") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_heal_1 : JR.Method
jm_heal_1 jheap jthis jargs =
    JR.method [ ( "ahealth", "I" ) ] ""
        (JR.run [ 
                    JR.declare "newHealth" "I" (JR.map2 JR.add (JR.invoke "getHealth_0" JR.this []) (JR.local "ahealth")), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "newHealth") (JR.invoke "getMaxHealth_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.invoke "setHealth_1" JR.this [ (JR.invoke "getMaxHealth_0" JR.this []) ]) ]) (JR.run [ 
                        JR.exec (JR.invoke "setHealth_1" JR.this [ (JR.local "newHealth") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_healMax_0 : JR.Method
jm_healMax_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setHealth_1" JR.this [ (JR.invoke "getMaxHealth_0" JR.this []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isDamaged_0 : JR.Method
jm_isDamaged_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.invoke "getHealth_0" JR.this []) (JR.invoke "getMaxHealth_0" JR.this [])) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_damage_1 : JR.Method
jm_damage_1 jheap jthis jargs =
    JR.method [ ( "ahealth", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.local "ahealth") (JR.int 0)) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "******* Trying to heal when damaging. Damage: ") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "ahealth") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.field "SPACE" (JR.callStatic CommonSeps.jm_getInstance_0 [])) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" JR.this []) ]), 
                        JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), JR.this ]), 
                        JR.returnVoid ]) identity, 
                    JR.declare "health" "I" (JR.map2 JR.sub (JR.invoke "getHealth_0" JR.this []) (JR.local "ahealth")), 
                    JR.exec (JR.invoke "setHealth_1" JR.this [ (JR.local "health") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isAlive_0 : JR.Method
jm_isAlive_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.lessEquals (JR.invoke "getHealth_0" JR.this []) (JR.int 0)) (JR.run [ 
                        JR.return (JR.bool False) ]) (JR.run [ 
                        JR.return (JR.bool True) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_getMaxHealth_0 : JR.Method
jm_getMaxHealth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "maxHealth") ])
        (jregister jheap)
        jthis
        jargs


jm_setMaxHealth_1 : JR.Method
jm_setMaxHealth_1 jheap jthis jargs =
    JR.method [ ( "maxHealth", "I" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "maxHealth" "I" JR.this (JR.local "maxHealth")) ])
        (jregister jheap)
        jthis
        jargs


jm_setHealth_1 : JR.Method
jm_setHealth_1 jheap jthis jargs =
    JR.method [ ( "health", "I" ) ] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.greater (JR.local "health") (JR.invoke "getMaxHealth_0" JR.this [])) (JR.run [ 
                        JR.exec (JR.setField "health" "I" JR.this (JR.invoke "getMaxHealth_0" JR.this [])) ]) (JR.run [ 
                    JR.ifElse (JR.map2 JR.less (JR.local "health") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.setField "health" "I" JR.this (JR.int 0)) ]) (JR.run [ 
                        JR.exec (JR.setField "health" "I" JR.this (JR.local "health")) ]) ]), 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "healthListenerInterface") JR.null) (JR.run [ 
                        JR.exec (JR.invoke "onHealthChange_0" (JR.thisField "healthListenerInterface") []) ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_getHealth_0 : JR.Method
jm_getHealth_0 jheap jthis jargs =
    JR.method [] "I"
        (JR.run [ 
                    JR.return (JR.thisField "health") ])
        (jregister jheap)
        jthis
        jargs


jm_addListener_1 : JR.Method
jm_addListener_1 jheap jthis jargs =
    JR.method [ ( "healthGraphic", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "healthListenerInterface" "" JR.this (JR.local "healthGraphic")) ])
        (jregister jheap)
        jthis
        jargs


jm_toString_0 : JR.Method
jm_toString_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_HEALTH_LABEL ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "health") ]), 
                    JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ jstatic_MAX_HEALTH_LABEL ]), 
                    JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.thisField "maxHealth") ]), 
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

