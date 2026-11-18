module Org.Allbinary.Game.Layer.Weapon.CollidableWeaponBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.weapon
-}

import JR
import Org.Allbinary.Game.Layer.Special.CollidableDestroyableDamageableBehavior as CollidableDestroyableDamageableBehavior
import Org.Allbinary.Game.Collision.CollidableHelperFactory as CollidableHelperFactory
import Org.Allbinary.Game.Collision.CollisionTypeFactory as CollisionTypeFactory
import Org.Allbinary.Logic.NullUtil as NullUtil


jclass : String
jclass =
    "CollidableWeaponBehavior"


jchain : List String
jchain =
    [ "CollidableWeaponBehavior" ]
        ++ CollidableDestroyableDamageableBehavior.jchain


jfields : List ( String, JR.JValue )
jfields =
    CollidableDestroyableDamageableBehavior.jfields ++ [ ( "collided", JR.defaultOf "Z" ), ( "collisionHelper", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "getNullInstance_0", jm_getNullInstance_0 )
        , ( "init_1", jm_init_1 )
        , ( "isCollision_2", jm_isCollision_2 )
        , ( "collide_2", jm_collide_2 )
        , ( "isCollisionInterface_2", jm_isCollisionInterface_2 )
        , ( "collideInterface_2", jm_collideInterface_2 )
        , ( "getCollisionTypeWith_1", jm_getCollisionTypeWith_1 )
        , ( "isCollided_0", jm_isCollided_0 )
        , ( "setCollided_1", jm_setCollided_1 ) ]
        CollidableDestroyableDamageableBehavior.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableWeaponBehavior"
        [ ( "jm_getNullInstance_0", jm_getNullInstance_0 ), ( "jm_init_1", jm_init_1 ), ( "jm_isCollision_2", jm_isCollision_2 ), ( "jm_collide_2", jm_collide_2 ), ( "jm_isCollisionInterface_2", jm_isCollisionInterface_2 ), ( "jm_collideInterface_2", jm_collideInterface_2 ), ( "jm_getCollisionTypeWith_1", jm_getCollisionTypeWith_1 ), ( "jm_isCollided_0", jm_isCollided_0 ), ( "jm_setCollided_1", jm_setCollided_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        [ ( "jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR", jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR : JR.M
jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR s =
    JR.static "CollidableWeaponBehavior" jclinit "NULL_COLLIDABLE_WEAPON_BEHAVIOR"
        (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))
        s


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "collidable", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CollidableDestroyableDamageableBehavior.jinit_1 JR.this [ (JR.local "collidable") ]),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "setCollided_1" JR.this [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "setCollidable_1" JR.this [ (JR.bool True) ]), 
                    JR.exec (JR.setField "collisionHelper" "" JR.this (JR.callStatic CollidableHelperFactory.jm_getInstance_0 [])) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_getNullInstance_0 : JR.Method
jm_getNullInstance_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.equals jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR (JR.field "NULL_OBJECT" (JR.callStatic NullUtil.jm_getInstance_0 []))) (JR.run [ 
                        JR.exec (JR.setStatic "CollidableWeaponBehavior.NULL_COLLIDABLE_WEAPON_BEHAVIOR" "" (JR.new jnew_1 [ (JR.bool False) ])) ]) identity, 
                    JR.return jstatic_NULL_COLLIDABLE_WEAPON_BEHAVIOR ])
        (jregister jheap)
        jthis
        jargs


jm_init_1 : JR.Method
jm_init_1 jheap jthis jargs =
    JR.method [ ( "sourceLayerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "setCollided_1" JR.this [ (JR.bool False) ]), 
                    JR.exec (JR.invoke "setOwnerLayerInterface_1" (JR.thisField "collisionHelper") [ (JR.local "sourceLayerInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isCollision_2 : JR.Method
jm_isCollision_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collisionLayer", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "isCollidable_1" (JR.thisField "collisionHelper") [ (JR.local "collisionLayer") ]) (JR.run [ 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.invoke "getGroupInterface_0" (JR.local "ownerLayer") []) (JR.int 0)) (JR.aget (JR.invoke "getGroupInterface_0" (JR.local "collisionLayer") []) (JR.int 0))) (JR.run [ 
                            JR.return (JR.callVia CollidableDestroyableDamageableBehavior.jvtable "isCollision_2" JR.this [ (JR.local "ownerLayer"), (JR.local "collisionLayer") ]) ]) identity ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_collide_2 : JR.Method
jm_collide_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collisionLayer", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callVia CollidableDestroyableDamageableBehavior.jvtable "collide_2" JR.this [ (JR.local "ownerLayer"), (JR.local "collisionLayer") ]), 
                    JR.exec (JR.setField "collided" "Z" JR.this (JR.bool True)) ])
        (jregister jheap)
        jthis
        jargs


jm_isCollisionInterface_2 : JR.Method
jm_isCollisionInterface_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "isCollidable_1" (JR.thisField "collisionHelper") [ (JR.local "collidableInterfaceCompositeInterface") ]) (JR.run [ 
                        JR.declare "layerInterface" "" (JR.local "collidableInterfaceCompositeInterface"), 
                        JR.ifElse (JR.map2 JR.notEquals (JR.aget (JR.invoke "getGroupInterface_0" (JR.local "ownerLayer") []) (JR.int 0)) (JR.aget (JR.invoke "getGroupInterface_0" (JR.local "layerInterface") []) (JR.int 0))) (JR.run [ 
                            JR.ifElse (JR.invoke "isCollision_2" (JR.thisField "layerCollisionUtil") [ (JR.local "ownerLayer"), (JR.local "layerInterface") ]) (JR.run [ 
                                JR.return (JR.bool True) ]) identity ]) identity ]) identity, 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_collideInterface_2 : JR.Method
jm_collideInterface_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "ownerDamageableInterface" "" (JR.local "ownerLayer"), 
                    JR.declare "damageableInterface" "" (JR.local "collidableInterfaceCompositeInterface"), 
                    JR.exec (JR.invoke "process_2" (JR.thisField "damageUtil") [ (JR.local "ownerDamageableInterface"), (JR.local "damageableInterface") ]), 
                    JR.exec (JR.setField "collided" "Z" JR.this (JR.bool True)) ])
        (jregister jheap)
        jthis
        jargs


jm_getCollisionTypeWith_1 : JR.Method
jm_getCollisionTypeWith_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.field "COLLISION" (JR.callStatic CollisionTypeFactory.jm_getInstance_0 [])) ])
        (jregister jheap)
        jthis
        jargs


jm_isCollided_0 : JR.Method
jm_isCollided_0 jheap jthis jargs =
    JR.method [] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "collided") ])
        (jregister jheap)
        jthis
        jargs


jm_setCollided_1 : JR.Method
jm_setCollided_1 jheap jthis jargs =
    JR.method [ ( "collided", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "collided" "Z" JR.this (JR.local "collided")) ])
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

