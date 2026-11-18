module Org.Allbinary.Game.Combat.Damage.DamageUtil exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.combat.damage
-}

import JR
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "DamageUtil"


jchain : List String
jchain =
    [ "DamageUtil" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "COLLIDE", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_2", jm_process_2 )
        , ( "debugDamage_2", jm_debugDamage_2 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "DamageUtil"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_2", jm_process_2 ), ( "jm_debugDamage_2", jm_debugDamage_2 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_instance", jstatic_instance ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_instance : JR.M
jstatic_instance s =
    JR.static "DamageUtil" jclinit "instance"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "COLLIDE" "" JR.this (JR.str "collide")),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_0 : JR.Method
jm_getInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return jstatic_instance ])
        (jregister jheap)
        jthis
        jargs


jm_process_2 : JR.Method
jm_process_2 jheap jthis jargs =
    JR.method [ ( "damageableInterface", "" ), ( "damageableInterface2", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "damage_2" (JR.local "damageableInterface") [ (JR.invoke "getDamage_1" (JR.local "damageableInterface2") [ (JR.int 0) ]), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_debugDamage_2 : JR.Method
jm_debugDamage_2 jheap jthis jargs =
    JR.method [ ( "collidableInterfaceCompositeInterface1", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "collidableDestroyableDamageableLayer" "" (JR.local "collidableInterfaceCompositeInterface"), 
                    JR.declare "damage" "I" (JR.invoke "getDamage_1" (JR.local "collidableDestroyableDamageableLayer") [ (JR.int 0) ]), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "damage") (JR.int 20000)) (JR.run [ 
                        JR.declare "stringBuffer" "" (JR.new StringMaker.jnew_0 []), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str "Collision ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "collidableInterfaceCompositeInterface1") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " with: ") ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.invoke "toString_0" (JR.local "collidableInterfaceCompositeInterface") []) ]), 
                        JR.exec (JR.invoke "append_1" (JR.local "stringBuffer") [ (JR.str " damage: ") ]), 
                        JR.exec (JR.invoke "appendint_1" (JR.local "stringBuffer") [ (JR.local "damage") ]), 
                        JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.invoke "toString_0" (JR.local "stringBuffer") []), (JR.local "collidableInterfaceCompositeInterface1"), (JR.thisField "COLLIDE") ]) ]) identity ])
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

