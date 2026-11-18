module Org.Allbinary.Game.Ag.Ai.TopUBoundBounceAIFactory exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Ai.ArtificialIntelligenceInterfaceFactoryInterface as ArtificialIntelligenceInterfaceFactoryInterface
import Org.Allbinary.Game.Ag.Ai.BoundBounceAI as BoundBounceAI
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton
import Org.Allbinary.Graphics.PointFactory as PointFactory
import Org.Allbinary.Graphics.Rectangle as Rectangle
import Org.Allbinary.Game.Ag.Ai.ReverseVelocityBoundsVisitor as ReverseVelocityBoundsVisitor
import Org.Allbinary.Bounds.TopULayerBounds as TopULayerBounds


jclass : String
jclass =
    "TopUBoundBounceAIFactory"


jchain : List String
jchain =
    [ "TopUBoundBounceAIFactory" ]
        ++ ArtificialIntelligenceInterfaceFactoryInterface.jchain


jfields : List ( String, JR.JValue )
jfields =
    []


jvtable =
    JR.vtable
        [ ( "getInstance_3", jm_getInstance_3 ) ]
        JR.noMethods


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TopUBoundBounceAIFactory"
        [ ( "jm_getInstance_3", jm_getInstance_3 ), ( "jnew_0", jnew_0 ), ( "jinit_0", jinit_0 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_0 : JR.Method
jinit_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ identity ])
        (jregister jheap)
        jthis
        jargs


jnew_0 : JR.Method
jnew_0 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_0 jheap jthis jargs


jm_getInstance_3 : JR.Method
jm_getInstance_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ 
                    JR.declare "velocityInterfaceCompositeInterface" "" (JR.local "ownerLayerInterface"), 
                    JR.declare "velocityInterface" "" (JR.invoke "getVelocityProperties_0" (JR.local "velocityInterfaceCompositeInterface") []), 
                    JR.declare "maxDistancePerTick" "I" ((JR.map2 JR.shr (JR.invoke "getMaxForwardVelocity_0" (JR.local "velocityInterface") []) (JR.invoke "getScaledFactor_0" (JR.invoke "getVelocityXBasicDecimalP_0" (JR.local "velocityInterface") []) []))), 
                    JR.declare "halfWidth" "I" (JR.map2 JR.add (JR.map2 JR.add (JR.map2 JR.mul (JR.invoke "getWidth_0" (JR.local "ownerLayerInterface") []) (JR.int 2)) (JR.local "maxDistancePerTick")) (JR.int 1)), 
                    JR.declare "halfHeight" "I" (JR.map2 JR.add (JR.map2 JR.add (JR.map2 JR.mul (JR.invoke "getHeight_0" (JR.local "ownerLayerInterface") []) (JR.int 2)) (JR.local "maxDistancePerTick")) (JR.int 1)), 
                    JR.declare "point" "" (JR.invoke "createXY_2" (JR.callStatic PointFactory.jm_getInstance_0 []) [ (JR.local "halfWidth"), (JR.map2 JR.add (JR.local "halfHeight") (JR.int 60)) ]), 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.declare "rectangle" "" (JR.new Rectangle.jnew_3 [ (JR.local "point"), ((JR.map2 JR.sub (JR.map2 JR.sub (JR.invoke "getLastWidth_0" (JR.local "displayInfo") []) (JR.local "halfWidth")) (JR.invoke "getX_0" (JR.local "point") []))), ((JR.map2 JR.sub (JR.map2 JR.sub (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) (JR.local "halfHeight")) (JR.invoke "getY_0" (JR.local "point") []))) ]), 
                    JR.return (JR.new BoundBounceAI.jnew_4 [ (JR.local "ownerLayerInterface"), (JR.local "gameInput"), (JR.new TopULayerBounds.jnew_1 [ (JR.local "rectangle") ]), (JR.new ReverseVelocityBoundsVisitor.jnew_1 [ (JR.local "ownerLayerInterface") ]) ]) ])
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

