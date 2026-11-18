module Org.Allbinary.Game.Ag.Ai.BoundBounceAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai
-}

import JR
import Org.Allbinary.Game.Ai.BasicAI as BasicAI


jclass : String
jclass =
    "BoundBounceAI"


jchain : List String
jchain =
    [ "BoundBounceAI" ]
        ++ BasicAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    BasicAI.jfields ++ [ ( "currentRelativeAngle", JR.defaultOf "I" ), ( "layerBounds", JR.defaultOf "" ), ( "boundsVisitorInterface", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "paint_1", jm_paint_1 )
        , ( "processAI_1", jm_processAI_1 ) ]
        BasicAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "BoundBounceAI"
        [ ( "jm_paint_1", jm_paint_1 ), ( "jm_processAI_1", jm_processAI_1 ), ( "jnew_4", jnew_4 ), ( "jinit_4", jinit_4 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_4 : JR.Method
jinit_4 jheap jthis jargs =
    JR.method [ ( "ownerLayerInterface", "" ), ( "gameInput", "" ), ( "layerBounds", "" ), ( "boundsVisitorInterface", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect BasicAI.jinit_2 JR.this [ (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "currentRelativeAngle" "I" JR.this (JR.int 0)),
                identity,
                (JR.run [ 
                    JR.exec (JR.setField "layerBounds" "" JR.this (JR.local "layerBounds")), 
                    JR.exec (JR.setField "boundsVisitorInterface" "" JR.this (JR.local "boundsVisitorInterface")) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_4 : JR.Method
jnew_4 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_4 jheap jthis jargs


jm_paint_1 : JR.Method
jm_paint_1 jheap jthis jargs =
    JR.method [ ( "graphics", "" ) ] ""
        (JR.run [ 
                    JR.declare "rectange" "" (JR.invoke "getRectangleP_0" (JR.thisField "layerBounds") []), 
                    JR.exec (JR.invoke "drawRect_4" (JR.local "graphics") [ (JR.invoke "getX_0" (JR.invoke "getPoint_0" (JR.local "rectange") []) []), (JR.invoke "getY_0" (JR.invoke "getPoint_0" (JR.local "rectange") []) []), (JR.invoke "getWidth_0" (JR.local "rectange") []), (JR.invoke "getHeight_0" (JR.local "rectange") []) ]) ])
        (jregister jheap)
        jthis
        jargs


jm_processAI_1 : JR.Method
jm_processAI_1 jheap jthis jargs =
    JR.method [ ( "allBinaryLayerManager", "" ) ] ""
        (JR.run [ 
                    JR.exec (JR.invoke "visit_1" (JR.thisField "layerBounds") [ (JR.thisField "boundsVisitorInterface") ]) ])
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

