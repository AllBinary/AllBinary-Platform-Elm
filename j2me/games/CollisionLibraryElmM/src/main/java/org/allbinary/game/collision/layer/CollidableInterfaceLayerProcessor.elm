module Org.Allbinary.Game.Collision.Layer.CollidableInterfaceLayerProcessor exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.collision.layer
-}

import JR
import Org.Allbinary.Game.Collision.Layer.AllBinaryCollisionManager as AllBinaryCollisionManager
import Org.Allbinary.Game.Collision.Layer.CollidableInterfaceLayerManager as CollidableInterfaceLayerManager
import Org.Allbinary.Layer.LayerProcessor as LayerProcessor


jclass : String
jclass =
    "CollidableInterfaceLayerProcessor"


jchain : List String
jchain =
    [ "CollidableInterfaceLayerProcessor" ]
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
    JR.register "CollidableInterfaceLayerProcessor"
        [ ( "jm_processAt_3", jm_processAt_3 ), ( "jm_isProcessorLayer_1", jm_isProcessorLayer_1 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ JR.exec (JR.callDirect LayerProcessor.jinit_1 JR.this [ (JR.new CollidableInterfaceLayerManager.jnew_0 []) ]),
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
    JR.method [ ( "allBinaryLayerManager", "" ), ( "layerInterface", "" ), ( "index", "I" ) ] ""
        (JR.run [ 
                    JR.declare "collidableInterfaceCompositeInterface" "" (JR.local "layerInterface"), 
                    JR.ifElse (JR.invoke "isCollidable_1" (JR.invoke "getCollidableInferface_0" (JR.local "collidableInterfaceCompositeInterface") []) [ (JR.local "collidableInterfaceCompositeInterface") ]) (JR.run [ 
                        JR.exec (JR.invoke "process_3" (JR.callStatic AllBinaryCollisionManager.jm_getInstance_0 []) [ (JR.invoke "getLayerManager_0" JR.this []), (JR.local "collidableInterfaceCompositeInterface"), (JR.local "index") ]) ]) identity ])
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

