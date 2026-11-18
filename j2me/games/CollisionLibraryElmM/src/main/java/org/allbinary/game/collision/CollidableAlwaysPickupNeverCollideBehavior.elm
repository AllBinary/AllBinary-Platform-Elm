module Org.Allbinary.Game.Collision.CollidableAlwaysPickupNeverCollideBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Game.Collision.CollidableNeverCollideBehavior as CollidableNeverCollideBehavior
import Org.Allbinary.Game.Collision.CollisionTypeFactory as CollisionTypeFactory


jclass : String
jclass =
    "CollidableAlwaysPickupNeverCollideBehavior"


jchain : List String
jchain =
    [ "CollidableAlwaysPickupNeverCollideBehavior" ]
        ++ CollidableNeverCollideBehavior.jchain


jfields : List ( String, JR.JValue )
jfields =
    CollidableNeverCollideBehavior.jfields ++ []


jvtable =
    JR.vtable
        [ ( "getCollisionTypeWith_1", jm_getCollisionTypeWith_1 ) ]
        CollidableNeverCollideBehavior.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableAlwaysPickupNeverCollideBehavior"
        [ ( "jm_getCollisionTypeWith_1", jm_getCollisionTypeWith_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect CollidableNeverCollideBehavior.jinit_1 JR.this [ (JR.bool True) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getCollisionTypeWith_1 : JR.Method
jm_getCollisionTypeWith_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.field "PICKUP" (JR.callStatic CollisionTypeFactory.jm_getInstance_0 [])) ])
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

