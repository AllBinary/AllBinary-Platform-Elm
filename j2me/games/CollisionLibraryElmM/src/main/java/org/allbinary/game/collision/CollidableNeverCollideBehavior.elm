module Org.Allbinary.Game.Collision.CollidableNeverCollideBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Game.Collision.CollidableBaseBehavior as CollidableBaseBehavior


jclass : String
jclass =
    "CollidableNeverCollideBehavior"


jchain : List String
jchain =
    [ "CollidableNeverCollideBehavior" ]
        ++ CollidableBaseBehavior.jchain


jfields : List ( String, JR.JValue )
jfields =
    CollidableBaseBehavior.jfields ++ []


jvtable =
    JR.vtable
        [ ( "isCollision_2", jm_isCollision_2 )
        , ( "collide_2", jm_collide_2 )
        , ( "collideInterface_2", jm_collideInterface_2 )
        , ( "isCollisionInterface_2", jm_isCollisionInterface_2 ) ]
        CollidableBaseBehavior.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableNeverCollideBehavior"
        [ ( "jm_isCollision_2", jm_isCollision_2 ), ( "jm_collide_2", jm_collide_2 ), ( "jm_collideInterface_2", jm_collideInterface_2 ), ( "jm_isCollisionInterface_2", jm_isCollisionInterface_2 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "isCollidable", "Z" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CollidableBaseBehavior.jinit_1 JR.this [ (JR.local "isCollidable") ]),
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
    JR.method [ ( "ownerLayer", "" ), ( "allbinaryCollidableLayer", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
        (jregister jheap)
        jthis
        jargs


jm_collide_2 : JR.Method
jm_collide_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "allbinaryCollidableLayer", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_collideInterface_2 : JR.Method
jm_collideInterface_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_isCollisionInterface_2 : JR.Method
jm_isCollisionInterface_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.bool False) ])
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

