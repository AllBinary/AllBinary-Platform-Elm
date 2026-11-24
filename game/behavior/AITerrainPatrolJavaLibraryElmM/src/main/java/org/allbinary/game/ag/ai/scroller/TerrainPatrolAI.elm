module Org.Allbinary.Game.Ag.Ai.Scroller.TerrainPatrolAI exposing (..)

{-| Generated Code Do Not Modify package org.allbinary.game.ag.ai.scroller
-}

import JR
import Org.Allbinary.Math.AngleFactory as AngleFactory
import Org.Allbinary.Game.Terrain.BasicTerrainInfo as BasicTerrainInfo
import Org.Allbinary.Game.Ag.Ai.Scroller.PacePatrolAI as PacePatrolAI
import Org.Allbinary.Game.Terrain.TerrainEventCircularStaticPool as TerrainEventCircularStaticPool
import Org.Allbinary.Game.Terrain.TerrainEventHandler as TerrainEventHandler
import Org.Allbinary.Game.Terrain.TerrainEventListener as TerrainEventListener


jclass : String
jclass =
    "TerrainPatrolAI"


jchain : List String
jchain =
    [ "TerrainPatrolAI" ]
        ++ PacePatrolAI.jchain


jfields : List ( String, JR.JValue )
jfields =
    PacePatrolAI.jfields ++ [ ( "terrainEventListener", JR.defaultOf "" ), ( "DOWN", JR.defaultOf "" ), ( "CLIFF", JR.defaultOf "" ) ]


jvtable =
    JR.vtable
        [ ( "update_0", jm_update_0 )
        , ( "changeDirectionIfCliffReached_0", jm_changeDirectionIfCliffReached_0 ) ]
        PacePatrolAI.jvtable


jregister : JR.Heap -> JR.Heap
jregister jheap =
    JR.register "TerrainPatrolAI"
        [ ( "jm_update_0", jm_update_0 ), ( "jm_changeDirectionIfCliffReached_0", jm_changeDirectionIfCliffReached_0 ), ( "jnew_3", jnew_3 ), ( "jinit_3", jinit_3 ) ]
        []
        jheap


jclinit : JR.S
jclinit =
    JR.run [ JR.registerIn jregister ]


jinit_3 : JR.Method
jinit_3 jheap jthis jargs =
    JR.method [ ( "hashtable", "" ), ( "ownerLayerInterface", "" ), ( "gameInput", "" ) ] ""
        (JR.run [ JR.exec (JR.callDirect PacePatrolAI.jinit_3 JR.this [ (JR.local "hashtable"), (JR.local "ownerLayerInterface"), (JR.local "gameInput") ]),
                JR.exec (JR.setField "terrainEventListener" "" JR.this (JR.new TerrainEventListener.jnew_0 [])),
                JR.exec (JR.setField "DOWN" "" JR.this (JR.field "DOWN" (JR.callStatic AngleFactory.jm_getInstance_0 []))),
                JR.exec (JR.setField "CLIFF" "" JR.this (JR.new BasicTerrainInfo.jnew_1 [ (JR.thisField "DOWN") ])),
                identity,
                (JR.run [ 
                    JR.exec (JR.invoke "addListener_1" (JR.callStatic TerrainEventHandler.jm_getInstance_1 [ (JR.local "ownerLayerInterface") ]) [ (JR.thisField "terrainEventListener") ]), 
                    JR.exec (JR.invoke "onTerrainEvent_1" (JR.thisField "terrainEventListener") [ (JR.invoke "getNext_1" (JR.callStatic TerrainEventCircularStaticPool.jm_getInstance_0 []) [ (JR.thisField "CLIFF") ]) ]) ]) ])
        (jregister jheap)
        jthis
        jargs


jnew_3 : JR.Method
jnew_3 jheap jthis jargs =
    JR.construct jclass jchain jvtable jfields jinit_3 jheap jthis jargs


jm_update_0 : JR.Method
jm_update_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.exec (JR.callVia PacePatrolAI.jvtable "update_0" JR.this []), 
                    JR.exec (JR.invoke "changeDirectionIfCliffReached_0" JR.this []) ])
        (jregister jheap)
        jthis
        jargs


jm_changeDirectionIfCliffReached_0 : JR.Method
jm_changeDirectionIfCliffReached_0 jheap jthis jargs =
    JR.method [] ""
        (JR.run [ 
                    JR.declare "list" "" (JR.invoke "getList_0" (JR.thisField "terrainEventListener") []), 
                    JR.declare "size" "I" (JR.invoke "size_0" (JR.local "list") []), 
                    JR.run [ JR.declare "index" "I" (JR.int 0), JR.for (JR.map2 JR.less (JR.local "index") (JR.local "size")) (JR.run [ JR.exec (JR.postUpdate (JR.local "index") (\jwN69593 -> (JR.setLocal "index" "I" (JR.lit jwN69593))) JR.increment) ]) (JR.run [ 
                        JR.declare "terrainEvent" "" (JR.invoke "removeAt_1" (JR.local "list") [ (JR.local "index") ]), 
                        JR.declare "basicTerrainInfo" "" (JR.invoke "getBasicTerrainInfo_0" (JR.local "terrainEvent") []), 
                        JR.declare "angle" "" (JR.invoke "getAngle_0" (JR.local "basicTerrainInfo") []), 
                        JR.ifElse (JR.map2 JR.equals (JR.local "angle") (JR.thisField "DOWN")) (JR.run [ 
                            JR.exec (JR.invoke "nextDirection_0" JR.this []), 
                            JR.ifElse (JR.map JR.not_ (JR.thisField "isFollowLimitedByTerrain")) (JR.run [ 
                                JR.exec (JR.invoke "putF_3" (JR.thisField "logUtil") [ (JR.str "Following Limited"), JR.this, (JR.str "onTerrainEvent") ]), 
                                JR.exec (JR.setField "isFollowLimitedByTerrain" "" JR.this (JR.bool True)) ]) identity ]) identity ]) ] ])
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

