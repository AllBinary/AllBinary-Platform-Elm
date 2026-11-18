module Org.Allbinary.Game.Collision.CollidableBaseBehavior exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Game.Collision.CollidableInterface as CollidableInterface
import Org.Allbinary.Game.Collision.CollisionTypeFactory as CollisionTypeFactory
import Org.Allbinary.String.CommonLabels as CommonLabels
import Org.Allbinary.String.CommonStrings as CommonStrings
import Org.Allbinary.Game.Collision.LayerCollisionUtil as LayerCollisionUtil
import Org.Allbinary.Logic.Communication.Log.LogUtil as LogUtil
import Org.Allbinary.Logic.String.StringMaker as StringMaker


jclass : String
jclass =
    "CollidableBaseBehavior"


jchain : List String
jchain =
    [ "CollidableBaseBehavior" ]
        ++ CollidableInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    [ ( "logUtil", JR.defaultOf "" ), ( "commonStrings", JR.defaultOf "" ), ( "layerCollisionUtil", JR.defaultOf "" ), ( "collidable", JR.defaultOf "Z" ) ]


jvtable =
    JR.vtable
        [ ( "update_0", jm_update_0 )
        , ( "getName_0", jm_getName_0 )
        , ( "setCollidable_1", jm_setCollidable_1 )
        , ( "isCollidable_1", jm_isCollidable_1 )
        , ( "collide_2", jm_collide_2 )
        , ( "isCollision_2", jm_isCollision_2 )
        , ( "isCollisionInterface_2", jm_isCollisionInterface_2 )
        , ( "collideInterface_2", jm_collideInterface_2 )
        , ( "paint_2", jm_paint_2 )
        , ( "getCollisionTypeWith_1", jm_getCollisionTypeWith_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollidableBaseBehavior"
        [ ( "jm_update_0", jm_update_0 ), ( "jm_getName_0", jm_getName_0 ), ( "jm_setCollidable_1", jm_setCollidable_1 ), ( "jm_isCollidable_1", jm_isCollidable_1 ), ( "jm_collide_2", jm_collide_2 ), ( "jm_isCollision_2", jm_isCollision_2 ), ( "jm_isCollisionInterface_2", jm_isCollisionInterface_2 ), ( "jm_collideInterface_2", jm_collideInterface_2 ), ( "jm_paint_2", jm_paint_2 ), ( "jm_getCollisionTypeWith_1", jm_getCollisionTypeWith_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "collidable", "Z" ) ] ""
        (JR.run [ JR.exec (JR.setField "logUtil" "" JR.this (JR.callStatic LogUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "commonStrings" "" JR.this (JR.callStatic CommonStrings.jm_getInstance_0 [])),
                JR.exec (JR.setField "layerCollisionUtil" "" JR.this (JR.callStatic LayerCollisionUtil.jm_getInstance_0 [])),
                JR.exec (JR.setField "collidable" "Z" JR.this (JR.bool True)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "collidable" "Z" JR.this (JR.local "collidable")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getName_0 : JR.Method
jm_getName_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.invoke "getName_0" (JR.getClass JR.this) []) ])
        (jregister jheap)
        jthis
        jargs


jm_setCollidable_1 : JR.Method
jm_setCollidable_1 jheap jthis jargs =
    JR.method [ ( "collidable", "Z" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "collidable" "Z" JR.this (JR.local "collidable")) ])
        (jregister jheap)
        jthis
        jargs


jm_isCollidable_1 : JR.Method
jm_isCollidable_1 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.thisField "collidable") ])
        (jregister jheap)
        jthis
        jargs


jm_collide_2 : JR.Method
jm_collide_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "allbinaryCollidableLayer", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.invoke "toString_0" (JR.invoke "append_1" (JR.invoke "append_1" (JR.invoke "append_1" (JR.new StringMaker.jnew_0 []) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) [ (JR.field "COLON_SEP" (JR.callStatic CommonLabels.jm_getInstance_0 [])) ]) [ (JR.invoke "getName_0" (JR.getClass JR.this) []) ]) []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isCollision_2 : JR.Method
jm_isCollision_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collisionLayer", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isCollision_2" (JR.thisField "layerCollisionUtil") [ (JR.local "ownerLayer"), (JR.local "collisionLayer") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_isCollisionInterface_2 : JR.Method
jm_isCollisionInterface_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.return (JR.invoke "isCollision_2" (JR.thisField "layerCollisionUtil") [ (JR.local "ownerLayer"), (JR.local "collidableInterfaceCompositeInterface") ]) ])
        (jregister jheap)
        jthis
        jargs


jm_collideInterface_2 : JR.Method
jm_collideInterface_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "collidableInterfaceCompositeInterface", "" ) ] ""
        (JR.run [ 
                    JR.throw (JR.new (JR.newThrowable "Exception" [ "Exception" ]) [ (JR.field "NOT_IMPLEMENTED" (JR.thisField "commonStrings")) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_paint_2 : JR.Method
jm_paint_2 jheap jthis jargs =
    JR.method [ ( "ownerLayer", "" ), ( "graphics", "" ) ] ""
        identity
        (jregister jheap)
        jthis
        jargs


jm_getCollisionTypeWith_1 : JR.Method
jm_getCollisionTypeWith_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ 
                    JR.return (JR.field "NONE" (JR.callStatic CollisionTypeFactory.jm_getInstance_0 [])) ])
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

