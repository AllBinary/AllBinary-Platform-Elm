module Org.Allbinary.Game.Collision.CollisionHelper exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR



jclass : String
jclass =
    "CollisionHelper"


jchain : List String
jchain =
    [ "CollisionHelper" ]


jfields : List ( String, JR.JValue )
jfields =
    [ ( "sourceLayerInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "isCollidable_1", jm_isCollidable_1 )
        , ( "getOwnerLayerInterface_0", jm_getOwnerLayerInterface_0 )
        , ( "setOwnerLayerInterface_1", jm_setOwnerLayerInterface_1 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "CollisionHelper"
        [ ( "jm_isCollidable_1", jm_isCollidable_1 ), ( "jm_getOwnerLayerInterface_0", jm_getOwnerLayerInterface_0 ), ( "jm_setOwnerLayerInterface_1", jm_setOwnerLayerInterface_1 ), ( "jnew_1", jnew_1 ), ( "jinit_1", jinit_1 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_1 : JR.Method
jinit_1 jheap jthis jargs =
    JR.method [ ( "sourceLayerInterface", "" ) ] ""
        (JR.run [ identity,
                (JR.run [ 
                    JR.exec (JR.setField "sourceLayerInterface" "" JR.this (JR.local "sourceLayerInterface")) ]) ])
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
                    JR.return (JR.bool True) ])
        (jregister jheap)
        jthis
        jargs


jm_getOwnerLayerInterface_0 : JR.Method
jm_getOwnerLayerInterface_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.return (JR.thisField "sourceLayerInterface") ])
        (jregister jheap)
        jthis
        jargs


jm_setOwnerLayerInterface_1 : JR.Method
jm_setOwnerLayerInterface_1 jheap jthis jargs =
    JR.method [ ( "sourceLayerInterface", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.setField "sourceLayerInterface" "" JR.this (JR.local "sourceLayerInterface")) ])
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

