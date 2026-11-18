module Org.Allbinary.Game.Layer.Special.CollidableCharacterBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.layer.special
-}

import JR
import Org.Allbinary.Game.Layer.Special.CollidableDestroyableDamageableBehavior as CollidableDestroyableDamageableBehavior
import Org.Allbinary.Game.Collision.CollisionTypeFactory as CollisionTypeFactory
import Org.Allbinary.Logic.Communication.Log.ForcedLogUtil as ForcedLogUtil


jclass : String
jclass =
    "CollidableCharacterBehavior"


jchain : List String
jchain =
    [ "CollidableCharacterBehavior" ]
        ++ CollidableDestroyableDamageableBehavior.jchain


jfields : List ( String, JR.JValue )
jfields =
    CollidableDestroyableDamageableBehavior.jfields ++ []


jvtable =
    JR.vtable
        [ ( "collide_2", jm_collide_2 )
        , ( "collideInterface_2", jm_collideInterface_2 ) ]
        CollidableDestroyableDamageableBehavior.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableCharacterBehavior"
        [ ( "jm_collide_2", jm_collide_2 ), ( "jm_collideInterface_2", jm_collideInterface_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "collidable", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CollidableDestroyableDamageableBehavior.jinit_1 JR.this [ (JR.local "collidable") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_collide_2 : JR.Method
jm_collide_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] ""
        (JR.run [ 
                    JR.declare "collisionTypeFactory" "" (JR.callStatic CollisionTypeFactory.jm_getInstance_0 []), 
                    JR.declare "collisionType" "" (JR.invoke "getCollisionTypeWith_1" (JR.invoke "getCollidableInferface_0" (JR.local "collidableInterfaceCompositeInterface") []) [ (JR.local "ownerLayer") ]), 
                    JR.ifElse (JR.map2 JR.equals (JR.local "collisionType") (JR.field "PICKUP" (JR.local "collisionTypeFactory"))) (JR.run [ 
                        JR.declare "collidableDestroyableDamageableLayer" "" (JR.local "ownerLayer"), 
                        JR.exec (JR.invoke "doPickupLayer_1" (JR.invoke "getPickupBehavior_0" (JR.local "collidableDestroyableDamageableLayer") []) [ (JR.local "collidableInterfaceCompositeInterface") ]) ]) (JR.run [ 
                        JR.exec (JR.callVia CollidableDestroyableDamageableBehavior.jvtable "collide_2" JR.this [ (JR.local "ownerLayer"), (JR.local "collidableInterfaceCompositeInterface") ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_collideInterface_2 : JR.Method
jm_collideInterface_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.callStatic ForcedLogUtil.jm_log_2 [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")), JR.this ]) ])
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

