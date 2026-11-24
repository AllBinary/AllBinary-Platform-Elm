module Org.Allbinary.Game.Collision.OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision
-}

import JR
import Org.Allbinary.Layer.LayerProcessor as LayerProcessor
import Org.Allbinary.Game.Collision.OptimizedAllBinaryCollisionLayerManager as OptimizedAllBinaryCollisionLayerManager


jclass : String
jclass =
    "OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer"


jchain : List String
jchain =
    [ "OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer" ]
        ++ LayerProcessor.jchain


jfields : List ( String, JR.JValue )
jfields =
    LayerProcessor.jfields ++ []


jvtable =
    JR.vtable
        [ ( "processAt_3", jm_processAt_3 )
        , ( "isProcessorLayer_1", jm_isProcessorLayer_1 ) ]
        LayerProcessor.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer"
        [ ( "jm_processAt_3", jm_processAt_3 ), ( "jm_isProcessorLayer_1", jm_isProcessorLayer_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect LayerProcessor.jinit_1 JR.this [ (JR.new OptimizedAllBinaryCollisionLayerManager.jnew_0 []) ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_processAt_3 : JR.Method
jm_processAt_3 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ), ( "layerInterface", "" ), ( "startIndex", "I" ) ] ""
        (JR.run [ 
                    JR.declare "collidableInterfaceCompositeInterface" "" (JR.local "layerInterface"), 
                    JR.declare "collidableBase" "" (JR.invoke "getCollidableInferface_0" (JR.local "collidableInterfaceCompositeInterface") []), 
                    JR.ifElse (JR.invoke "isCollidable_1" (JR.local "collidableBase") [ (JR.local "collidableInterfaceCompositeInterface") ]) (JR.run [ 
                        JR.declare "layerManager" "" (JR.invoke "getLayerManager_0" JR.this []), 
                        JR.declare "size" "I" (JR.invoke "getSize_0" (JR.local "layerManager") []), 
                        JR.declare "collidableInterfaceCompositeInterface2" "" (JR.lit (JR.defaultOf "")), 
                        JR.declare "collidableBase2" "" (JR.lit (JR.defaultOf "")), 
                        JR.run [ JR.declare "index" "I" (JR.map2 JR.add (JR.local "startIndex") (JR.int 1)), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69045 -> (JR.setLocal "index" "I" (JR.lit jwN69045))) JR.increment) ]) (JR.run [ 
                            JR.exec (JR.setLocal "collidableInterfaceCompositeInterface2" "" (JR.invoke "getLayerAt_1" (JR.local "layerManager") [ (JR.local "index") ])), 
                            JR.exec (JR.setLocal "collidableBase2" "" (JR.invoke "getCollidableInferface_0" (JR.local "collidableInterfaceCompositeInterface2") [])), 
                            JR.ifElse (JR.and (JR.invoke "isCollidable_1" (JR.local "collidableBase2") [ (JR.local "collidableInterfaceCompositeInterface") ]) (JR.invoke "isCollision_2" (JR.local "collidableBase") [ (JR.local "collidableInterfaceCompositeInterface"), (JR.local "collidableInterfaceCompositeInterface2") ])) (JR.run [ 
                                JR.exec (JR.invoke "collide_2" (JR.local "collidableBase") [ (JR.local "collidableInterfaceCompositeInterface"), (JR.local "collidableInterfaceCompositeInterface2") ]), 
                                JR.exec (JR.invoke "collide_2" (JR.local "collidableBase2") [ (JR.local "collidableInterfaceCompositeInterface2"), (JR.local "collidableInterfaceCompositeInterface") ]) ]) identity ]) ] ]) identity ])
        (jregister jheap)
        jthis
        jargs


jm_isProcessorLayer_1 : JR.Method
jm_isProcessorLayer_1 jheap jthis jargs =
    JR.method [ ( "layerInterface", "" ) ] "Z"
        (JR.run [ 
                    JR.ifElse (JR.invoke "implmentsCollidableInterface_0" (JR.local "layerInterface") []) (JR.run [ 
                        JR.return (JR.bool True) ]) (JR.run [ 
                        JR.return (JR.bool False) ]) ])
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

