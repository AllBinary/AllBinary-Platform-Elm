module Org.Allbinary.Game.Collision.SourceCollisionHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Game.Collision.CollisionHelper as CollisionHelper


jclass : String
jclass =
    "SourceCollisionHelper"


jchain : List String
jchain =
    [ "SourceCollisionHelper" ]
        ++ CollisionHelper.jchain


jfields : List ( String, JR.JValue )
jfields =
    CollisionHelper.jfields ++ []


jvtable =
    JR.vtable
        [ ( "isCollidable_1", jm_isCollidable_1 ) ]
        CollisionHelper.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "SourceCollisionHelper"
        [ ( "jm_isCollidable_1", jm_isCollidable_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect CollisionHelper.jinit_1 JR.this [ (JR.local "layerInterface") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_1 : JR.Method
jnew_1 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_1 jheap jthis jargs


jm_isCollidable_1 : JR.Method
jm_isCollidable_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.map2 JR.notEquals (JR.thisField "sourceLayerInterface") (JR.local "layerInterface")) (JR.run [ 
                        JR.return (JR.bool True) ]) identity, 
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

