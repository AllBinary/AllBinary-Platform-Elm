module Org.Allbinary.Game.Collision.Layer.AllBinaryCollisionManager exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision.layer
-}

import JR



jclass : String
jclass =
    "AllBinaryCollisionManager"


jchain : List String
jchain =
    [ "AllBinaryCollisionManager" ]


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_0", jm_getInstance_0 )
        , ( "process_3", jm_process_3 )
        , ( "collide_3", jm_collide_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "AllBinaryCollisionManager"
        [ ( "jm_getInstance_0", jm_getInstance_0 ), ( "jm_process_3", jm_process_3 ), ( "jm_collide_3", jm_collide_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        [ ( "jstatic_allBinaryCollisionManager", jstatic_allBinaryCollisionManager ) ]
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jstatic_allBinaryCollisionManager : JR.M
jstatic_allBinaryCollisionManager s =
    JR.static "AllBinaryCollisionManager" jclinit "allBinaryCollisionManager"
        (JR.new jnew_0 [])
        s


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity,
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
                    JR.return jstatic_allBinaryCollisionManager ])
        (jregister jheap)
        jthis
        jargs


jm_process_3 : JR.Method
jm_process_3 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "collidableInterfaceCompositeInterface", "" ), ( "startIndex", "I" ) ] ""
        (JR.run [ 
                    JR.declare "size" "I" (JR.invoke "getSize_0" (JR.local "layerManager") []), 
                    JR.run [ JR.declare "index" "I" (JR.map2 JR.add (JR.local "startIndex") (JR.int 1)), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN68303 -> (JR.setLocal "index" "I" (JR.lit jwN68303))) JR.increment) ]) (JR.run [ 
                        JR.declare "collidableInterfaceCompositeInterface2" "" (JR.invoke "getLayerAt_1" (JR.local "layerManager") [ (JR.local "index") ]), 
                        JR.exec (JR.invoke "collide_3" JR.this [ (JR.local "layerManager"), (JR.local "collidableInterfaceCompositeInterface"), (JR.local "collidableInterfaceCompositeInterface2") ]) ]) ] ])
        (jregister jheap)
        jthis
        jargs


jm_collide_3 : JR.Method
jm_collide_3 jheap jthis jargs =
    JR.method [ ( "layerManager", "" ), ( "collidableInterfaceCompositeInterface", "" ), ( "collidableInterfaceCompositeInterface2", "" ) ] ""
        (JR.run [ 
                    JR.declare "collidableBase2" "" (JR.invoke "getCollidableInferface_0" (JR.local "collidableInterfaceCompositeInterface2") []), 
                    JR.declare "collidableBase" "" (JR.invoke "getCollidableInferface_0" (JR.local "collidableInterfaceCompositeInterface") []), 
                    JR.ifElse (JR.invoke "isCollidable_1" (JR.local "collidableBase2") [ (JR.local "collidableInterfaceCompositeInterface") ]) (JR.run [ 
                        JR.ifElse (JR.invoke "isCollisionInterface_2" (JR.local "collidableBase") [ (JR.local "collidableInterfaceCompositeInterface"), (JR.local "collidableInterfaceCompositeInterface2") ]) (JR.run [ 
                            JR.exec (JR.invoke "collideInterface_2" (JR.local "collidableBase") [ (JR.local "collidableInterfaceCompositeInterface"), (JR.local "collidableInterfaceCompositeInterface2") ]), 
                            JR.exec (JR.invoke "collideInterface_2" (JR.local "collidableBase2") [ (JR.local "collidableInterfaceCompositeInterface"), (JR.local "collidableInterfaceCompositeInterface") ]) ]) identity ]) identity ])
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

