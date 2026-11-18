module Org.Allbinary.Game.Layer.Special.CollidableDestroyableDamageableBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.special
-}

import JR
import Org.Allbinary.Game.Collision.CollidableBaseBehavior as CollidableBaseBehavior
import Org.Allbinary.Game.Combat.Damage.DamageUtil as DamageUtil
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil


jclass : String
jclass =
    "CollidableDestroyableDamageableBehavior"


jchain : List String
jchain =
    [ "CollidableDestroyableDamageableBehavior" ]
        ++ CollidableBaseBehavior.jchain


jfields : List ( String, JR.JValue )
jfields =
    CollidableBaseBehavior.jfields ++ [ ( "damageUtil", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "isCollision_2", jm_isCollision_2 )
        , ( "collide_2", jm_collide_2 )
        , ( "isCollisionInterface_2", jm_isCollisionInterface_2 )
        , ( "collideInterface_2", jm_collideInterface_2 ) ]
        CollidableBaseBehavior.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableDestroyableDamageableBehavior"
        [ ( "jm_isCollision_2", jm_isCollision_2 ), ( "jm_collide_2", jm_collide_2 ), ( "jm_isCollisionInterface_2", jm_isCollisionInterface_2 ), ( "jm_collideInterface_2", jm_collideInterface_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "collidable", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CollidableBaseBehavior.jinit_1 JR.this [ (JR.local "collidable") ]),
                JR.exec (JR.setField "damageUtil" "" JR.this (JR.callStatic DamageUtil.jm_getInstance_0 [])),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_isCollision_2 : JR.Method
jm_isCollision_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collisionLayer", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.invoke "getGroupInterface_0" (JR.local "ownerLayer") []) (JR.int 0)) (JR.aget (JR.invoke "getGroupInterface_0" (JR.local "collisionLayer") []) (JR.int 0))) (JR.run [ 
                        JR.return (JR.callVia CollidableBaseBehavior.jvtable "isCollision_2" JR.this [ (JR.local "ownerLayer"), (JR.local "collisionLayer") ]) ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_collide_2 : JR.Method
jm_collide_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "ownerCollidableDestroyableDamageableLayer" "" (JR.local "ownerLayer"), 
                    JR.declare "collidableDestroyableDamageableLayer" "" (JR.local "collidableInterfaceCompositeInterface"), 
                    JR.exec (JR.invoke "damage_2" (JR.local "ownerCollidableDestroyableDamageableLayer") [ (JR.invoke "getDamage_1" (JR.local "collidableDestroyableDamageableLayer") [ (JR.int 0) ]), (JR.int 0) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isCollisionInterface_2 : JR.Method
jm_isCollisionInterface_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.str "No Longer Used"), JR.this ]), 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_collideInterface_2 : JR.Method
jm_collideInterface_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.str "No Longer Used"), JR.this ]) ])
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

