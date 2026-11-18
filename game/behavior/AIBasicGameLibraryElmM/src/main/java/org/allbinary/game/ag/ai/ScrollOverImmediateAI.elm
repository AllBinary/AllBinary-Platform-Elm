module Org.Allbinary.Game.Ag.Ai.ScrollOverImmediateAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI
import Org.Allbinary.Graphics.Displayable.DisplayInfoSingleton as DisplayInfoSingleton


jclass : String
jclass =
    "ScrollOverImmediateAI"


jchain : List String
jchain =
    [ "ScrollOverImmediateAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ []


jvtable =
    JR.vtable
        [ ( "processAI_1", jm_processAI_1 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "ScrollOverImmediateAI"
        [ ( "jm_processAI_1", jm_processAI_1 ), ( "jnew_2", jnew_2 ), ( "jinit_2", jinit_2 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_2 : JR.Method
jinit_2 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                identity,
                identity ])
        (jregister jheap)
        jthis
        jargs


jnew_2 : JR.Method
jnew_2 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_2 jheap jthis jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.declare "ownerLayerInterface" "" (JR.invoke "getOwnerLayerInterface_0" JR.this []), 
                    JR.declare "x" "I" (JR.invoke "getXP_0" (JR.local "ownerLayerInterface") []), 
                    JR.declare "y" "I" (JR.invoke "getYP_0" (JR.local "ownerLayerInterface") []), 
                    JR.declare "x2" "I" (JR.invoke "getX2_0" (JR.local "ownerLayerInterface") []), 
                    JR.declare "y2" "I" (JR.invoke "getY2_0" (JR.local "ownerLayerInterface") []), 
                    JR.declare "width" "I" (JR.invoke "getWidth_0" (JR.local "ownerLayerInterface") []), 
                    JR.declare "height" "I" (JR.invoke "getHeight_0" (JR.local "ownerLayerInterface") []), 
                    JR.declare "displayInfo" "" (JR.callStatic DisplayInfoSingleton.jm_getInstance_0 []), 
                    JR.ifElse (JR.map2 JR.greater (JR.local "x2") (JR.invoke "getLastWidth_0" (JR.local "displayInfo") [])) (JR.run [ 
                        JR.exec (JR.invoke "setPosition_3" (JR.local "ownerLayerInterface") [ (JR.int 0), (JR.local "y"), (JR.invoke "getZP_0" (JR.local "ownerLayerInterface") []) ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.greater (JR.local "y2") (JR.invoke "getLastHeight_0" (JR.local "displayInfo") [])) (JR.run [ 
                        JR.exec (JR.invoke "setPosition_3" (JR.local "ownerLayerInterface") [ (JR.local "x"), (JR.int 0), (JR.invoke "getZP_0" (JR.local "ownerLayerInterface") []) ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.local "x") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setPosition_3" (JR.local "ownerLayerInterface") [ (JR.map2 JR.sub (JR.invoke "getLastWidth_0" (JR.local "displayInfo") []) (JR.local "width")), (JR.local "y"), (JR.invoke "getZP_0" (JR.local "ownerLayerInterface") []) ]) ]) identity, 
                    JR.ifElse (JR.map2 JR.less (JR.local "y") (JR.int 0)) (JR.run [ 
                        JR.exec (JR.invoke "setPosition_3" (JR.local "ownerLayerInterface") [ (JR.local "x"), (JR.map2 JR.sub (JR.invoke "getLastHeight_0" (JR.local "displayInfo") []) (JR.local "height")), (JR.invoke "getZP_0" (JR.local "ownerLayerInterface") []) ]) ]) identity ])
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

